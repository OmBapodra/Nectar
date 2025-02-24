import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack {
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:70,height: 70)
                    .padding(.top,270)
                    .padding(.bottom,5)
                Text("Welcome \n to our store")
                    .font(.customfont(.bold, fontSize:45))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Ger you groceries in as fast as one hour")
                    .font(.customfont(.medium, fontSize:14))
                    .foregroundStyle(.gray,.opacity(0.4))
                NavigationLink(destination: SingUpView()){
                    Text("Start Shopping")
                        .font(.customfont(.semibold,fontSize: 16))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 50,maxHeight: 50)
                        .background(Color.primaryApp)
                        .cornerRadius(20)
                }
                Spacer()
                    .frame(height:1)
                
            }
            .padding(.horizontal,30)
                
            
        }
        .navigationTitle("")
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    WelcomeView()
}
