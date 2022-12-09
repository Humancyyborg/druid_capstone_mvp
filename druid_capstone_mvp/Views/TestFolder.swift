//
//  TestFolder.swift
//  druid_capstone_mvp
//
//  Created by Daniel Kalu on 12/8/22.
//


import SwiftUI

struct TestView: View {
    @ObservedObject var sign = VisionObjectRecognitionViewController()
    //@StateObject var sign = VisionObjectRecognitionViewController()
            
    var body: some View {
        //SwiftUIViewController(identifier: showStopSign)
        Text("True")
            .background(Color.blue)
            .opacity(sign.showStopSign ? 0 : 1)
    }
}


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
