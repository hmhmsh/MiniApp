//
//  HomeViewController.swift
//  
//
//  Created by hmhm on 2021/09/22.
//

import SwiftUI
import UIKit

public final class HomeViewController: UIViewController {
    public static var instance: HomeViewController {
        UIStoryboard(name: "Home", bundle: .module).instantiateInitialViewController()!
    }
}

struct HomeViewControllerPreviews: PreviewProvider {
    static var previews: some View {
        return UIViewRepresented { _ in
            HomeViewController.instance.view
        }
    }
}

struct UIViewRepresented<UIViewType>: UIViewRepresentable where UIViewType: UIView {
    let makeUIView: (Context) -> UIViewType
    let updateUIView: (UIViewType, Context) -> Void = { _, _ in }

    func makeUIView(context: Context) -> UIViewType {
        self.makeUIView(context)
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        self.updateUIView(uiView, context)
    }
}
