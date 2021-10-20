//
//  ContentView.swift
//  Login Screen BK
//
//  Created by Hugo Pinheiro on 15/10/21.
//

import SwiftUI

struct ContentView: View {
    
    
  @State var emailCpf: String = ""
  @State var senha: String = ""
    
    
    var body: some View {
        
        VStack {
            
            Logo()
            
            VStack(alignment: .leading) {
                
                VStack(alignment: .leading) {
                    
                    Text("E-mail ou CPF")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.init(.label).opacity(0.75))
                        
                    HStack {
                        
                        TextField("", text: $emailCpf)
                    }
                    
                    Divider()
                        
                }.padding()
                
                VStack(alignment: .leading){
                    Text("Digite sua Senha")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundColor(Color.init(.label).opacity(0.75))
                    
                    SecureField("", text: $senha)
                    
                    Divider()
                    
                }.padding()
                
                HStack {
                    
                    Spacer()
                    Button(action: {
                    }) {
                        Text("Esqueci a Senha")
                            .foregroundColor(Color("redbk"))
                            .padding(.bottom)
                    
                    }
                }
                        
            }.padding(.horizontal, 9)
                
            VStack {
                
                BotaoEntrar()
                
                SocialloginButton(image: Image(uiImage: #imageLiteral(resourceName:"facebook")), text: Text("Continuar com Facebook"))
                
                SocialloginButton2(image: Image(uiImage: #imageLiteral(resourceName:"apple")), text: Text("Continuar com ID Apple"))
                    .padding(.horizontal)
                    
                
                BotaoCadastrar()
                    BotaoSair()
            }
        }.padding([.bottom, .top], 100).background(Color("fundo"))
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
   }
}

struct Logo: View {
    var body: some View {
        Image("teste")
            .resizable()
            .frame(width: 120, height: 120)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color("redbk")))
                        .shadow(radius: 10)

    }
}

struct BotaoEntrar: View {
    var body: some View {
        Text("ENTRAR")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 350, height: 50)
            .background(Color("redbk"))
            .cornerRadius(8.0)
            .padding(.bottom, 50)
    }
}

struct SocialloginButton: View {
    var image: Image
    var text: Text
    
    var body: some View {
        
        HStack() {
            image
                .padding(.horizontal)
            Spacer()
            text
                .padding(.horizontal, 10)
               
            Spacer()
        }
        
        .padding()
        .frame(width: 350, height: 40)
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 8.0)
                .stroke(Color.gray)
        )
        }
}

struct SocialloginButton2: View {
    var image: Image
    var text: Text
    
    var body: some View {
        
        HStack {
            image
                .padding(.horizontal, 21)
            Spacer()
            text
                .padding(.horizontal, 10)
               
            Spacer()
        }
        .padding()
        .frame(width: 350, height: 40)
        .background(Color.white)
        .overlay(
            RoundedRectangle(cornerRadius: 8.0)
                .stroke(Color.gray)
        )
        .padding(.bottom, 20)
        }
}

struct BotaoCadastrar: View {
    var body: some View {
        Text("CADASTRE-SE")
            .font(.headline)
            .foregroundColor(Color("redbk"))
            .padding()
            .frame(width: 350, height: 45)
            .background(Color("fundo"))
            .overlay(
                RoundedRectangle(cornerRadius: 8.0)
                    .stroke(Color("redbk"))
            )
            
    }
}
struct BotaoSair: View {
    var body: some View {
        Text("SAIR")
            .font(.headline)
            .foregroundColor(Color("redbk"))
            .padding()
            .frame(width: 350, height: 60)
    }
}

