import SwiftUI

struct SingUpView: View {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var mainVM = MainViewModel.shared

    var body: some View {
        ZStack {
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
                .ignoresSafeArea()

            VStack {
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
                    .padding(.top, 50)

                Spacer(minLength: 20)

                VStack(alignment: .leading, spacing: 10) {
                    Text("Sign Up")
                        .foregroundColor(.black)
                        .font(.customfont(.semibold, fontSize: 25))

                    Text("Enter your credentials to continue")
                        .foregroundColor(.secondaryText)
                        .font(.customfont(.semibold, fontSize: 16))
                }
                .padding(.horizontal, 10)
                .padding(.trailing,110)
                Spacer(minLength: 30)

              
                LineTextField(
                    title: "Username",
                    placeholder: "Enter your username",
                    txt: $mainVM.txtUsername
                )
                .padding(.horizontal, 20)
                .padding(.bottom, 20)

                LineTextField(
                    title: "Email",
                    placeholder: "Enter your email address",
                    txt: $mainVM.txtEmail,
                    keyboardType: .emailAddress
                )
                .padding(.horizontal, 20)
                .padding(.bottom, 20)

                LineSecureField(
                    title: "Password",
                    placeholder: "Enter your password",
                    txt: $mainVM.txtPassword,
                    isShowPassword: $mainVM.isShowPassword
                )
                .padding(.horizontal, 20)
                .padding(.bottom, 20)

                VStack(spacing: 5) {
                    HStack {
                        Text("By continuing, you agree to our")
                            .foregroundColor(.secondaryText)
                            .font(.customfont(.semibold, fontSize: 15))

                        Text("Terms of Service")
                            .foregroundColor(.primaryApp)
                            .font(.customfont(.semibold, fontSize: 16))
                            .onTapGesture {
                                // Handle Terms of Service click
                            }
                    }

                    HStack {
                        Text("and")
                            .foregroundColor(.secondaryText)
                            .font(.customfont(.medium, fontSize: 15))

                        Text("Privacy Policy.")
                            .foregroundColor(.primaryApp)
                            .font(.customfont(.semibold, fontSize: 16))
                            .onTapGesture {
                                // Handle Privacy Policy click
                            }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 15)

                Button(action: {

                }) {
                    Text("Get Started")
                        .font(.customfont(.semibold, fontSize: 18))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 50)
                        .background(Color.primaryApp)
                        .cornerRadius(25)
                        .padding(.horizontal, 20)
                }
                .padding(.bottom, 40)

                Spacer()
            }
            .padding(.top, 30)
            
                     VStack {
                         HStack {
                             BackButton {
                                 SingUpView()
                                
                             }
                             Spacer()
                         }
                         Spacer()
                     }
                     .padding(.top, 60)
                     .padding(.horizontal, 20)
                 }
                 
               
            
               
        .navigationBarHidden(true)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SingUpView()
}
