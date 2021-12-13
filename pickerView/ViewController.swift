//
//  ViewController.swift
//  pickerView
//
//  Created by Berat Yavuz on 13.12.2021.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var labelSonuc: UILabel!
    var secilenUlke:String?
    var Ulkeler:[String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
       Ulkeler = ["Almanya", "Meksika","İspanya","Rusya","Amerika"]
        pickerView.delegate = self
        pickerView.dataSource = self
    }
    //sütun sayısı
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
//içerisindeki eleman sayısı
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Ulkeler.count
    }
    //Her elemanın başlığı için
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Ulkeler[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelSonuc.text = Ulkeler[row]
        secilenUlke = Ulkeler[row]
    }
    @IBAction func goster(_ sender: Any) {
        print(secilenUlke!)
    }
}

