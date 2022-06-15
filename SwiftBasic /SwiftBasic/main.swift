//
//  main.swift
//  SwiftBasic
//
//  Created by Taof on 3/9/21.
//

import Foundation

print("Hello, World!")

// khai bao bien
var age: Int // Int là kiểu dữ liệu số nguyên

age = 20

age = age + 5

var name: String = "Cường" // String là kiểu dữ liệu chuỗi (xâu)

print(name + " " + String(age))

print("Tôi tên là \(name), \(age) tuổi.")

print("Tôi tên là Quỳnh, 25 tuổi")


// hằng số
let soPi: Float // Float là kiểu dữ liệu số thực (hay còn gọi là kiểu số thập phân, dấy phẩy động)

soPi = 3.14

let gender: String = "Other"

// MARK: - Bài tập
// Cho bán kính hình cầu, tính và in ra diện tích, thể tích của hình cầu đó.
// Hướng dẫn: S = 4 * π * R^2 và V = (4/3) * π * R^3
// R^2 = R * R hoặc = powf(R, 2)

// khai báo bán kính hình cầu
let banKinh: Float = 2.0

// tính diện tích
var dienTich: Float

dienTich =  4 * Float.pi * banKinh * banKinh

print("Diện tích của hình cầu là \(dienTich)")

// tính thể tích
var theTich: Float = 4 / 3 * Float.pi * powf(banKinh, 3)

print("Thể tích của hình cầu 1 là \(theTich)")

var theTich2: Double // kiểu dữ liệu số thực, nhưng phạm vi lớn hơn Float
theTich2 = 4 / 3 * Double.pi * pow(Double(banKinh), 3)

print("Thể tích của hình cầu 2 là \(theTich2)")


// Tính tổng bình phương 2 số a, b


// Kiểu dữ liệu Bool
var isMale: Bool = true
var isOn: Bool = false

// Kiểu ký tự
var kyTu: Character = "a"

// dieu kien

var number: Int = 9

if number % 2 == 0 {
    print("\(number) la so chan")
} else {
    print("\(number) la so le")
}

//Cho số nguyên n. Hỏi:
//- n là số nguyên dương hay không?
//- n có phải là số chẵn hay không?
//- n có chia hết cho 5 hay không?

//Nhập 3 giá trị nguyên dương a, b, c.
//-Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
//- Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác (tính theo công thức hê rông).
//- Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”

let canh1: Float = 3
let canh2: Float = 4
let canh3: Float = 5

// Để tính căn bậc 2, sử dụng hàm sqrt() hoặc sqrtf()
var nuachuvi : Float
var dientich : Float
if (canh1 + canh2) > canh3 && (canh1 + canh3) > canh2 && (canh2 + canh3) > canh1{
    print("Day la 3 canh cua tam giac")
    nuachuvi = (canh1 + canh2 + canh3)/2
    dientich = sqrtf(nuachuvi*(nuachuvi - canh1)*(nuachuvi - canh2)*(nuachuvi - canh3))
    print("Dien tich tam giac la \(dientich)")
}else{
    print("\(canh1), \(canh2), \(canh3) khong phai la 3 canh cua tam giac")
}

var fruit = "Apple"

switch fruit {
case "Apple":
    print("\(fruit) la Apple")
    fallthrough
case "Banana":
    print("\(fruit) la Banana")
case "Orange":
    print("\(fruit) la Orange")
default:
    print("\(fruit) khong phai la hoa qua")
}

// Mang

var names: [String] = []

names.append("An")
names.append(contentsOf: ["Binh", "Cuong", "Duong"])

print(names)
print(name.count) //số phần tử trong mảng

print(names[1]) //in phần tử 1

for item in names {
    print("Day la ban \(item)")
}

for index in 0..<names.count {
    print("Chi so index la \(index), co gia tri la \(names[index])")
}

for (i, value) in names.enumerated() {
    print("\(i) - \(value)")
    names[i] = ""
}
