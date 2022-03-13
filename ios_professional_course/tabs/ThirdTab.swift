//
//  ThirdTab.swift
//  ios_professional_course
//
//  Created by Владимир Скоробогатько on 2.03.22.
//

import SwiftUI

struct TextView: UIViewRepresentable {
    @Binding var text: NSMutableAttributedString

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.backgroundColor = .red
        view.tintColor = .blue
        view.layer.cornerRadius = 24
        view.font = UIFont.systemFont(ofSize: 32)
        return view
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = text
    }
}

struct ThirdTab: View {
    
    @State private var showingSheet = false
    @State var text = NSMutableAttributedString(string: "")
    
    var body: some View {
        VStack {
            Spacer(minLength: 200)
            Button("Present modal screen") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
                print("dissmiss")
            } content: {
                Text("This is modal screen")
            }
            Spacer(minLength: 200)
            TextView(text: $text)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
    }
}

struct ThirdTab_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTab()
    }
}
