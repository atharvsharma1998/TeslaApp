//
//  ContentView.swift
//  TeslaNew
//
//  Created by Atharv Sharma on 20/09/20.
//

import SwiftUI




struct ContentView: View {
    
   // @State var carMove = false
    @State var showCard = false
    @State var cardIndex = -1
    
    var body: some View {
        
        
        
        GeometryReader { geometry in
//            ZStack{
//
//                Image("TeslaCar")
//
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//
//                    .frame(width: geometry.size.width * 0.6, height:geometry.size.width * 0.6*2.094)
//                    .rotationEffect(Angle(degrees: getRotateCar(cardIndex: self.cardIndex)))
//                    .scaleEffect(getScaleCar(cardIndex: cardIndex))
//
//
//                    .position(x: getXPositionCar(cardIndex: cardIndex, geometry: geometry), y: getYPositionCar(cardIndex: cardIndex, geometry: geometry))
//
//                    .animation(.easeIn)
//
//
//            }
            
           
            
            
            
            VStack {
                
                HStack{

                    // for top buttons
                    Button(action: {}) {
                        Image(systemName: "gear")

                            .foregroundColor(Color("ColorButtonLogo"))
                            .font(.system(size: 30, weight: .medium))
                            .frame(width: 30, height: 30)

                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)

                    }
                    Spacer()
                        .frame(width: 290, height: 40)

                    Button(action: {}) {
                        Image(systemName: "power")
                            // .renderingMode(.original)
                            //
                            .foregroundColor(.white)
                            .font(.system(size: 25, weight: .medium))
                            .frame(width: 50, height: 50)
                            .background( Color("ColorButtonPower"))
                            .clipShape(RoundedRectangle(cornerRadius: 18, style: .continuous))
                            .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)

                    }



                }

                .frame(width: geometry.size.width, height: geometry.size.height*0.07)

                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Model")
                                //.font(.title)
                                .font(.system(size: 50, weight: .heavy, design: .default))
                                
                                .fontWeight(.heavy)
                            
                            Text("S")
                                
                                .font(.system(size: 50, weight: .regular, design: .default))
                        }
                        Text("Atharv's Tesla")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundColor(Color("ColorButtonLogo"))
                    }
                    
                    Spacer()
                        .frame(width: 185)
                }
                .frame(width: screen.width, height: 100)
                
                
                
                 
                GeometryReader { geometry in
                    
                    VStack(spacing: 15) {

                        CarInfoCard(cardValue: "20", cardUnit: "%", cardType: "Charge", cardNotify: false)
                            .onTapGesture(perform: {
                                cardIndex = 0
                               // carMove = true
                                showCard = true
                            })

                        CarInfoCard(cardValue: "150", cardUnit: "Km", cardType: "Range", cardNotify: false)
                            .onTapGesture(perform: {
                                cardIndex = 1
                                // carMove = true
                                showCard = true
                            })

                        CarInfoCard(cardValue: "38º", cardUnit: "C", cardType: "Temp", cardNotify: false)
                            .onTapGesture(perform: {
                                cardIndex = 2
                               // carMove = true
                                showCard = true
                            })

                        CarInfoCard(cardValue: "Active", cardUnit: "", cardType: "Sentry Mode", cardNotify: false)
                            .onTapGesture(perform: {
                                cardIndex = 3
                                // carMove = true
                                showCard = true
                            })

                    }
                    .position(x: 330, y: 265)
                    .offset(x: showCard ? 190 : 0)
                    .animation(.easeIn)
                }
                .frame(width: screen.width, height: 550)
                //.background(Color.red)
                
                //Spacer()
                  //  .frame(width: screen.width, height: 100)
                
            }
                
            .frame(width: geometry.size.width, height: geometry.size.height)
            .edgesIgnoringSafeArea(.all)
            
            
            if showCard{
                
                ChargeCardView(show: $showCard)
                    
                
            }
            
            
            ZStack{
                
                Image("TeslaCarOutlineNew")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width * 0.6, height:geometry.size.width * 0.6*2.094)
                    
                    .rotationEffect(Angle(degrees: showCard ? getRotateCar(cardIndex: self.cardIndex) : 0))
                  
                    .scaleEffect(showCard ? 0.83 :1.1711)
                    //.position(x: 124, y: 530)
                //.scaleEffect(showCard ? getScaleCar(cardIndex: cardIndex) : 1)
                    .position(x: showCard ? getXPositionCar(cardIndex: cardIndex, geometry: geometry) : geometry.size.width - geometry.size.width * 0.68 , y: showCard ? getYPositionCar(cardIndex: cardIndex, geometry: geometry) : geometry.size.height - geometry.size.height*0.41)
                    .animation(.easeInOut)
                
                
                
                    Image("TeslaCar")
                        
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                        .frame(width: geometry.size.width * 0.6, height:geometry.size.width * 0.6 * 2.094)
//                        .rotationEffect(Angle(degrees: showCard ? getRotateCar(cardIndex: self.cardIndex) : 0))
//                        .scaleEffect(showCard ? getScaleCar(cardIndex: cardIndex) : 1)
                       
                        .clipShape(
                            Rectangle()
                                
                                .offset(y: showCard ? 300 : 0)) //520
                        
                        .rotationEffect(Angle(degrees: showCard ? getRotateCar(cardIndex: self.cardIndex) : 0))
                        .scaleEffect(showCard ? getScaleCar(cardIndex: cardIndex) : 1)
                        .position(x: showCard ? getXPositionCar(cardIndex: cardIndex, geometry: geometry) : geometry.size.width - geometry.size.width * 0.68 , y: showCard ? getYPositionCar(cardIndex: cardIndex, geometry: geometry) : geometry.size.height - geometry.size.height*0.41)
                        .animation(.easeInOut)
            }
            
            
            
            
            
            
            
            
        }
        .frame(width: screen.width, height: screen.height)
        .edgesIgnoringSafeArea(.all)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CarInfoCard: View {

    @State var cardValue: String
    @State var cardUnit: String
    @State var cardType: String
    @State var cardNotify: Bool

    var body: some View {
        VStack(alignment: .leading){

            HStack(alignment: .lastTextBaseline, spacing: 2) {
                Text(cardValue)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .foregroundColor(Color("ColorButtonLogo"))

                Text(cardUnit)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                    .foregroundColor(Color("ColorButtonLogo"))
            }
            Text(cardType)
                .font(.system(size: 15, design: .rounded))
                .foregroundColor(Color("ColorButtonLogo"))

        }
        .frame(width: 130, height: 90,alignment: .leading)
        .padding(.top,10)
        .padding(.bottom, 5)
        .padding(.leading, 15)
        .background(Color("ColorButton"))
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.15), radius: 20, x: 10, y: 10)
    }
}

