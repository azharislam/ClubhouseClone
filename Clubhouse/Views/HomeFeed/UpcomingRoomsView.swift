//
//  UpcomingRoomsView.swift
//  Clubhouse
//
//  Created by Azhar Islam on 24/04/2022.
//

import SwiftUI

struct UpcomingRoomsView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK: - GroupRoomView

struct GroupRoomView: View {
    
    let upcomingRoom: UpcomingRoom
    
    var body: some View {
        
        HStack {
            Text(upcomingRoom.date, style: .time)
                .font(Font.Nunito.semiBold(size: 10))
                .foregroundColor(Color.textYellow)
            
            VStack {
                
                if let groupName = upcomingRoom.groupName {
                    
                    HStack {
                        Text(groupName.uppercased())
                            .font(Font.Nunito.bold(size: 8))
                            .foregroundColor(Color.textBlack)
                        Image
                            .home
                            .font(Font.Nunito.bold(size: 10))
                            .foregroundColor(Color.green)
                    }
                }
                
                Text(upcomingRoom.roomName)
                    .lineLimit(1)
                    .font(Font.Nunito.bold(size: 14))
                    .foregroundColor(Color.textBlack)
            }
        }
    }
}


struct UpcomingRoomsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            UpcomingRoomsView()
            GroupRoomView(upcomingRoom:
                            UpcomingRoom.dummyData[0])
                .previewLayout(.sizeThatFits)
        }
    }
}


