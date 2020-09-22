////
////  CarInfoCard.swift
////  TeslaNew
////
////  Created by Atharv Sharma on 21/09/20.
////
//
//import SwiftUI
//
//struct CarInfoCard: View {
//    @State var show = false
//    var body: some View {
//        
//        VStack{
//            
//            HStack(spacing: 0) {
//                Image(systemName: "chevron.right")
//                    .font(.system(size: 30))
//                    .frame(width: show ? 30 : 0, height: show ? 30 : 0)
//                    .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
//                    .opacity(show ? 1 : 0)
//                
//                show ? Spacer().frame(width: 120, height: 10) : nil
//                
//                VStack(alignment: .leading) {
//                    HStack(alignment: .lastTextBaseline, spacing: 2) {
//                        
//                        
//                        
//                        Text("100")//cardValue
//                            
//                            .font(.system(size: 40, weight: .bold, design: .rounded))
//                            .foregroundColor(Color("ColorButtonLogo"))
//                        
//                        Text("%")//cardUnit
//                            
//                            .font(.system(size: 25, weight: .bold, design: .rounded))
//                            .foregroundColor(Color("ColorButtonLogo"))
//                            
//                        
//                        
//                    }
//                    .opacity(show ? 0 : 1)
//                    .frame(height: show ? 0 : nil)
//                    
//                    Text("Charge")//cardType
//                        .font(show ? .largeTitle : .subheadline)
//                        //.font(.system(size: show ? .title : 15, design: .rounded))
//                        .foregroundColor(Color("ColorButtonLogo"))
//                }
//                
//            }
//            Spacer()
//            
//        }
//        .frame(width: show ? screen.width : 130, height: show ? screen.height : 90,alignment: .leading)
//        .padding(.top,show ? 100 :20)
//        //.padding(.bottom, 5)
//        .padding(.leading, 15)
//       // .background(Color("ColorButton"))
//        .background(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
//        
//        //.cornerRadius(20)
//        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//        .shadow(color: Color.black.opacity(0.15), radius: 20, x: 10, y: 10)
//        .animation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0))
//        .onTapGesture( perform: {
//            self.show.toggle()
//        })
//    }
//}
//
//struct CarInfoCard_Previews: PreviewProvider {
//    static var previews: some View {
//        CarInfoCard()
//    }
//}
