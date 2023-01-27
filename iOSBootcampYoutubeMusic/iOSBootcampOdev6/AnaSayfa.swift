//
//  ViewController.swift
//  iOSBootcampOdev6
//
//  Created by Davut Karakuş on 25.01.2023.
//

import UIKit

class AnaSayfa: UIViewController {
    @IBOutlet var backgroundGradientView: UIView!
    @IBOutlet weak var enerjiButton: UIButton!
    @IBOutlet weak var rahatlamaButton: UIButton!
    @IBOutlet weak var sporButton: UIButton!
    @IBOutlet weak var odaklanmaButton: UIButton!
    @IBOutlet weak var isEvButton: UIButton!
    @IBOutlet weak var logo: UIBarButtonItem!
    @IBOutlet weak var sarkiCollectionView: UICollectionView!
    @IBOutlet weak var digerButton: UIButton!
    @IBOutlet weak var sarki2CollectionView: UICollectionView!
    @IBOutlet weak var sarki3CollectionView: UICollectionView!
    
    var sarkiListesi = [Sarki]()
    var sarkiListesi2 = [Sarki2]()
    var sarkiListesi3 = [Sarki]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sarkilarListesiBir()
        sarkilarListesiIki()
        sarkilarListesiUc()
        
        tabBarStyle()
        
        sarkiCollectionView.backgroundColor = UIColor.clear
        sarkiCollectionView.delegate = self
        sarkiCollectionView.dataSource = self
        
        sarki2CollectionView.backgroundColor = UIColor.clear
        sarki2CollectionView.delegate = self
        sarki2CollectionView.dataSource = self
        
        sarki3CollectionView.backgroundColor = UIColor.clear
        sarki3CollectionView.delegate = self
        sarki3CollectionView.dataSource = self
        
        buttonStyle(button: enerjiButton)
        buttonStyle(button: rahatlamaButton)
        buttonStyle(button: isEvButton)
        buttonStyle(button: odaklanmaButton)
        buttonStyle(button: sporButton)
        buttonStyle(button: digerButton)
       
        setBackGroundColor()
        