let screen = UIScreen.main.bounds

//func getCardChoosen(index:Int) -> CGFloat{
//
//    switch index {
//    case 0:
//        return 0
//
//    case 1:
//        return 0
//
//    case 2:
//        return 0
//
//    case 3:
//        return 0
//
//    default:
//        return 0
//    }
//}


func getRotateCar(cardIndex: Int) -> Double {
    //print("Hi")
    switch cardIndex {
       case 0:
        print("Hi")
        return 90
   
       case 1:
           return 0
   
       case 2:
           return 0
   
       case 3:
           return 0
   
       default:
           return 0
       }
    
    
}

func getScaleCar(cardIndex: Int) -> CGFloat{
    
    switch cardIndex {
       case 0:
        print("Hi")
        return 0.7
   
       case 1:
           return 0
   
       case 2:
           return 0
   
       case 3:
           return 0
   
       default:
           return 1
       }
    
}

func getXPositionCar(cardIndex: Int, geometry: GeometryProxy) -> CGFloat{
    
    switch cardIndex {
       case 0:
        print("Hi")
        return geometry.size.width - geometry.size.width * 0.5
   
       case 1:
           return 0
   
       case 2:
           return 0
   
       case 3:
           return 0
   
       default:
           return geometry.size.width - geometry.size.width * 0.68
       }
    
    
}

func getYPositionCar(cardIndex: Int, geometry: GeometryProxy) -> CGFloat{
    
    switch cardIndex {
       case 0:
        print("Hi")
        return geometry.size.height - geometry.size.height*0.76
   
       case 1:
           return 0
   
       case 2:
           return 0
   
       case 3:
           return 0
   
       default:
           return geometry.size.height - geometry.size.height*0.41
       }
    
    
}
