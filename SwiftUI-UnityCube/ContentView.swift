//
//  ContentView.swift
//  SwiftUI-UnityCube
//
//  Created by mr_analogman on 15.11.2021.
//

import SwiftUI

struct UnityViewController: UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
    
    func makeUIViewController(context _: Context) -> UIViewController {
        let vc = UIViewController()
        let unity = UnityBridge.getInstance()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    unity.show(controller: vc)
        }
        return vc
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            UnityViewController()
            Text("This Unity is launched by SwiftUI!")
                .padding()
                .font(.title)
                .background(Color(.darkGray))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .frame(width: 295)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
