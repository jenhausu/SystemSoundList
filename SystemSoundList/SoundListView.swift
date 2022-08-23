//
//  SoundListView.swift
//  SystemSoundList
//
//  Created by 蘇健豪 on 2022/6/22.
//

import SwiftUI

struct SoundListView: View {
    
    let soundIds: ClosedRange<Int>
    
    var body: some View {
        List {
            ForEach(soundIds, id: \.self) { soundId in
                SoundCellView(soundId: soundId)
            }
        }
    }
}

struct SoundListView_Previews: PreviewProvider {
    static var previews: some View {
        SoundListView(soundIds: 1000...1003)
    }
}
