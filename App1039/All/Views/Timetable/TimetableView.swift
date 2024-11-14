//
//  TimetableView.swift
//  App1039
//
//  Created by IGOR on 12/11/2024.
//

import SwiftUI

struct TimetableView: View {
    
    @StateObject var viewModel = TimetableViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Button(action: {
                    
                    withAnimation(.spring()) {
                        
                        viewModel.isAddCategory = true
                    }
                    
                }, label: {
                    
                    Text("Add category")
                        .foregroundColor(Color("prim"))
                        .font(.system(size: 17, weight: .regular))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                })
                
                Text("Timetable")
                    .foregroundColor(.white)
                    .font(.system(size: 34, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 20)
                
                if viewModel.categories.isEmpty {
                    
                    VStack(spacing: 12) {
                        
                        Text("No category")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .bold))
                            .padding(.top, 100)
                        
                        Text("Click the button to add a new category")
                            .foregroundColor(.white.opacity(0.5))
                            .font(.system(size: 18, weight: .regular))
                            .frame(width: 250)
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                    }
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        ForEach(viewModel.categories, id: \.self) { indexer in
                            
                            HStack {
                                
                                Text(indexer)
                                    .foregroundColor(.white)
                                    .font(.system(size: 22, weight: .bold))
                                
                                Spacer()
                                
                                Button(action: {
                                    
                                    viewModel.currCat = indexer
                                    
                                    withAnimation(.spring()) {
                                        
                                        viewModel.isAdd = true
                                    }
                                    
                                }, label: {
                                    
                                    Image(systemName: "plus")
                                        .foregroundColor(Color("prim"))
                                        .font(.system(size: 18, weight: .semibold))
                                })
                            }
                            
                            ScrollView(.vertical, showsIndicators: false) {
                                
                                LazyVStack {
                                    
                                    ForEach(viewModel.matches.filter{($0.mCat ?? "") == indexer}, id: \.self) { index in
                                        
                                        Button(action: {
                                            
                                            viewModel.selectedMatch = index
                                            
                                            withAnimation(.spring()) {
                                                
                                                viewModel.isDetail = true
                                            }
                                            
                                        }, label: {
                                            
                                            HStack {
                                                
                                                VStack(alignment: .leading, spacing: 5) {
                                                    
                                                    Text("\(index.mT1 ?? "") - \(index.mT2 ?? "")")
                                                        .foregroundColor(.white)
                                                        .font(.system(size: 18, weight: .medium))
                                                    
                                                    Text(index.mEv ?? "")
                                                        .foregroundColor(.white.opacity(0.5))
                                                        .font(.system(size: 17, weight: .regular))
                                                }
                                                
                                                Spacer()
                                                
                                                Image(systemName: "chevron.right")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 18, weight: .medium))
                                            }
                                            .padding()
                                            .frame(maxWidth: .infinity)
                                            .frame(height: 70)
                                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                                        })
                                    }
                                }
                            }
                            .padding(.bottom)
                        }
                    }
                }
            }
            .padding()
        }
        .overlay(
            
            ZStack {
                
                Color.black.opacity(viewModel.isAddCategory ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isAddCategory = false
                        }
                    }
                
                VStack {
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAddCategory = false
                            }
                            
                        }, label: {
                            
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .regular))
                        })
                    }
                    
                    Text("Add category")
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .semibold))
                        .padding()
                    
                    Text("When a new category is added, it cannot be deleted later on")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                        .multilineTextAlignment(.center)
                    
                    ZStack(content: {
                        
                        Text("Enter")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                            .opacity(viewModel.addCat.isEmpty ? 1 : 0)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        TextField("", text: $viewModel.addCat)
                            .foregroundColor(Color.white)
                            .font(.system(size: 15, weight: .medium))
                        
                    })
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg3")))
                    .padding(.bottom)
                    
                    HStack {
                        
                        Button(action: {
                            
                            viewModel.addCat = ""
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAddCategory = false
                            }
                            
                        }, label: {
                            
                            Text("Cancel")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 15, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                        })
                        
                        Button(action: {
                            
                            viewModel.categories.append(viewModel.addCat)
                            
                            viewModel.addCat = ""
                            
                            withAnimation(.spring()) {
                                
                                viewModel.isAddCategory = false
                            }
                            
                        }, label: {
                            
                            Text("Add")
                                .foregroundColor(Color("prim"))
                                .font(.system(size: 17, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                        })
                        .disabled(viewModel.addCat.isEmpty ?  true : false)
                        
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).fill(Color("bg2")))
                .offset(y: viewModel.isAddCategory ? 0 : UIScreen.main.bounds.height)
            }
        )
        .onAppear {
            
            viewModel.fetchMatchs()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            AddTime(viewModel: viewModel)
        })
        .sheet(isPresented: $viewModel.isDetail, content: {
            
            MatchDetail(viewModel: viewModel)
        })
    }
}

#Preview {
    TimetableView()
}
