//
//  TimeData.swift
//  WeatherApp
//
//  Created by Thân Văn Thanh on 4/14/21.
//

import Foundation
struct timeData {
    var time : String
    var icon : String
    var temp : String
    
}
func creatTimeData() -> [timeData] {
    let data1 = timeData(time: "Bây Giờ", icon: "cloud.fill", temp: "28°")
    let data2 = timeData(time: "11", icon: "cloud.fill", temp: "28°")
    let data3 = timeData(time: "12", icon: "cloud.fill", temp: "28°")
    let data4 = timeData(time: "13", icon: "cloud.fill", temp: "29°")
    let data5 = timeData(time: "14", icon: "cloud.fill", temp: "28°")
    let data6 = timeData(time: "15", icon: "cloud.fill", temp: "29°")
    let data7 = timeData(time: "16", icon: "cloud.fill", temp: "28°")
    let data8 = timeData(time: "17", icon: "cloud.fill", temp: "28°")
    let data9 = timeData(time: "18", icon: "cloud.fill", temp: "27°")
    let data10 = timeData(time: "18:14", icon: "sunset.fill", temp: "MT lặn")
    let data11 = timeData(time: "19", icon: "cloud.fill", temp: "26°")
    let data12 = timeData(time: "20", icon: "cloud.bolt.fill", temp: "26°")
    let data13 = timeData(time: "21", icon: "cloud.bolt.fill", temp: "25°")
    let data14 = timeData(time: "22", icon: "cloud.rain.fill", temp: "25°")
    let data15 = timeData(time: "23", icon: "cloud.rain.fill", temp: "24°")
    let data16 = timeData(time: "00", icon: "cloud.rain.fill", temp: "24°")
    
    return [data1 , data2 , data3 , data4 , data5 , data6 , data7 , data8 , data9, data10, data11 , data12 , data13 , data14 , data15 , data16]
}
