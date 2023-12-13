//
//  customModelBoot.swift
//  swiftUI
//
//  Created by kiruthikayini S on 12/12/23.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct CustomModelBoot: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Vijay", userName: "vj123", followerCount: 600, isVerified: false),
        UserModel(displayName: "Sona", userName: "sona123", followerCount: 800, isVerified: false),
        UserModel(displayName: "Jo", userName: "jo123", followerCount: 200, isVerified: true)
    ]
    
    var body: some View {
//        NavigationView {
//            List {
//                Section(header: Text("Users")) {
//                    ForEach(users) { user in
//                        HStack {
//                            HStack{
//                                Circle()
//                                    .frame(width: 35, height: 35)
//                                VStack(alignment: .leading){
//                                    Text(user.displayName)
//                                        .font(.headline)
//                                    Text("@\(user.userName)")
//                                    
//                                        .foregroundColor(.gray)
//                                        .font(.caption)
//                                }
//                            }
//                            Spacer()
//                            HStack{
//                                if(user.isVerified){
//                                    Image(systemName: "checkmark.seal.fill")
//                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                                }
//                                VStack(alignment: .leading){
//                                    Text("\(user.followerCount)")
//                                        .font(.headline)
//                                    Text("followers")
//                                        .foregroundColor(.gray)
//                                        .font(.caption)
//                                }
//                            }
//                            
//                        }
//                        .padding(.vertical, 10)
//                    }
//                }
//            }
//            .listStyle(InsetGroupedListStyle())
//        }
        VStack{
            HStack {
                Text("Hstack 1")
                Spacer()
                Text("Hstack 1")
            }
        }

    }
}


#Preview {
    CustomModelBoot()
}
