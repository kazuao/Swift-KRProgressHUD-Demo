//
//  ViewController.swift
//  KRProgressHUD-Demo
//
//  Created by k-aoki on 2021/08/19.
//

import UIKit
import KRProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateStyle()
        
        shortProgress()
    }

    func shortProgress() {
        
//        KRProgressHUD.show()
        KRProgressHUD.show(withMessage: "loading", completion: {
            print("complete")
        })
        
        // ViewController上に表示したい場合
//        KRProgressHUD.showOn(ViewController).show()
        
        // 閉じる前にステータスを出すことができる
//　　　　KRProgressHUD.showSuccess()
//        KRProgressHUD.showInfo()
//        KRProgressHUD.showWarning()x
//        KRProgressHUD.showError()
//        KRProgressHUD.showImage(/* image set */)
        
        // メッセージだけのHUD
//        KRProgressHUD.showMessage("メッセージ")
        
        // HUDのメッセージ更新
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
//            KRProgressHUD.update(message: "20%")
//        }
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            
            KRProgressHUD.dismiss()
        }
    }
    
    func updateStyle() {
        // HUDスタイル
        KRProgressHUD.set(style: .white)
        // マスクタイプ
        KRProgressHUD.set(maskType: .black)
        // インジケータのグラデーションカラー
        KRProgressHUD.set(activityIndicatorViewColors: [.red, .lightGray])
        // ラベルのフォント
        KRProgressHUD.set(font: UIFont.systemFont(ofSize: 20))
        // HUDのoffset
        KRProgressHUD.set(viewOffset: 10.0)
        // 表示時間
        KRProgressHUD.set(duration: 1.0)
    }
}

