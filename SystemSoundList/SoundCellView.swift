//
//  SoundCellView.swift
//  SystemSoundList
//
//  Created by 蘇健豪 on 2022/6/22.
//

import SwiftUI
import AudioToolbox

struct SoundCellView: View {
    
    let soundId: Int
    
    var body: some View {
        Button {
            AudioServicesPlaySystemSoundWithCompletion(SystemSoundID(soundId), nil)
        } label: {
            Text("\(soundId)")
        }
    }
}

struct SoundCellView_Previews: PreviewProvider {
    static var previews: some View {
        SoundCellView(soundId: 1018)
    }
}
