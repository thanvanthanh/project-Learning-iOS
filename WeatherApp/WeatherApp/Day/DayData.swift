//
//  DayData.swift
//  WeatherApp
//
//  Created by Thân Văn Thanh on 4/14/21.
//

import Foundation
struct dayData {
    var day : String
    var icon : String
    var max : String
    var min : String
    
}
func creatDayData() -> [dayData]{
    let data1 = dayData(day: "Thứ Năm", icon: "cloud.bolt.fill", max: "28", min: "23")
    let data2 = dayData(day: "Thứ Sáu", icon: "cloud.bolt.fill", max: "25", min: "31")
    let data3 = dayData(day: "Thứ Bảy", icon: "cloud.rain.fill", max: "22", min: "20")
    let data4 = dayData(day: "Chủ Nhật", icon: "cloud.rain.fill", max: "23", min: "21")
    let data5 = dayData(day: "Thứ Hai", icon: "cloud.bolt.fill", max: "27", min: "22")
    let data6 = dayData(day: "Thứ Ba", icon: "cloud.bolt.fill", max: "28", min: "23")
    let data7 = dayData(day: "Thứ Tư", icon: "cloud.bolt.fill", max: "29", min: "23")
    let data8 = dayData(day: "Thứ Năm", icon: "cloud.bolt.fill", max: "28", min: "23")
    let data9 = dayData(day: "Thứ Sáu", icon: "cloud.bolt.fill", max: "28", min: "23")

    return [data1, data2 , data3 , data4 , data5 , data6 , data7 , data8 , data9 ]
}
