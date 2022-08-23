//
//  ContentView.swift
//  SystemSoundList
//
//  Created by 蘇健豪 on 2022/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            CategoryView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
