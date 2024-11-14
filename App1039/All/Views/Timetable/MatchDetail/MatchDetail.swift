//
//  MatchDetail.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI

struct MatchDetail: View {

    @StateObject var viewModel: TimetableViewModel
    @Environment(\.presentationMode) var route
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 18) {
                
                ZStack {
                    
                    Text("Match card")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {
                            
                            route.wrappedValue.dismiss()
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 16, weight: .regular))
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = true
                            }
                            
                        }, label: {
                            
                            Image(systemName: "trash.fill")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 16, weight: .regular))
                        })
                    }
                }
                .padding()
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 15) {
                        
                        HStack {
                            
                            Text("Event")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))

                            Text(viewModel.selectedMatch?.mEv ?? "")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Team 1")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Text(viewModel.selectedMatch?.mT1 ?? "")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Points")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Text(viewModel.selectedMatch?.mPT1 ?? "")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
    
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Team 2")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Text(viewModel.selectedMatch?.mT2 ?? "")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Points")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Text(viewModel.selectedMatch?.mPT2 ?? "")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Date")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                                                        
                            Text("\((viewModel.selectedMatch?.mDate ?? Date()).convertDate(format: "dd.MM.YY"))")
                                .foregroundColor(Color.white)
                                .font(.system(size: 15, weight: .medium))
                            
                            Spacer()

                        }
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Time")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                                                        
                            Text("\((viewModel.selectedMatch?.mDate ?? Date()).convertDate(format: "HH:mm"))")
                                .foregroundColor(Color.white)
                                .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
    
                        }
                        .padding(10)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Bid")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Text(viewModel.selectedMatch?.mBid ?? "")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        
                        HStack {
                            
                            Text("Coefficient")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Text(viewModel.selectedMatch?.mCoef ?? "")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))

                            HStack {
                                
                                Text("Result:")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 16, weight: .medium))

                                Text(viewModel.selectedMatch?.mRes ?? "")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 15, weight: .medium))
                           
                                Spacer()

                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                                                    
                        HStack {
                            
                            Text("Amount")
                                .foregroundColor(Color.white)
                                .font(.system(size: 16, weight: .medium))
                            
                            Text(viewModel.selectedMatch?.mAmount ?? "")
                                    .foregroundColor(Color.white)
                                    .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                        .padding(.bottom)

                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("bg2"))
                .ignoresSafeArea()
            }
        }
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isDelete ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isDelete = false
                        }
                    }
                
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = false
                            }
                            
                        }, label: {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                                .font(.system(size: 13, weight: .regular))
                        })
                    }
                    
                    Text("Delete")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold))
                        .padding()
                    
                    Text("Are you sure you want to delete?")
                        .foregroundColor(.white.opacity(0.7))
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                    
                    HStack {
                        
                        Button(action: {
                            
                            CoreDataStack.shared.deleteMatch(withMEv: viewModel.selectedMatch?.mEv ?? "", completion: {
                                
                                viewModel.fetchMatchs()
                            })
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = false
                                viewModel.isDetail = false
                            }
                            
                        }, label: {
                            
                            Text("Delete")
                                .foregroundColor(.red)
                                .font(.system(size: 18, weight: .semibold))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                            
                        })
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isDelete = false
                            }
                            
                        }, label: {
                            
                            Text("Close")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                            
                        })
                    }
                    .padding(.top, 25)

                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))
                .padding()
                .offset(y: viewModel.isDelete ? 0 : UIScreen.main.bounds.height)
            }
        )
    }
}

#Preview {
    MatchDetail(viewModel: TimetableViewModel())
}
