//
//  CardView.swift
//  TeslaNew
//
//  Created by Atharv Sharma on 22/09/20.
//

import SwiftUI

struct ChargeCardView: View {
    @Binding var show: Bool
    
    var body: some View {
        
        ZStack{
            
            VStack{
                ZStack {
                    HStack{
                        
                        Text("Charge")
                            .font(.title)
                          
                    }
                    
                    HStack(spacing: 0){
                        Image(systemName: "chevron.left")
                            .font(.title2)
                            .onTapGesture(perform: {
                                self.show.toggle()
                            })
                        
                        Spacer()

                    }
                    .padding()
                    
                }
                
                .padding(.top, 45)
                
                Spacer()
                    .frame(width: screen.width, height: 230)
                    .background(Color.black)
                
                Spacer()
                
                
                
                
                
                
              
                
                
               
            }
            .frame(width: screen.width, height: screen.height)
            
            
        }
        .frame(width: screen.width, height: screen.height)
        //.edgesIgnoringSafeArea(.all)
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ChargeCardView(show: .constant(false))
    }
}
