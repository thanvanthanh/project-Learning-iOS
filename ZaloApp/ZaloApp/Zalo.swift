//
//  Zalo.swift
//  ZaloApp
//
//  Created by Taof on 4/13/21.
//

import Foundation

struct Zalo {
    var name: String
    var date: String
    var message: String
    var imageName: String
}

func createDatas() -> [Zalo] {
    let data1 = Zalo(name: "iOS Swift", date: "2 giờ", message: "Tối nay lớp học nhé", imageName: "app")
    let data2 = Zalo(name: "Cô giáo", date: "03/01/2021", message: "Các bạn chưa làm bài đúng không?", imageName: "dev")
    let data3 = Zalo(name: "Marketing", date: "4 ngày", message: "Bạn đăng ký học không ạ", imageName: "device")
    let data4 = Zalo(name: "🍀", date: "2 giờ", message: "...", imageName: "app")
    let data5 = Zalo(name: "Cô giáo", date: "03/01/2021", message: "Cô cho em hỏi bài nhé", imageName: "dev")
    let data6 = Zalo(name: "Apple", date: "2 giờ", message: "Học hành cho lắm vào rồi quên cũng cho lắm, học với hành không nhanh được", imageName: "device")
    let data7 = Zalo(name: "Mango", date: "34 phút", message: "Lên hồ không", imageName: "app")
    let data8 = Zalo(name: "Huy", date: "03/01/2021", message: "Thế dung lượng bị đầy thì làm sao", imageName: "dev")
    let data9 = Zalo(name: "iOS Swift", date: "2 giờ", message: "Tối nay lớp học nhé", imageName: "device")
    let data10 = Zalo(name: "Cream", date: "2 giờ", message: "Đi ăn kem", imageName: "app")
    let data11 = Zalo(name: "Huy", date: "03/01/2021", message: "Thế dung lượng bị đầy thì làm sao", imageName: "dev")
    let data12 = Zalo(name: "iOS Swift", date: "2 giờ", message: "Tối nay lớp học nhé", imageName: "device")
    let data13 = Zalo(name: "Cream", date: "2 giờ", message: "Đi ăn kem", imageName: "app")
    return [data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13]
}
