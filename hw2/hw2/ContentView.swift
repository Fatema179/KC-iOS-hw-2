//
//  ContentView.swift
//  hw2
//
//  Created by Zeinab H Eldeeb on 26/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Quantity = ""
    @State var Quantity2 = ""
    @State var Quantity3 = ""
    @State var Quantity4 = ""
    @State var Quantity5 = ""
    @State var Amount = ""
    @State var result = 0.0
    var body: some View {
        ZStack{
            Color.yellow.opacity(0.3)
                .ignoresSafeArea()
            VStack{
                
                Text("Karak Station")
                    .font(.largeTitle)
                
                Image("karak")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                Spacer()
                
                Text("Menu")
                    .font(.title)
                Spacer()
                
                ZStack {
                    Color.black.opacity(0.3)
                    
                    VStack {
                        HStack{
                            TextField("الكمية", text: $Quantity)
                                .textFieldStyle(.roundedBorder)
                                .frame(width: 100, height: 25)
                                .background(.white)
                            Spacer()
                            
                            Text("0.650 KD")
                                .font(.title2)
                            Spacer()
                            
                            Text("جباتي حلوم")
                                .font(.title2)
                           
                        }.padding()
                    
                
                HStack{
                    TextField("الكمية", text: $Quantity2)
                         .textFieldStyle(.roundedBorder)
                         .frame(width: 100, height: 25)
                        .background(.white)
                    Spacer()
                    
                    Text("0.150 KD")
                        .font(.title2)
                    Spacer()
                    
                    Text("جباتي سادة")
                        .font(.title2)
                   
                }.padding()
                        
                        HStack{
                            TextField("الكمية", text: $Quantity3)
                                .textFieldStyle(.roundedBorder)
                                .frame(width: 100, height: 25)
                                .background(.white)
                            Spacer()
                            
                            Text("0.150 KD")
                                .font(.title2)
                            Spacer()
                            
                            Text("جباتي بيض بالجبن")
                                .font(.title2)
                            
                        }.padding()
                        
                        HStack{
                            TextField("الكمية", text: $Quantity4)
                                .textFieldStyle(.roundedBorder)
                                .frame(width: 100, height: 25)
                                .background(.white)
                            
                            Spacer()
                            
                            Text("0.700 KD")
                                .font(.title2)
                            Spacer()
                            
                            Text("جباتي شكشوكة")
                                .font(.title2)
                            
                        }.padding()
                        
                        HStack{
                            TextField("الكمية", text: $Quantity5)
                                .textFieldStyle(.roundedBorder)
                                .frame(width: 100, height: 25)
                                .background(.white)
                              
                            Spacer()
                            
                            Text("1.000 KD")
                                .font(.title2)
                            Spacer()
                            
                            Text("ايس كرك")
                                .font(.title2)
                            Spacer()
                          
                        }.padding()
                        
                    }
                }
                
                HStack {
                    TextField("المبلغ", text: $Amount)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 100, height: 25)
                        .background(.white)
               
                Text("ادخل المبلغ الذي لديك")
                        .font(.title2)
                }.padding()
                
                Button {
                    result = calc(q: Double(Quantity) ?? 0.0, q2: Double(Quantity2) ?? 0.0, q3: Double(Quantity3) ?? 0.0, q4: Double(Quantity4) ?? 0.0, q5: Double(Quantity5) ?? 0.0)
                } label: {
                    Text("اضغط لمعرفة الفاتورة")
                        .font(.title)
                        .frame(width: 250, height: 70)
                        .foregroundColor(.white)
                        .background(.black.opacity(0.2))
                        .cornerRadius(20)
                }
                
                Text("المبلغ الاجمالي هو: \(result)")
                    .font(.title)
            }
        }
    }
    
    func calc(q: Double, q2: Double, q3: Double, q4: Double, q5: Double) -> Double {
        return (q * 0.650) + (q2 * 0.150) + (q3 * 0.150) + (q4 * 0.700) + (q5 * 1.000)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
