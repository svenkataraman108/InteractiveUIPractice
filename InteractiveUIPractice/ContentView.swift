import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Submit") {
                showAlert = true
            }
            .padding()
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Submitted!"),
                    message: Text("Name: \(name)\nEmail: \(email)"),
                    dismissButton: .default(Text("OK"))
                )
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
