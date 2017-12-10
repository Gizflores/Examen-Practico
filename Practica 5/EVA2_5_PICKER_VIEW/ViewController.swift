//
//  ViewController.swift
//  EVA2_5_PICKER_VIEW
//
//  Created by TEMPORAL2 on 19/10/17.
//  Copyright © 2017 TEMPORAL2. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var editText: UITextField!
    
    @IBAction func ActivadorBoton(_ sender: Any) {
        
        
        if (b1 && b2 && b3 == true && User == editText.text) {
            if (User == editText.text ){
            performSegue(withIdentifier: "cambio" , sender: self)
            let alert = UIAlertController(title: "Success - "  + User + " Bienvenido" , message: "Contraseña Correcta", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
             
                
                                    }
            else{
                
                let alert = UIAlertController(title: "Usuario incorrecto", message: "Intente nuevamente", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
        }
        
        if ( (b1 || b2 || b3 == false) ||  (User == "")) {
            let alert = UIAlertController(title: "Fail", message: "La contraseña es incorrecta o no ingreso usuario", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        }
        
    
    @IBOutlet weak var textlabel: UILabel!
    var x = "1"
    var y = "2"
    var z = "3"
    var User = "Diego"
    var b1 = false
    var b2 = false
    var b3 = false
    let aDias = ["0","1","2","3","4","5","6","7","8","9"]
    let aNumero1 = ["0","1","2","3","4","5","6","7","8","9"]
    let aNumero2 = ["0","1","2","3","4","5","6","7","8","9"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (component == 0) {
            return aDias.count
        }
        if (component == 2) {
            return aNumero1.count
        }
        return aNumero2.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (component == 0) {
            return aDias[row]
        }
        if (component == 1) {
            return aNumero1[row]
        }
        return aNumero2[row]
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        if (component == 0) {
           textlabel.text = aDias[row]
            
            if (x == aDias[row]) {
                
                b1=true
                textlabel.text = "Primer digito correcto"
            
        }
            if(x != aDias[row]){
                b1=false
            }
        }
        if (component == 1) {
            textlabel.text = aNumero1[row]
            
            if (y == aNumero1[row]) {
                
                b2=true
                textlabel.text = "Segundo digito correcto"
        }
            if(y != aDias[row]){
                b2=false
            }
        }
       if (component == 2) {
            textlabel.text = aNumero2[row]
                
            if (z == aNumero2[row]) {
                    
                b3=true
                textlabel.text = "Tercer digito correcto"
            
        }
            if(z != aDias[row]){
                b3=false
        }
        
            }
        }

}
