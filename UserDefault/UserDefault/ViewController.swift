//
//  ViewController.swift
//  UserDefault
//
//  Created by Gamze Akyüz on 13.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        veri kaydı
        let d = UserDefaults.standard
        
        d.set("Ahmet", forKey: "ad")
        d.set(18, forKey: "yas")
        d.set(1.78, forKey: "boy")
        d.set(false, forKey: "medeniDurumu")
        
        let arkadasListe = ["Ali","Ece","Kemal"]
        d.set(arkadasListe, forKey: "liste")
        
        let sehirlerListe:[String:String] = ["06":"Ankara","34":"İstanbul","01":"Adana"]
        d.set(sehirlerListe, forKey: "dict")
        
//        veri okuma
        
        let ad = d.string(forKey: "ad") ?? "isim yok"
        let yas = d.integer(forKey: "yas")
        let boy = d.double(forKey: "boy")
        let medeniDurumu = d.bool(forKey: "medeniDurumu")
        
        print("Ad : \(ad)")
        print("Yaş : \(yas)")
        print("Boy : \(boy)")
        print("Medeni Durumu : \(medeniDurumu)")
        
        let liste = d.array(forKey: "liste") as? [String] ?? [String]()
        print(liste[0])
        
        let dict = d.dictionary(forKey: "dict") as? [String:String] ?? [String:String]()
        print(dict["34"]!)
        
    }


}

