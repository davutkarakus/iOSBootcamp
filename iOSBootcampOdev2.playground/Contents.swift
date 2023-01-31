import UIKit
// 1.Soru
func convertSicaklik(sicaklik : Double) -> Double{
    var convertEdilenSicaklik = (sicaklik*1.8)+32
    print(convertEdilenSicaklik)
    return convertEdilenSicaklik
}
convertSicaklik(sicaklik: 50)
convertSicaklik(sicaklik: 65.5)
convertSicaklik(sicaklik: 15)
// 2. soru
func cevreHesap(kisaKenar : Double , uzunKenar : Double){
    var cevre = kisaKenar*2+uzunKenar*2
    print(cevre)
}
cevreHesap(kisaKenar: 5, uzunKenar: 10)
cevreHesap(kisaKenar: 11.1, uzunKenar: 12.3)
cevreHesap(kisaKenar: 3, uzunKenar: 15)
// 3. soru
func faktoriyelHesap(sayi : Int) -> Int{
    var toplamSayi = 1
    if sayi == 0 {
        print("1")
        return 1
    }else {
        for i in 1 ... sayi{
            toplamSayi = i * toplamSayi
        }
    }
    print(toplamSayi)
    return toplamSayi
}
faktoriyelHesap(sayi: 3)
faktoriyelHesap(sayi: 5)
faktoriyelHesap(sayi: 0)
faktoriyelHesap(sayi: 1)
// 4. soru
func kacAdetAHarfi(kelime : String){
    var sayac = 0
    for i in kelime{
        if (i == "a"){
            sayac += 1
        }
    }
    print(sayac)
}
kacAdetAHarfi(kelime: "ahmet")
kacAdetAHarfi(kelime: "mehmet")
kacAdetAHarfi(kelime: "abdullah")
// 5.soru
func icAciToplami(kenarSayisi : Int) -> Int{
    var toplamİcAci = (kenarSayisi-2) * 180
    print(toplamİcAci)
    return toplamİcAci
}
icAciToplami(kenarSayisi: 5)
icAciToplami(kenarSayisi: 7)
icAciToplami(kenarSayisi: 3)
// 6. soru
func maasHesabi (gunSayisi : Int) -> Int{
    var toplamMaas = 0
    if (gunSayisi * 8 > 160) {
        var normalUcret = 160 * 10
        var mesaiUcret = ((gunSayisi*8)-160) * 20
        toplamMaas = normalUcret + mesaiUcret
        print(toplamMaas)
        return toplamMaas
    }
    else {
        toplamMaas = (gunSayisi * 8) * 10
        print(toplamMaas)
        return toplamMaas
    }
}

maasHesabi(gunSayisi: 10)
maasHesabi(gunSayisi: 20)
maasHesabi(gunSayisi: 25)
// 7.soru
func kotayaGoreUcret(kota : Int) -> Int {
    if (kota > 50) {
        var normalUcret = 100
        var kotaAsimi = (kota-50) * 4
        print(String(normalUcret+kotaAsimi))
        return normalUcret+kotaAsimi
    }else {
        print(100)
        return 100 ;
    }
}

kotayaGoreUcret(kota: 30)
kotayaGoreUcret(kota: 51)
kotayaGoreUcret(kota: 60)
