//
//  CardView.swift
//  TeslaNew
//
//  Created by Atharv Sharma on 22/09/20.
//

import SwiftUI

struct ChargeCardView: View {
    @Binding var show: Bool
    
    @State var charging = false
    
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
                
                VStack {
                    Text(charging ? "Charging" : "Parked")
                        .bold()
                    Text("2Hrs 14min Remaining")
                        .opacity(charging ? 1 : 0)
                }
                
                Spacer()
                    .frame(width: screen.width, height: 230)
                    //.background(Color.black)
                
                VStack(spacing:5){
                    
                    HStack(spacing: 100){
                        HStack(spacing: 4){
                            Text("0 km/hr")
                        }
                        
                        HStack(spacing: 4){
                            Text("206")
                            Text("V")
                        }
                        
                        HStack(spacing: 4){
                            Text("33")
                            Text("A")
                        }
                    }
//                    .frame(width: screen.width, height: 30)
                    .opacity(charging ? 1 : 0)
                    
                    Spacer()
                        .frame(width: screen.width, height: 20)
                    
                    Button(action: {charging.toggle()}) {
                        if charging{
                            Text("Stop Charging")
                                .padding()
                                .frame(width: 300, height: 50)
                                .foregroundColor(Color.black)
                            
                            
                        }
                        else{
                            Text("Open Charging Port")
                                .padding()
                                .frame(width: 300, height: 50)
                                .foregroundColor(Color.black)
                        }
                    }
                    
                    .padding()
                    .frame(width: 300, height: 50)
                    .foregroundColor(Color.black)
                    
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 1)
                    )

                    
                    
                    
                }
                .padding(.bottom)
                
                
                Divider().padding(.horizontal)
                
                
                
                ScrollView {
                    HStack{
                        
                        Text("Nearby Chargers")
                            .font(.title3)
                            .bold()
                        Spacer()
                        
                        
                        
                    }
                    .padding(.leading ,30)
                    //.padding(.bottom,0)
                    .frame(width: screen.width, height: 50)
                    
                    
                    VStack(spacing: 15){
                        
                        ChargerListView()
                        ChargerListView()
                        ChargerListView()
                        ChargerListView()
                        ChargerListView()
                        
                    }
                    .padding(.horizontal)
                    
                }

            }
            .frame(width: screen.width, height: screen.height)
            
            
        }
        .background(Color.white)
        .frame(width: screen.width, height: screen.height)
        //.opacity(0.8)
        //.edgesIgnoringSafeArea(.all)
        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ChargeCardView(show: .constant(false))
    }
}

struct ChargerListView: View {
    var body: some View {
        HStack{
            
            VStack(alignment: .leading, spacing: 5){
                Text("Polaris, OH")
                    .font(.title2)
                Text("8 / 10 available")
            }
            
            Spacer()
            
            VStack(spacing: 3) {
                Image(systemName: "bolt.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color("ColorMappin"))
                
                Text("3.4km")
                    .font(.subheadline)
            }
            
        }
        .padding(.horizontal,20)
        .padding(.vertical,20)
        //.frame(width: 100, height: 100)
        .background(Color("ColorButton"))
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
    }
}
