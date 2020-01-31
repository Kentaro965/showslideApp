//
//  BigImageViewController.swift
//  timer
//
//  Created by ShibayamaKentaro on 2020/01/30.
//  Copyright © 2020 ShibayamaKentaro. All rights reserved.
//

import UIKit

class BigImageViewController: UIViewController {

     let photo = UIImage(named: "eto_nezumi_kakizome")
       let photo2 = UIImage(named: "eto_nezumi_kamifubuki")
       let photo3 = UIImage(named: "pyoko_kotatsu_kagamimochi-2")
       lazy var imagephotos: [UIImage] = [photo!, photo2!, photo3!]
       
    
    @IBOutlet weak var ImageBig: UIImageView!
    
    var x = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
   
        
        
        ImageBig.image=imagephotos[x]
        
    
    
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    let viewController:ViewController=segue.destination as! ViewController
        
        viewController.timer_sec=x
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
