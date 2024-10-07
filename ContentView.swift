//
//  ContentView.swift
//  Spline3DApp
//
//  Created by Kamrin Bains on 4/2/24.
//
import SplineRuntime
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // 3d
            Header()
                .frame(height: 750)
            VStack(spacing: 12)
            {
                Text("Welcome")
                    .bold()
                Button("Get Started")
                {}
            }
            Spacer()
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    ContentView()
}


struct Header: View {
    var body: some View {
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/H2eT08hFNycKT93ZknFI/scene.splineswift")!

        // // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        try? SplineView(sceneFileURL: url)
    }
}
