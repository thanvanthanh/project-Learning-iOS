//
//  ViewController.swift
//  Calculator
//
//  Created by Thân Văn Thanh on 3/30/21.
//

import UIKit

class ViewController: UIViewController {
    
    var so1:Float!
    var so2:Float!
    var dau:String!
    
    let topView : UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 0.38, green: 0.39, blue: 0.44, alpha: 1)
        
        
        
    return view
    }()
    
    let viewText : UILabel = {
        let label = UILabel ()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textAlignment = .right
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 100)
        
        
        return label
    
    }()
    
    let numC : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "c"), for: .normal)
        return bt
    }()
    let numM : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "m+-"), for: .normal)
        return bt
    }()
    let numPercent : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "%"), for: .normal)
        return bt
    }()
    let numDivisor : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: ":"), for: .normal)
        return bt
    }()
    let num7 : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "7"), for: .normal)
        return bt
    }()
    let num8 : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "8"), for: .normal)
        return bt
    }()
    let num9 : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "9"), for: .normal)
        return bt
    }()
    let numMutiply : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "*"), for: .normal)
        return bt
    }()
    let num4 : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "4"), for: .normal)
        return bt
    }()
    let num5 : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "5"), for: .normal)
        return bt
    }()
    let num6 : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "6"), for: .normal)
        return bt
    }()
    let numMinus : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "-"), for: .normal)
        return bt
    }()
    let num1 : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "1"), for: .normal)
        return bt
    }()
    let num2 : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "2"), for: .normal)
        return bt
    }()
    let num3 : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "3"), for: .normal)
        return bt
    }()
    let numPlus : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "+"), for: .normal)
        return bt
    }()
    let num0 : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setTitle("0", for: .normal)
        bt.tag = 0
        bt.setImage(UIImage(named: "0"), for: .normal)
        return bt
    }()
    let numComma : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "comma"), for: .normal)
        return bt
    }()
    let numEqual : UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        bt.setImage(UIImage(named: "="), for: .normal)
        return bt
    }()
    
    var kq : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
           // UIColor(red: 0.38, green: 0.38, blue: 0.44, alpha: 1.00)
        setupLayout()
        num0.addTarget(self, action: #selector(num0Press), for: .touchUpInside)
        num1.addTarget(self, action: #selector(num1Press), for: .touchUpInside)
        num2.addTarget(self, action: #selector(num2Press), for: .touchUpInside)
        num3.addTarget(self, action: #selector(num3Press), for: .touchUpInside)
        num4.addTarget(self, action: #selector(num4Press), for: .touchUpInside)
        num5.addTarget(self, action: #selector(num5Press), for: .touchUpInside)
        num6.addTarget(self, action: #selector(num6Press), for: .touchUpInside)
        num7.addTarget(self, action: #selector(num7Press), for: .touchUpInside)
        num8.addTarget(self, action: #selector(num8Press), for: .touchUpInside)
        num9.addTarget(self, action: #selector(num9Press), for: .touchUpInside)

        numPlus.addTarget(self, action: #selector(numPlusPress), for: .touchUpInside)
        numMinus.addTarget(self, action: #selector(numMinusPress), for: .touchUpInside)
        numMutiply.addTarget(self, action: #selector(numMutiplyPress), for: .touchUpInside)
        
        numDivisor.addTarget(self, action: #selector(numDivisorPress), for: .touchUpInside)

        numEqual.addTarget(self, action: #selector(numEqualPress), for: .touchUpInside)
        numC.addTarget(self, action: #selector(numCPress), for: .touchUpInside)
        
        numPercent.addTarget(self, action: #selector(numCommaPress), for: .touchUpInside)

        numComma.addTarget(self, action: #selector(numCommaPress), for: .touchUpInside)

        
    }
    @objc func numCPress(_ sender : UIButton) {
        
        viewText.text = ""
        }

    @objc func num0Press(_ sender : UIButton) {
        print("at")
        var kq : String = viewText.text!
        kq = kq + "0"
        viewText.text = kq
        }
    @objc func num1Press(_ sender : UIButton) {
        print("at")
        var kq : String = viewText.text!
        kq = kq + "1"
        viewText.text = kq
        }
    @objc func num2Press(_ sender : UIButton) {
        print("at")
        var kq : String = viewText.text!
        kq = kq + "2"
        viewText.text = kq
        }
    @objc func num3Press(_ sender : UIButton) {
        print("at")
        var kq : String = viewText.text!
        kq = kq + "3"
        viewText.text = kq
        }
    @objc func num4Press(_ sender : UIButton) {
        print("at")
        var kq : String = viewText.text!
        kq = kq + "4"
        viewText.text = kq
        }
    @objc func num5Press(_ sender : UIButton) {
        print("at")
        var kq : String = viewText.text!
        kq = kq + "5"
        viewText.text = kq
        }
    @objc func num6Press(_ sender : UIButton) {
        print("at")
        var kq : String = viewText.text!
        kq = kq + "6"
        viewText.text = kq
        }
    @objc func num7Press(_ sender : UIButton) {
        print("at")
        var kq : String = viewText.text!
        kq = kq + "7"
        viewText.text = kq
        }
    @objc func num8Press(_ sender : UIButton) {
        print("at")
        var kq : String = viewText.text!
        kq = kq + "8"
        viewText.text = kq
        }
    
   
    
    @objc func num9Press(_ sender : UIButton) {
        print("at")
        var kq : String = viewText.text!
        kq = kq + "9"
        viewText.text = kq
        }
    @objc func numCommaPress(_ sender : UIButton) {
        var kq : String = viewText.text!
        kq = kq + "."
        viewText.text = kq
        }
    @objc func numPlusPress(_ sender : UIButton) {
        let s1 : String = viewText.text!
        so1 = Float(s1)
        viewText.text = ""
        
        dau = "+"
        }
    
    
    @objc func numMinusPress(_ sender : UIButton) {
        let s1 : String = viewText.text!
        so1 = Float(s1)
        viewText.text = ""
        
        dau = "-"
        }
    @objc func numMutiplyPress(_ sender : UIButton) {
        let s1 : String = viewText.text!
        so1 = Float(s1)
        viewText.text = ""
        
        dau = "x"
        }
    //dau chia
    @objc func numDivisorPress(_ sender : UIButton) {
        let s1 : String = viewText.text!
        so1 = Float(s1)
        viewText.text = ""

        dau = ":"
        }
    
    //dau bang
    @objc func numEqualPress(_ sender : UIButton) {
        let s2 : String = viewText.text!
        so2 = Float(s2)
        
        var kq : Int = 0
       // var kqChia : Float = 0
        
        if dau == "+"{
            kq = Int(so1 + so2)
            }
        if dau == "-"{
            kq = Int(so1 - so2)
            }
        if dau == "x"{
            kq = Int(so1 * so2)
            }
        if dau == ":"{
            kq = Int(Float(so1 / so2))
        }
        viewText.text = String(kq)
        
    }
    // %
//    @objc func numPrersent(_ sender : UIButton) {
//        let chia : String = viewText.text!
//        var kq : Float = 0
//
//        if dau == "%" {
//            kq = Float(String(chia / 100)) ?? 0
//        }
//        viewText.text = String(kq)
//
//        }
    
    
    func setupLayout () {
        
        view.addSubview(topView)
        topView.addSubview(viewText)
        view.addSubview(numC)
        view.addSubview(numM)
        view.addSubview(numPercent)
        view.addSubview(numDivisor)
        view.addSubview(num7)
        view.addSubview(num8)
        view.addSubview(num9)
        view.addSubview(numMutiply)
        view.addSubview(num4)
        view.addSubview(num5)
        view.addSubview(num6)
        view.addSubview(numMinus)
        view.addSubview(num1)
        view.addSubview(num2)
        view.addSubview(num3)
        view.addSubview(numPlus)
        view.addSubview(num0)
        view.addSubview(numComma)
        view.addSubview(numEqual)



        
        
        
        topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        topView.centerXAnchor.constraint(equalTo: view.layoutMarginsGuide.centerXAnchor, constant: 0).isActive = true
        topView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1).isActive = true
        topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3).isActive = true
        
        viewText.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: 5).isActive = true
        viewText.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -5).isActive = true
        // numC
        numC.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 10).isActive = true
        numC.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        numC.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.25).isActive = true
        numC.heightAnchor.constraint(equalTo: numC.widthAnchor, multiplier: 1).isActive = true
        //numM
        numM.centerYAnchor.constraint(equalTo: numC.centerYAnchor, constant: 0).isActive = true
        numM.leadingAnchor.constraint(equalTo: numC.trailingAnchor, constant: 0).isActive = true
        numM.widthAnchor.constraint(equalTo: numC.heightAnchor, multiplier: 1).isActive = true
        numM.heightAnchor.constraint(equalTo: numM.widthAnchor, multiplier: 1).isActive = true
        
        //numPercent
        numPercent.centerYAnchor.constraint(equalTo: numC.centerYAnchor, constant: 0).isActive = true
        numPercent.leadingAnchor.constraint(equalTo: numM.trailingAnchor, constant: 0).isActive = true
        numPercent.widthAnchor.constraint(equalTo: numC.heightAnchor, multiplier: 1).isActive = true
        numPercent.heightAnchor.constraint(equalTo: numM.widthAnchor, multiplier: 1).isActive = true
        
        //numDivisor
        numDivisor.centerYAnchor.constraint(equalTo: numC.centerYAnchor, constant: 0).isActive = true
        numDivisor.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        numDivisor.widthAnchor.constraint(equalTo: numC.heightAnchor, multiplier: 1).isActive = true
        numDivisor.heightAnchor.constraint(equalTo: numM.widthAnchor, multiplier: 1).isActive = true
        //num7
        num7.topAnchor.constraint(equalTo: numC.bottomAnchor, constant: 0).isActive = true
        num7.centerXAnchor.constraint(equalTo: numC.centerXAnchor, constant: 0).isActive = true
        num7.widthAnchor.constraint(equalTo: numC.heightAnchor, multiplier: 1).isActive = true
        num7.heightAnchor.constraint(equalTo: num7.widthAnchor, multiplier: 1).isActive = true
        // num8
        num8.centerXAnchor.constraint(equalTo: numM.centerXAnchor, constant: 0).isActive = true
        num8.centerYAnchor.constraint(equalTo: num7.centerYAnchor, constant: 0).isActive = true
        num8.widthAnchor.constraint(equalTo: num7.heightAnchor, multiplier: 1).isActive = true
        num8.heightAnchor.constraint(equalTo: num7.widthAnchor, multiplier: 1).isActive = true
        //num9
        num9.centerXAnchor.constraint(equalTo: numPercent.centerXAnchor, constant: 0).isActive = true
        num9.centerYAnchor.constraint(equalTo: num7.centerYAnchor, constant: 0).isActive = true
        num9.widthAnchor.constraint(equalTo: num7.heightAnchor, multiplier: 1).isActive = true
        num9.heightAnchor.constraint(equalTo: num7.widthAnchor, multiplier: 1).isActive = true
        //numMutiply
        numMutiply.centerXAnchor.constraint(equalTo: numDivisor.centerXAnchor, constant: 0).isActive = true
        numMutiply.centerYAnchor.constraint(equalTo: num7.centerYAnchor, constant: 0).isActive = true
        numMutiply.widthAnchor.constraint(equalTo: num7.heightAnchor, multiplier: 1).isActive = true
        numMutiply.heightAnchor.constraint(equalTo: num7.widthAnchor, multiplier: 1).isActive = true
        
        //num4
        num4.topAnchor.constraint(equalTo: num7.bottomAnchor, constant: 0).isActive = true
        num4.centerXAnchor.constraint(equalTo: num7.centerXAnchor, constant: 0).isActive = true
        num4.widthAnchor.constraint(equalTo: num7.heightAnchor, multiplier: 1).isActive = true
        num4.heightAnchor.constraint(equalTo: num7.widthAnchor, multiplier: 1).isActive = true
        //num5
        num5.centerXAnchor.constraint(equalTo: numM.centerXAnchor, constant: 0).isActive = true
        num5.centerYAnchor.constraint(equalTo: num4.centerYAnchor, constant: 0).isActive = true
        num5.widthAnchor.constraint(equalTo: num4.heightAnchor, multiplier: 1).isActive = true
        num5.heightAnchor.constraint(equalTo: num4.widthAnchor, multiplier: 1).isActive = true
        //num6
        num6.centerXAnchor.constraint(equalTo: num9.centerXAnchor, constant: 0).isActive = true
        num6.centerYAnchor.constraint(equalTo: num4.centerYAnchor, constant: 0).isActive = true
        num6.widthAnchor.constraint(equalTo: num4.heightAnchor, multiplier: 1).isActive = true
        num6.heightAnchor.constraint(equalTo: num4.widthAnchor, multiplier: 1).isActive = true
        //numPlus
        numMinus.centerXAnchor.constraint(equalTo: numMutiply.centerXAnchor, constant: 0).isActive = true
        numMinus.centerYAnchor.constraint(equalTo: num4.centerYAnchor, constant: 0).isActive = true
        numMinus.widthAnchor.constraint(equalTo: num4.heightAnchor, multiplier: 1).isActive = true
        numMinus.heightAnchor.constraint(equalTo: num4.widthAnchor, multiplier: 1).isActive = true
        //num1
        num1.topAnchor.constraint(equalTo: num4.bottomAnchor, constant: 0).isActive = true
        num1.centerXAnchor.constraint(equalTo: num4.centerXAnchor, constant: 0).isActive = true
        num1.widthAnchor.constraint(equalTo: num7.heightAnchor, multiplier: 1).isActive = true
        num1.heightAnchor.constraint(equalTo: num7.widthAnchor, multiplier: 1).isActive = true
        //num2
        num2.centerXAnchor.constraint(equalTo: num5.centerXAnchor, constant: 0).isActive = true
        num2.centerYAnchor.constraint(equalTo: num1.centerYAnchor, constant: 0).isActive = true
        num2.widthAnchor.constraint(equalTo: num4.heightAnchor, multiplier: 1).isActive = true
        num2.heightAnchor.constraint(equalTo: num4.widthAnchor, multiplier: 1).isActive = true
        //num3
        num3.centerXAnchor.constraint(equalTo: num6.centerXAnchor, constant: 0).isActive = true
        num3.centerYAnchor.constraint(equalTo: num1.centerYAnchor, constant: 0).isActive = true
        num3.widthAnchor.constraint(equalTo: num4.heightAnchor, multiplier: 1).isActive = true
        num3.heightAnchor.constraint(equalTo: num4.widthAnchor, multiplier: 1).isActive = true
        //numPlus
        numPlus.centerXAnchor.constraint(equalTo: numMinus.centerXAnchor, constant: 0).isActive = true
        numPlus.centerYAnchor.constraint(equalTo: num1.centerYAnchor, constant: 0).isActive = true
        numPlus.widthAnchor.constraint(equalTo: num4.heightAnchor, multiplier: 1).isActive = true
        numPlus.heightAnchor.constraint(equalTo: num4.widthAnchor, multiplier: 1).isActive = true
        //num0
        num0.topAnchor.constraint(equalTo: num2.bottomAnchor, constant: 0).isActive = true
        num0.centerXAnchor.constraint(equalTo: num2.centerXAnchor, constant: 0).isActive = true
        num0.widthAnchor.constraint(equalTo: num7.heightAnchor, multiplier: 1).isActive = true
        num0.heightAnchor.constraint(equalTo: num7.widthAnchor, multiplier: 1).isActive = true
        //numComma
        numComma.centerXAnchor.constraint(equalTo: num3.centerXAnchor, constant: 0).isActive = true
        numComma.centerYAnchor.constraint(equalTo: num0.centerYAnchor, constant: 0).isActive = true
        numComma.widthAnchor.constraint(equalTo: num4.heightAnchor, multiplier: 1).isActive = true
        numComma.heightAnchor.constraint(equalTo: num4.widthAnchor, multiplier: 1).isActive = true
        //numEqual
        numEqual.centerXAnchor.constraint(equalTo: numPlus.centerXAnchor, constant: 0).isActive = true
        numEqual.centerYAnchor.constraint(equalTo: num0.centerYAnchor, constant: 0).isActive = true
        numEqual.widthAnchor.constraint(equalTo: num4.heightAnchor, multiplier: 1).isActive = true
        numEqual.heightAnchor.constraint(equalTo: num4.widthAnchor, multiplier: 1).isActive = true
        
    }
    


}

