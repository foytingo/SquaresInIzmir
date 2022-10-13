//
//  ProfileView.swift
//  SquaresInIzmir
//
//  Created by Murat Baykor on 13.10.2022.
//

import SwiftUI

struct ProfileView: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var bio = ""
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Color(uiColor: .secondarySystemBackground)
                        .frame(height: 150)
                        .cornerRadius(10)
                        .padding(.horizontal)
                    
                    HStack(spacing: 16) {
                        ZStack(alignment: .bottom) {
                            Image("placeholder-Avatar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100)
                            
                            Image(systemName: "square.and.pencil")
                                .resizable()
                                .foregroundColor(.white)
                                .scaledToFit()
                                .frame(height: 20)
                                .offset(y: -10)
                        }
                        .padding(.leading, 12)
                        
                        VStack(spacing: 1) {
                            TextField("First Name", text: $firstName)
                                .font(.title)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            
                            TextField("Last Name", text: $lastName)
                                .font(.title)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            
                            TextField("Email", text: $email)
                                .font(.body)
                        }
                        .padding(.trailing, 16)
                    }
                    .padding()
                    
                }
                
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Bio: ")
                        .font(.callout)
                        .foregroundColor(.gray)
                    +
                    Text("\(100 - bio.count)")
                        .foregroundColor(bio.count <= 100 ? .brandPrimary : .brandRed)
                        .bold()
                    +
                    Text(" characters remain")
                        .font(.callout)
                        .foregroundColor(.gray)
                    
                    
                    TextEditor(text: $bio)
                        .frame(height: 100)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.secondary, lineWidth: 1))
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Create Profile")
                        .bold()
                        .frame(width: 280, height: 40)
                        .background(Color.brandPrimary)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                
            }
            .navigationTitle("Profile")
            
            
            
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