        collectionViewTasarim()
        collectionViewTasarim2()
        collectionViewTasarim3()
    }
    
    func sarkilarListesiUc(){
        let s1 = Sarki(sarkiId: 1, sarkiAd: "Ya Bu İşler Ne", sarkiSanatci: "Mabel Matiz", sarkiFotograf: "mabelMatiz")
        let s2 = Sarki(sarkiId: 2, sarkiAd: "Gönül Davası", sarkiSanatci: "Emir Can İğrek", sarkiFotograf: "beyaz")
        let s3 = Sarki(sarkiId: 3, sarkiAd: "Toy", sarkiSanatci: "Mabel Matiz", sarkiFotograf: "toy")
        let s4 = Sarki(sarkiId: 4, sarkiAd: "Baller los", sarkiSanatci: "MERO", sarkiFotograf: "ballerLos")
        let s5 = Sarki(sarkiId: 5, sarkiAd: "Bir Gün Her Şey", sarkiSanatci: "Gazapizm", sarkiFotograf: "birGun")
        sarkiListesi3.append(s1)
        sarkiListesi3.append(s2)
        sarkiListesi3.append(s3)
        sarkiListesi3.append(s4)
        sarkiListesi3.append(s5)
    }
    func sarkilarListesiIki() {
        let s1 = Sarki2(sarkiId: 1, sarkiAd: "Bilmem Mi?", sarkiFotograf: "bilmemMi")
        let s2 = Sarki2(sarkiId: 2, sarkiAd: "Bilir O Beni", sarkiFotograf: "bilirOBeni")
        let s3 = Sarki2(sarkiId: 3, sarkiAd: "Elastic Heart", sarkiFotograf: "elasticHeart")
        let s4 = Sarki2(sarkiId: 4, sarkiAd: "Dalgın", sarkiFotograf: "dalgin")
        let s5 = Sarki2(sarkiId: 5, sarkiAd: "Deli Kan", sarkiFotograf: "deliKan")
        let s6 = Sarki2(sarkiId: 6, sarkiAd: "Affettim", sarkiFotograf: "affettim")
        let s7 = Sarki2(sarkiId: 7, sarkiAd: "Franco", sarkiFotograf: "franco")
        let s8 = Sarki2(sarkiId: 8, sarkiAd: "Thunder", sarkiFotograf: "thunder")
        let s9 = Sarki2(sarkiId: 9, sarkiAd: "Sanki Bir Halkın", sarkiFotograf: "sankiBirHalkin")
        let s10 = Sarki2(sarkiId: 10, sarkiAd: "Konum Gizli", sarkiFotograf: "konumGizli")
        let s11 = Sarki2(sarkiId: 11, sarkiAd: "Belki", sarkiFotograf: "belki")
        let s12 = Sarki2(sarkiId: 12, sarkiAd: "Dursun Zaman", sarkiFotograf: "dursunZaman")
        sarkiListesi2.append(s1)
        sarkiListesi2.append(s2)
        sarkiListesi2.append(s3)
        sarkiListesi2.append(s4)
        sarkiListesi2.append(s5)
        sarkiListesi2.append(s6)
        sarkiListesi2.append(s7)
        sarkiListesi2.append(s8)
        sarkiListesi2.append(s9)
        sarkiListesi2.append(s10)
        sarkiListesi2.append(s11)
        sarkiListesi2.append(s12)
    }
    func setBackGroundColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [ #colorLiteral(red: 0.4431372549, green: 0.2266783422, blue: 0.1289114401, alpha: 1).cgColor,UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0).cgColor]
              backgroundGradientView.layer.insertSublayer(gradientLayer, at: 0)
                let appearance = UINavigationBarAppearance()
                appearance.configureWithOpaqueBackground()
                appearance.backgroundColor = .clear
                appearance.shadowColor = UIColor.clear
                navigationController?.navigationBar.standardAppearance = appearance;
                navigationController?.navigationBar.scrollEdgeAppearance = navigationController?.navigationBar.standardAppearance
        
    }
    func tabBarStyle(){
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor(named: "tabBackground")
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }
    func sarkilarListesiBir (){
        let s1 = Sarki(sarkiId: 1, sarkiAd: "Olur Mu", sarkiSanatci: "Gazapizm ve Melike Şahin", sarkiFotograf: "gazapizm")
        let s2 = Sarki(sarkiId: 2, sarkiAd: "Boyalı Da Saçların", sarkiSanatci: "Mabel Matiz", sarkiFotograf: "mabelMatiz")
        let s3 = Sarki(sarkiId: 3, sarkiAd: "Bones", sarkiSanatci: "Imagine Dragons", sarkiFotograf: "imagineDragons")
        let s4 = Sarki(sarkiId: 4, sarkiAd: "Çocuk", sarkiSanatci: "Yener Çevik", sarkiFotograf: "yener")
        let s5 = Sarki(sarkiId: 5, sarkiAd: "Beyaz", sarkiSanatci: "Emir Can İğrek", sarkiFotograf: "beyaz")
        let s6 = Sarki(sarkiId: 6, sarkiAd: "Dip", sarkiSanatci: "Madrigal", sarkiFotograf: "dip")
        let s7 = Sarki(sarkiId: 7, sarkiAd: "Bizim Hikaye", sarkiSanatci: "Çağatay Akman", sarkiFotograf: "bizimHikaye")
        let s8 = Sarki(sarkiId: 8 ,sarkiAd: "Titanium (feat. Sia)", sarkiSanatci: "David Guetta", sarkiFotograf: "titanium")
       
        sarkiListesi.append(s1)
        sarkiListesi.append(s2)
        sarkiListesi.append(s3)
        sarkiListesi.append(s4)
        sarkiListesi.append(s5)
        sarkiListesi.append(s6)
        sarkiListesi.append(s7)
        sarkiListesi.append(s8)
    }
    func collectionViewTasarim3(){
        let tasarim = UICollectionViewFlowLayout()
        tasarim.scrollDirection = .horizontal
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 0
        let hucreGenisligi = sarki3CollectionView.bounds.width
        print(hucreGenisligi)
        let hucreUzunlugu = sarki3CollectionView.bounds.height
        print(hucreUzunlugu)
        tasarim.itemSize = CGSizeMake(hucreGenisligi/2.2, hucreUzunlugu)
        sarki3CollectionView.collectionViewLayout = tasarim
    }
    func collectionViewTasarim2() {
        let tasarim = UICollectionViewFlowLayout()
        tasarim.scrollDirection = .horizontal
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarim.minimumInteritemSpacing = 0
        tasarim.minimumLineSpacing = 0
        let hucreGenisligi = sarki2CollectionView.bounds.width
        let hucreUzunlugu = (sarki2CollectionView.bounds.height - 10) / 2
        tasarim.itemSize = CGSize(width: hucreGenisligi/3.4, height: hucreUzunlugu )
        sarki2CollectionView.collectionViewLayout = tasarim
    }
    func collectionViewTasarim(){
        let tasarim = UICollectionViewFlowLayout()
        tasarim.scrollDirection = .horizontal
        tasarim.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        tasarim.minimumInteritemSpacing = 0 // yatay
        tasarim.minimumLineSpacing = 0 // dikey
        let hucreGenisligi = sarkiCollectionView.bounds.width - 35
        let hucreUzunlugu = (sarkiCollectionView.bounds.height - 30)/4
        tasarim.itemSize = CGSize(width: hucreGenisligi, height: hucreUzunlugu)
        sarkiCollectionView.collectionViewLayout = tasarim
    }
    func renkDegistir(itemAppearance:UITabBarItemAppearance){
        // SEÇİLİ DURUM
        itemAppearance.selected.iconColor = .white
        itemAppearance.selected.titleTextAttributes = [.foregroundColor:UIColor.white]
        // seçili olmayan durum
        itemAppearance.normal.iconColor = .white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor:UIColor.white]
    }
    func buttonStyle(button:UIButton) {
        if button == digerButton {
            digerButton.layer.backgroundColor = UIColor.clear.cgColor
            digerButton.layer.cornerRadius = 15
            digerButton.layer.borderWidth = 0.4
            digerButton.layer.borderColor = UIColor.darkGray.cgColor
        }else {
            button.layer.borderColor = UIColor.lightGray.cgColor
            button.layer.borderWidth = 0.3
            button.layer.backgroundColor = #colorLiteral(red: 0.4431372549, green: 0.2266783422, blue: 0.1289114401, alpha: 1).cgColor
            button.layer.cornerRadius = 5
        }
       
       
    }
}
extension AnaSayfa : UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.sarkiCollectionView {
            return sarkiListesi.count
        }else if collectionView == self.sarki2CollectionView{
            return sarkiListesi2.count
        }else {
            return sarkiListesi3.count
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.sarkiCollectionView {
            let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "sarkiHucre", for: indexPath) as! SarkiCollectionViewCell
            let sarki = sarkiListesi[indexPath.row]
            hucre.sarkiAdLabel.text = sarki.sarkiAd
            hucre.sarkiSanatciLabel.text = sarki.sarkiSanatci
            hucre.sarkiFotografImage.image = UIImage(named: sarki.sarkiFotograf!)
            hucre.sarkiFotografImage.layer.cornerRadius = 3
            return hucre
        }
        else if collectionView == self.sarki2CollectionView{
            let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "sarkiHucre2", for: indexPath) as! Sarki2CollectionViewCell
            let sarki = sarkiListesi2[indexPath.row]
            hucre.sarkiAdLabel.text = sarki.sarkiAd
            hucre.sarkiImageView.image = UIImage(named: sarki.sarkiFotograf!)
            return hucre
        }else {
            let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "sarkiHucre3", for: indexPath) as! Sarki3CollectionViewCell
            let sarki = sarkiListesi3[indexPath.row]
            hucre.sarkiAdLabel.text = sarki.sarkiAd
            hucre.sarkiSanatciLabel.text = sarki.sarkiSanatci
            hucre.sarkiFotografImage.image = UIImage(named: sarki.sarkiFotograf!)
            
            return hucre
        }
    }
}

