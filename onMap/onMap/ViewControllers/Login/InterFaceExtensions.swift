//
//  InterFaceExtensions.swift
//  onMap
//
//  Created by Екатерина on 02/01/2020.
//  Copyright © 2020 onMap. All rights reserved.
//

import Foundation
import UIKit
extension UILabel{
    func setUpLabel(text: String, color: UIColor, textSize: CGFloat, y: CGFloat){
        self.text = text
        self.textAlignment = .center
        self.textColor = color
        self.font = UIFont(name:Const.fontName, size: textSize)
        let logoWidth = UIScreen.main.bounds.width
        let logoHeight = textSize
        self.frame = CGRect(x: 0, y: y, width: logoWidth, height: logoHeight)
    }
    func setUpLabelWithX(text: String, color: UIColor, textSize: CGFloat, y: CGFloat, x: CGFloat, align: Character, width: CGFloat){
        self.text = text
        switch align {
        case "c":
            self.textAlignment = .center
        case "l":
            self.textAlignment = .left
        case "r":
            self.textAlignment = .right
        default:
            self.textAlignment = .center
        }
        self.textColor = color
        self.font = UIFont(name:"TimesNewRoman", size: textSize)
        let logoHeight = textSize
        self.frame = CGRect(x: x, y: y, width: width, height: logoHeight)
    }
    func workWithPhone(phone: String) -> String{
        if phone == "" {
            return ""
        }
        var st: Array<Character> = []
        var kPhone = 0
        for i in phone{
            if i != "+" && kPhone == 0{
                st.append("+")
            }
            if i != " " && i != "-" && i != ")" && i != "("{
                st.append(i)
            }

            kPhone += 1
        }
        var newPhone = ""
        for i in 1...st.count{
            if i == 3 {newPhone += " ("}
            if i == 6 {newPhone += ") "}
            if i == 9 {newPhone += "-"}
            if i == 11 {newPhone += "-"}
            newPhone += String(st[i-1])
            
        }
        return newPhone
    }
}

extension UIButton{
    func setUpButton(text: String, colorText: UIColor, colorBack: UIColor, textSize: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat){
        self.setTitle(text, for: .normal)
        self.backgroundColor = colorBack
        self.setTitleColor(colorText, for: .normal)
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.font = UIFont(name:Const.fontName, size: textSize)
        self.frame = CGRect(x:  UIScreen.main.bounds.width/2-width/2, y: y, width: width, height: height)
        self.layer.cornerRadius = UIScreen.main.bounds.width/16

    }
    func setUpButtonWithX(text: String, colorText: UIColor, colorBack: UIColor, x:CGFloat, textSize: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, borderColor: CGColor, borderWidth: CGFloat){
        self.setTitle(text, for: .normal)
        self.backgroundColor = colorBack
        self.setTitleColor(colorText, for: .normal)
        self.titleLabel?.textAlignment = .center
        self.titleLabel?.font = UIFont(name:Const.fontName, size: textSize)
        self.frame = CGRect(x: x, y: y, width: width, height: height)
        self.layer.cornerRadius = UIScreen.main.bounds.width/16
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth

    }
    func setUpAccountButton(text: String, colorText: UIColor, colorBack: UIColor, textSize: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat){
           
           self.setTitle(text, for: .normal)
           self.backgroundColor = colorBack
           self.setTitleColor(colorText, for: .normal)
           self.titleLabel?.textAlignment = .center
           self.titleLabel?.font = UIFont(name:"TimesNewRoman", size: textSize)
           self.frame = CGRect(x:  UIScreen.main.bounds.width/2-width/2, y: y, width: width, height: height)
           self.layer.cornerRadius = UIScreen.main.bounds.width/16

       }

}
extension UITextField{
    func setUpPhoneTextField(width: CGFloat, height: CGFloat, textSize: CGFloat, colorText: UIColor, colorBack: UIColor, y: CGFloat){
        self.text = ""
        self.placeholder = "+7 (123) 456-78-99"
        self.frame = CGRect(x: UIScreen.main.bounds.width/2-width/2, y: y, width: width, height: height)
        self.backgroundColor = colorBack
        self.textColor = colorText
        self.font = UIFont(name:"TimesNewRoman", size: textSize)
        self.layer.cornerRadius = UIScreen.main.bounds.width/25
        self.textAlignment  = .center
        self.layer.borderWidth = 0
    }
    
