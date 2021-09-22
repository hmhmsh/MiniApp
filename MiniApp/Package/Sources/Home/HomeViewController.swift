//
//  HomeViewController.swift
//  
//
//  Created by hmhm on 2021/09/22.
//

import UIKit

public class HomeViewController: UIViewController {
    public static var instance: HomeViewController {
        UIStoryboard(name: "Home", bundle: .module).instantiateInitialViewController()!
    }
}

