//
//  SquareDetailView.swift
//  SquaresInIzmir
//
//  Created by Murat Baykor on 13.10.2022.
//

import SwiftUI

struct SquareDetailView: View {
    
    let columns = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        
        VStack(spacing: 16) {
            Image("placeholder-Banner")
                .resizable()
                .scaledToFill()
                .frame(height: 120)
            
            HStack {
                Label("This is address line", systemImage: "mappin.and.ellipse")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                
                Spacer()
                
            }.padding(.horizontal)
            
            Text("This is the description line for three line text. This text is long because it should test three line text. Bla bla bla")
                .lineLimit(3)
                .frame(height: 70)
                .minimumScaleFactor(0.75)
                .padding(.horizontal)
            
            ZStack {
                Capsule()
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    .frame(height: 80)
                    .padding(.horizontal)
                HStack(spacing: 22) {
                    Button {
                        //Button Action
                    } label: {
                        CircleButton(color: Color.brandPrimary, systemImage: "location.fill")
                    }
                    
                    Button {
                        //Button Action
                    } label: {
                        CircleButton(color: Color.brandPrimary, systemImage: "info.circle.fill")
                    }
                    
                    Button {
                        //Button Action
                    } label: {
                        CircleButton(color: Color.brandPrimary, systemImage: "star.fill")
                    }
                    
                    Button {
                        //Button Action
                    } label: {
                        CircleButton(color: Color.brandPrimary, systemImage: "person.fill.badge.plus")
                    }
                }
            }
            
            Text("Who`s here?")
                .font(.title)
                .bold()
            ScrollView {
                LazyVGrid(columns: columns) {
                    FirstNameAvatarView(firstName: "Murat")
                    FirstNameAvatarView(firstName: "Murat")
                    FirstNameAvatarView(firstName: "Murat")
                    FirstNameAvatarView(firstName: "Murat")
                    FirstNameAvatarView(firstName: "Murat")
                    FirstNameAvatarView(firstName: "Murat")
                    FirstNameAvatarView(firstName: "Murat")
                }
            }

            
            Spacer()
        }
        .navigationTitle("Square Name")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct SquareDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SquareDetailView()
        }
        
    }
}

struct CircleButton: View {
    var color: Color
    var systemImage: String
    
    var body: some View {
        ZStack {
            Circle()
                .frame(height: 60)
                .foregroundColor(color)
            
            Image(systemName: systemImage)
                .resizable()
                .scaledToFit()
                .frame(height: 22)
                .foregroundColor(.white)
        }
    }
}

struct FirstNameAvatarView: View {
    
    var firstName: String
    
    var body: some View {
        VStack {
            Image("placeholder-Avatar")
                .resizable()
                .scaledToFit()
                .frame(width: 80)
            Text(firstName)
                .bold()
        }
    }
}