    func setUpAnyTextField(width: CGFloat, height: CGFloat, textSize: CGFloat, colorText: UIColor, colorBack: UIColor, y: CGFloat, placeholder: String, strokeColor: UIColor){
        self.text = ""
        self.frame = CGRect(x: UIScreen.main.bounds.width/2-width/2, y: y, width: width, height: height)
        self.placeholder = placeholder
        self.backgroundColor = colorBack
        self.textColor = colorText
        self.font = UIFont(name:"TimesNewRoman", size: textSize)
        self.layer.cornerRadius = UIScreen.main.bounds.width/25
        self.textAlignment  = .center
        self.layer.borderWidth = 0
    }
    func setUpAccountPhoneTextField(width: CGFloat, height: CGFloat, textSize: CGFloat, colorText: UIColor, colorBack: UIColor, y: CGFloat, x: CGFloat, placeholder: String){
        self.text = ""
        self.placeholder = placeholder
        self.frame = CGRect(x: UIScreen.main.bounds.width/2-width/2, y: y, width: width, height: height)
        self.backgroundColor = colorBack
        self.textColor = colorText
        self.font = UIFont(name:"TimesNewRoman", size: textSize)
        self.layer.cornerRadius = UIScreen.main.bounds.width/25
        self.textAlignment  = .left
        self.layer.borderWidth = 0
    }
    func setUpAccountTextField(width: CGFloat, height: CGFloat, textSize: CGFloat, colorText: UIColor, colorBack: UIColor, y: CGFloat, placeholder: String, strokeColor: UIColor, x: CGFloat){
           self.text = ""
           self.frame = CGRect(x: x, y: y, width: width, height: height)
           self.placeholder = placeholder
           self.backgroundColor = colorBack
           self.textColor = colorText
           self.font = UIFont(name:"TimesNewRoman", size: textSize)
           self.layer.borderWidth = 0
       }
    func getRealPhone(phone:String)->String{
        if phone == ""{
            return ""
        }
        var st: Array<Character> = []
        var kPhone = 0
        for i in phone{
            if i != "+" && kPhone == 0{
                st.append("+")
            }
            if i != " " && i != "-" && i != ")" && i != "("{
                st.append(i)
            }

            kPhone += 1
        }
        var newPhone = ""
        for i in 1...st.count{
            newPhone += String(st[i-1])
            
        }
        return newPhone
        
    }
    func workWithPhone(phone: String) -> String{
        var st: Array<Character> = []
        var kPhone = 0
        for i in phone{
            if i != "+" && kPhone == 0{
                st.append("+")
            }
            if i != " " && i != "-" && i != ")" && i != "("{
                st.append(i)
            }

            kPhone += 1
        }
        var newPhone = ""
        for i in 1...st.count{
            if i == 3 {newPhone += " ("}
            if i == 6 {newPhone += ") "}
            if i == 9 {newPhone += "-"}
            if i == 11 {newPhone += "-"}
            newPhone += String(st[i-1])
            
        }
        return newPhone
    }
}

extension PhoneAuthViewContoller: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if (textField.returnKeyType == UIReturnKeyType.next){
            let nextTage=textField.tag+1;
            let nextResponder=textField.superview?.viewWithTag(nextTage) as UIResponder?
            if (nextResponder != nil){
                nextResponder?.becomeFirstResponder()
            }
            else{
                textField.resignFirstResponder()
            }
            return true
        }
        return true
    }
    
}
extension LoginViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField.returnKeyType == UIReturnKeyType.next){
            let nextTage=textField.tag+1;
            let nextResponder=textField.superview?.viewWithTag(nextTage) as UIResponder?
            if (nextResponder != nil){
                nextResponder?.becomeFirstResponder()
            }
            else{
                textField.resignFirstResponder()
            }
            return true
        }
        return true
    }
    
}
