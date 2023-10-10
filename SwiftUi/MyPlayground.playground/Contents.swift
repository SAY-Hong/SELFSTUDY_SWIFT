import SwiftUI
import PlaygroundSupport

struct ContentView: View {
    @State private var msg: String = "Hello world!"
    
    var body: some View {
        VStack {
            Image(systemName: "pencil.and.scribble")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(msg)")
                .foregroundColor(.white)
            
            HStack {
                TextField("Placeholder", text: $msg)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: buttonPressed, label: {
                    Text("Send")})
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color.indigo)
    }
    
    func buttonPressed() {
        msg = readLine()!
    }
}

#Preview {
    ContentView()
}

PlaygroundPage.current.setLiveView( ContentView().padding(100) )
