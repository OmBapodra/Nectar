import SwiftUI

struct LineTextField: View{
    
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @Binding var txt : String
    @State var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        VStack{
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity,alignment: .leading)
            
            TextField(placeholder, text: $txt)
                .keyboardType(keyboardType)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(height:40)
            
            Divider()
        }
    }
}
//Line test field testing
struct LineSecureField: View{
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @Binding var txt : String
    @Binding var isShowPassword: Bool
    
        var body: some View {
            VStack{
                
                Text(title)
                    .font(.customfont(.semibold,fontSize: 16))
                    .foregroundColor(.textTitle)
                    .frame(minWidth: 0,maxWidth: .infinity,alignment: .leading)
                
                if(isShowPassword){
                    TextField(placeholder,text: $txt)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .modifier(ShowButton(isShow: $isShowPassword))
                        .frame(height: 40)
                }else{
                    SecureField(placeholder,text: $txt)
                        .autocapitalization(.none)
                        .modifier(ShowButton(isShow: $isShowPassword))
                        .frame(height:40)
                }
                Divider()
                
        }
            
    }
    
}

struct LineTextField_Previews: PreviewProvider{
    @State static var txt: String = ""
    static var previews: some View {
        LineTextField(txt: $txt)
            .padding(20)
    }
}
