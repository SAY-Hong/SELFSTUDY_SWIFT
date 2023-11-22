//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by 홍세희 on 2023/11/22.
//

import UIKit
import CoreData //CoreData import하기

class ViewController: UIViewController {
    
    @IBOutlet var address: UITextField!
    @IBOutlet var name: UITextField!
    @IBOutlet var phone: UITextField!
    @IBOutlet var status: UILabel!
    
    var managerObjectContext: NSManagedObjectContext?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initCoreData()
    }

    private func initCoreData() {
        //영구 컨테이너 저장
        let container = NSPersistentContainer(name: "CoreDataDemo")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("initCoreData Error: \(error)")
            } else {
                self.managerObjectContext = container.viewContext
            }
        }
    }
    
    @IBAction func saveButton(_ sender: Any) {
        if let context = self.managerObjectContext, let entityDescription = NSEntityDescription.entity(forEntityName: "Contacts", in: context) {
            let contact = Contacts(entity: entityDescription, insertInto: managerObjectContext) //앱 실행 시 Contacts 가 자동생성되는거라서 오류 뜨는것!
            contact.name = name.text
            contact.address = address.text
            contact.phone = phone.text
            
            do {
                try managerObjectContext?.save()
                name.text = ""
                address.text = ""
                phone.text = ""
                status.text = "Contact Added!"
            } catch {
                status.text = error.localizedDescription
            }
            
        }
    }
    
    @IBAction func findButton(_ sender: Any) {
        if let context = self.managerObjectContext, let entityDescription = NSEntityDescription.entity(forEntityName: "Contacts", in: context) {
            let request: NSFetchRequest<Contacts> = Contacts.fetchRequest()
            
            request.entity = entityDescription
            
            if let name = name.text {
                let pred = NSPredicate(format: "(name = %@)", name) //??????????뭔 소릴까나 정말로~
                request.predicate = pred
            }
            
            do {
                let results = try context.fetch(request as! NSFetchRequest<NSFetchRequestResult>) //검색 결과를 나타내게 해주는 코드인가바
                
                if results.count > 0 {
                    let match = results[0] as! NSManagedObject
                    name.text = match.value(forKey: "name") as? String
                    address.text = match.value(forKey: "address") as? String
                    phone.text = match.value(forKey: "phone") as? String
                    status.text = "Find Successful. \(results.count)" //동명이인 몇명인지 알 수 있게 해주는..!
                } else {
                    status.text = "Try to check 'Name' or 'SAVE' your information."
                }
            
            } catch let error {
                status.text = error.localizedDescription
            }
        }
    }
}

