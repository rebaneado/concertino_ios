//
//  ComposerRow.swift
//  Concertino
//
//  Created by Adriano Brandao on 01/02/20.
//  Copyright © 2020 Open Opus. All rights reserved.
//

import SwiftUI
import URLImage

struct ComposerRow: View {
    var composer: Composer
    
    var body: some View {
        HStack {
            URLImage(composer.portrait) { img in
                img.image
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                    .clipShape(Circle())
            }
            .frame(width: 72, height: 72)
            VStack {
                VStack(alignment: .leading) {
                    
                    Text(composer.name.uppercased())
                        .foregroundColor(Color(hex: 0xfe365e))
                        .font(.custom("Nunito-ExtraBold", size: 15))
                    Group{
                        Text(composer.complete_name)
                        Text("(" + composer.birth.prefix(4)) + Text(composer.death != nil ? "-" : "") + Text((composer.death?.prefix(4) ?? "")) + Text(")")
                    }
                    .foregroundColor(.white)
                    .lineLimit(20)
                    .font(.custom("Nunito", size: 12))
                }
                .padding(12)
            }
        }
    }
}

struct ComposerRow_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
