//
//  ClimateCardView.swift
//  TeslaNew
//
//  Created by Atharv Sharma on 24/09/20.
//

import SwiftUI

struct ClimateCardView: View {
    @Binding var show: Bool
    @Binding var carTemp: Int
    
    var body: some View {
        
        ZStack{
            VStack{
                ZStack {
                    HStack{
                        
                        Text("Climate")
                            .font(.title)
                    }
                    
                    HStack(spacing: 0){
                        Image(systemName: "chevron.left")
                            .font(.title2)
                            
                            .onTapGesture(perform: {
                                print("Hello")
                                self.show.toggle()
                            })
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                }
                
                .padding(.top, 45)
                
                Spacer()
                
                HStack(alignment: .center,spacing: 40){
                    Image(systemName: "chevron.left")
                        .font(.largeTitle)
                        .onTapGesture(perform: {
                            if carTemp-1>14{
                                carTemp-=1
                                
                            }
                        })
                    //Text(carTemp == 15 ? "Low" : "\(carTemp)ºC")
                      Text(carTempLimit(carTemp: carTemp))
                        .font(.largeTitle).bold()
                    
                    Image(systemName: "chevron.right")
                        .font(.largeTitle)
                        .onTapGesture(perform: {
                            if carTemp+1<33{
                                carTemp+=1
                                
                            }
                        })
                    
                    
                
                 
                }
                .padding(.bottom,40)
                .padding(.leading,10)
//                .background(Color.black)
                
                
                
                
                //Spacer()
            }
            .frame(width: screen.width, height: screen.height)
            
            
        }
        .background(Color.white)
        .frame(width: screen.width, height: screen.height)
        
        
        
        
    }
}

struct ClimateCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        ClimateCardView(show: .constant(false), carTemp: .constant(25))
        
    }
}

func carTempLimit(carTemp: Int) -> String{
    if carTemp == 15{
        return "Low"
    }
    else if carTemp == 32{
        return "High"
    }
    
    return "\(carTemp)ºC"
    
}
