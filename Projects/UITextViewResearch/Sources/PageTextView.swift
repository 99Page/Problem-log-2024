//
//  MyUITextView.swift
//  UITextViewResearch
//
//  Created by wooyoung on 2/27/24.
//  Copyright © 2024 page. All rights reserved.
//

import SwiftUI

public struct PageTextView: UIViewRepresentable {
    
    @State private var text: String = ""
    
    
    public func makeUIView(context: Context) -> UITextView {
        let uiTextView = UITextView()
        uiTextView.text = "123123"
        uiTextView.delegate = context.coordinator
        return uiTextView
    }
    
    public func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    public func updateUIView(_ uiView: UIViewType, context: Context) {
        debugPrint("updateUIView")
        uiView.text = text
        
        let views = getFragmentViews(of: uiView)
        
        for view in views {
            debugPrint("\(view.frame.minY)")
        }
        
        if text.last == "\n" {
            debugPrint("\(views.last?.frame.maxY)")
        }
    }
    
    func getFragmentViews(of uiView: UIViewType) -> [UIView] {
        guard let uiTextContainerVIew = uiView.subviews.first(where: { uiView in
            let typeName = String(describing: type(of: uiView))
            return typeName == "_UITextContainerView"
        }) else { return [] }
        
        
        guard let uiTextLayoutCanvasView = uiTextContainerVIew.subviews.first(where: { uiView in
            String(describing: type(of: uiView)) == "_UITextLayoutCanvasView"
        }) else { return [] }
        
        let result = uiTextLayoutCanvasView.subviews
        return result
    }
}

extension PageTextView {
    public class Coordinator: NSObject, UITextViewDelegate {
        let parent: PageTextView
        
        init(parent: PageTextView) {
            self.parent = parent
        }
        
        
        public func textViewDidChange(_ textView: UITextView) {
            debugPrint(textView.text)
            parent.text = textView.text
        }
    }
    
}
