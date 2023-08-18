import SwiftUI

struct CustomActionSheet: View {  // Rename your custom view to avoid the conflict
    @State private var showActionSheet = false
    @State private var selectedOption = ""
    
    var body: some View {
        VStack {
            Text("Selected Option: \(selectedOption)")
            
            Button("Show Action Sheet") {
                showActionSheet = true
            }
            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(title: Text("Action Sheet"),
                            message: Text("Choose an option"),
                            buttons: [
                                .default(Text("Option 1"), action: {
                                    selectedOption = "Option 1"
                                }),
                                .default(Text("Option 2"), action: {
                                    selectedOption = "Option 2"
                                }),
                                .cancel()
                            ])
            }
        }
    }
}

struct CustomActionSheet_Previews: PreviewProvider {
    static var previews: some View {
        CustomActionSheet()  // Use the new name for the custom view
    }
}
