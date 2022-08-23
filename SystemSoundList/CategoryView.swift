//
//  CategoryView.swift
//  SystemSoundList
//
//  Created by 蘇健豪 on 2022/6/22.
//

import SwiftUI

struct CategoryView: View {
    
    let categorys = ["Mail", "Voicemail", "SMS", "Calendar", "LowPower", "SMSReceived_Alert", "USSDAlert", "SIMToolkitTone", "PINKeyPressed", "AudioTone", "Screen", "KeyPressed", "1106...1118", "TouchTone", "Headset", "SystemSoundPreview", "KeyPressClickPreview", "SMSReceived", "VibeChanged", "Vibrate"]
    let soundDict: [String: ClosedRange<Int>] = ["Mail": 1000...1001,
                                                 "Voicemail": 1002...1002,
                                                 "SMS": 1003...1004,
                                                 "Calendar": 1005...1005,
                                                 "LowPower": 1006...1006,
                                                 "SMSReceived_Alert": 1007...1014,
                                                 "USSDAlert": 1050...1050,
                                                 "SIMToolkitTone": 1051...1055,
                                                 "PINKeyPressed": 1057...1057,
                                                 "AudioTone": 1070...1075,
                                                 "Screen": 1100...1102,
                                                 "KeyPressed": 1103...1105,
                                                 "1106...1118": 1106...1118,
                                                 "TouchTone": 1200...1211,
                                                 "Headset": 1254...1259,
                                                 "SystemSoundPreview": 1300...1305,
                                                 "KeyPressClickPreview": 1306...1306,
                                                 "SMSReceived": 1307...1336,
                                                 "VibeChanged": 1350...1351,
                                                 "Vibrate": 4095...4095]
    
    var body: some View {
        List {
            ForEach(categorys, id: \.self) { category in
                NavigationLink {
                    SoundListView(soundIds: soundDict[category]!)
                        .navigationTitle(category)
                } label: {
                    Text(category)
                }
            }
        }
    }
    
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CategoryView()
        }
    }
}
