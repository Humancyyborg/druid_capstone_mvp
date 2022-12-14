//
//  DisplayView.swift
//  druid_capstone_mvp
//
//  Created by Daniel Kalu on 12/8/22.
//


import SwiftUI



struct DisplayView: View {
    @ObservedObject var locationViewModel = LocationViewModel()
    let showSpeed = UserDefaults.standard.bool(forKey: "showSpeed")
    
    var body: some View {
            HStack {
                Spacer()
                if self.showSpeed == true {
                    VStack {
                        Text("\(Int(locationViewModel.currentSpeed))")
                        .font(.system(size: 82.0))
                        .fontWeight(.regular)
                            .foregroundColor(Color(Constants.TextColours.light))
                        Text(locationViewModel.unitString)
                        .foregroundColor(Color(Constants.TextColours.light))
                        .fontWeight(.light)
                        .font(.system(size: 38.0))
                    Spacer()
                    }
                }
                Spacer()
            }
            .navigationBarHidden(true)
    }
}

struct Display_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView()
    }
}
