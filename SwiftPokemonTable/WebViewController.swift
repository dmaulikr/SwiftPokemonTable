//
//  WebViewController.swift
//  SwiftPokemonTable
//
//  Created by Yoshiki Nishioka on 2017/08/05.
//  Copyright © 2017年 Yoshiki Nishioka. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://google.co.jp")
        
        let requestURL = URLRequest(url: url!)
        
        webView.loadRequest(requestURL)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    

}
