//
//  ViewController.swift
//  oAuthApp
//
//  Created by German Tihiy on 09.06.2026.
//

import UIKit

class ViewController: UIViewController {

    override func loadView() {
        super.loadView()
        self.view = createContentView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func createContentView() -> UIView {
        let contentView = ContentView(frame: view.frame)
        return contentView
    }
}

#Preview {
    ViewController()
}

