//
//  AddTime.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI

struct AddTime: View {

    @StateObject var viewModel: TimetableViewModel
    @Environment(\.presentationMode) var route
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 18) {
                
                ZStack {
                    
                    Text("Add match card")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {
                            
                            viewModel.mEv = ""
                            viewModel.mT1 = ""
                            viewModel.mPT1 = ""
                            viewModel.mT2 = ""
                            viewModel.mPT2 = ""
                            viewModel.mBid = ""
                            viewModel.mCoef = ""
                            viewModel.mAmount = ""
                            viewModel.resForAdd = ""
                            
                            route.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 16, weight: .regular))
                        })
                        
                        Spacer()
                    }
                }
                .padding()
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 15) {
                        
                        HStack {
                            
                            Text("Event")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            ZStack(content: {
                                
                                Text("Dota 2, football, eth")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.mEv.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.mEv)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                                
                            })
    
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Team 1")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.mT1.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.mT1)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                                
                            })
    
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Points")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.mPT1.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.mPT1)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                                
                            })
    
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Team 2")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.mT2.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.mT2)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                                
                            })
    
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Points")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            ZStack(content: {
                                
                                Text("Enter")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.mPT2.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.mPT2)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                                
                            })
    
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Date")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Spacer()
                            
                            DatePicker("", selection: $viewModel.mDate, displayedComponents: .date)
                                .labelsHidden()
    
                        }
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Time")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Spacer()
                            
                            DatePicker("", selection: $viewModel.mTime, displayedComponents: .hourAndMinute)
                                .labelsHidden()
    
                        }
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Bid")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            ZStack(content: {
                                
                                Text("$500")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.mBid.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.mBid)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                                
                            })
    
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Coefficient")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            ZStack(content: {
                                
                                Text("1.25")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.mCoef.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.mCoef)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                                
                            })
    
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        Menu(content: {
                            
                            ForEach(viewModel.results, id: \.self) { index in
                                
                                Button(action: {
                                    
                                    viewModel.resForAdd = index
                                    
                                }, label: {
                                    
                                    Text(index)
                                })
                            }
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Result:")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))

                                Text(viewModel.resForAdd)
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 15, weight: .medium))
                           
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .regular))
        
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                            
                        })
                        
                        HStack {
                            
                            Text("Amount")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            ZStack(content: {
                                
                                Text("$1000")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.mAmount.isEmpty ? 1 : 0)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                TextField("", text: $viewModel.mAmount)
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                                
                            })
    
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        .padding(.bottom)
                        
                        Button(action: {
                            
                            viewModel.mCat = viewModel.currCat
                            viewModel.mRes = viewModel.resForAdd
                            
                            viewModel.addMatch()
                            
                            viewModel.mEv = ""
                            viewModel.mT1 = ""
                            viewModel.mPT1 = ""
                            viewModel.mT2 = ""
                            viewModel.mPT2 = ""
                            viewModel.mBid = ""
                            viewModel.mCoef = ""
                            viewModel.mAmount = ""
                            viewModel.resForAdd = ""
                            viewModel.currCat = ""
                            
                            viewModel.fetchMatchs()
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAdd = false
                            }
                            
                        }, label: {
                            
                            Text("Add")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(RoundedRectangle(cornerRadius: 15).fill(Color("prim")))
                        })
                        .opacity(viewModel.mEv.isEmpty || viewModel.mT1.isEmpty || viewModel.mPT1.isEmpty || viewModel.mT2.isEmpty || viewModel.mPT2.isEmpty ? 0.5 : 1)
                        .disabled(viewModel.mEv.isEmpty || viewModel.mT1.isEmpty || viewModel.mPT1.isEmpty || viewModel.mT2.isEmpty || viewModel.mPT2.isEmpty ? true : false)
                        .padding(.bottom, 20)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("bg2"))
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    AddTime(viewModel: TimetableViewModel())
}
