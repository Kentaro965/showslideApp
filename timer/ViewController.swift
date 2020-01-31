//
//  ViewController.swift
//  timer
//
//  Created by ShibayamaKentaro on 2020/01/26.
//  Copyright © 2020 ShibayamaKentaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // タイマー
    var timer: Timer!
    
    // タイマー用の時間のための変数
    var timer_sec: Int = 0
    
    @IBOutlet var Image: UIImageView!
    
    @IBAction func startandstop(_ sender: Any) {
        // 再生ボタンを押すとタイマー作成、始動
        change2.isHidden=true
        return2.isHidden=true
    startandstoplabel.setTitle("停止",for: .normal)
        if self.timer == nil
        { self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        }
        else {
            self.timer.invalidate()
            self.timer = nil
            change2.isHidden=false
            return2.isHidden=false
            startandstoplabel.setTitle("再生", for: .normal)
        }
        
    }
    
    
    @IBOutlet weak var startandstoplabel: UIButton!
    
    
    @IBAction func change(_ sender: Any) {
        if timer_sec != 2&&timer==nil
        {
            timer_sec += 1
        }
        else if timer==nil{
            timer_sec = 0
        }
         Image.image = imagephotos[timer_sec]
    }
    @IBOutlet weak var change2: UIButton!
    
    
    @IBAction func `return`(_ sender: Any) {
        if timer_sec != 0&&timer==nil        {
            timer_sec -= 1
        }
        else if timer==nil{
            timer_sec = 2
        }
        Image.image = imagephotos[timer_sec]
    }
    
    @IBOutlet weak var return2: UIButton!
    
    
    let photo = UIImage(named: "eto_nezumi_kakizome")
    let photo2 = UIImage(named: "eto_nezumi_kamifubuki")
    let photo3 = UIImage(named: "pyoko_kotatsu_kagamimochi-2")
    lazy var imagephotos: [UIImage] = [photo!, photo2!, photo3!]
    
    
     
    @IBAction func tapAction(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    
        Image.image=imagephotos[timer_sec]
    
    }
    
    
    
    // selector: #selector(updatetimer(_:)) で指定された関数
    // timeInterval: 0.1, repeats: true で指定された通り、0.1秒毎に呼び出され続ける
    @objc func updateTimer(_ timer: Timer) {
        if timer_sec != 2{
            
            self.timer_sec += 1}
        else{self.timer_sec=0
            
        }
        Image.image = imagephotos[timer_sec]
    }

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
let bigImageViewController:BigImageViewController = segue.destination as! BigImageViewController
    
    bigImageViewController.x=timer_sec
    
    }

    @IBAction func unwind(_ segue: UIStoryboardSegue){
    
    }
    
}


