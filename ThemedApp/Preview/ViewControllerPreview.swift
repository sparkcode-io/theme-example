//
//  ViewControllerPreview.swift
//  ThemedApp
//
//  Created by Sparkcode on 4/30/21.
//

import SwiftUI

struct ViewControllerPreview<T: UIViewController>: UIViewControllerRepresentable {
    
    let viewController: T
    
    init(
        viewController: T,
        config: ((T) -> Void)? = nil
    ) {
        self.viewController = viewController
        config?(viewController)
    }
    
    init(
        storyboard: UIStoryboard,
        vcId: String,
        config: ((T) -> Void)? = nil
    ) {
        guard let vc = storyboard.instantiateViewController(withIdentifier: vcId) as? T else {
            fatalError("Unable to load view controller for id: \(vcId)")
        }
        self.init(viewController: vc, config: config)
    }
    
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // no-op
    }
}
