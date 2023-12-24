//
//  Data.swift
//  HW40_CollectionView
//
//  Created by Dawei Hao on 2023/12/16.
//

import Foundation

// Define the data.
struct Data {
    let image: String
}

struct Location {
    let location: String
    let locationURL: String
}

//"https://www.sunmoonlake.gov.tw/en"

   let placesAndUrl = [
       Location(location: "Sun Moon Lake 日月潭",
                locationURL: "https://www.apple.com"), 
       Location(location: "Taipei 101",
                locationURL: "https://www.taipei-101.com.tw/en/"),
       Location(location: "Taroko 太魯閣",
                locationURL: "https://www-taroko-gov-tw.translate.goog/en/?_x_tr_sl=en&_x_tr_tl=zh-Hant&_x_tr_hl=zh-Hant&_x_tr_pto=tc"),
       Location(location: "Rural countryside 梯田",
                locationURL: "https://ap-fftc-org-tw.translate.goog/article/3384?_x_tr_sl=en&_x_tr_tl=zh-Hant&_x_tr_hl=zh-Hant&_x_tr_pto=tc"),
       Location(location: "Ali-shan阿里山",
                locationURL: "https://www.ali-nsa.net"),
       Location(location: "Peng-Hu 澎湖",
                locationURL: "https://eng-taiwan-net-tw.translate.goog/m1.aspx?sNo=0002125&_x_tr_sl=en&_x_tr_tl=zh-Hant&_x_tr_hl=zh-Hant&_x_tr_pto=tc"),
       Location(location: "Lantern Festival 燈籠節", locationURL: "https://eng.taiwan.net.tw/m1.aspx?sNo=0002019&lid=080923"),
       Location(location: "Tea plantations", locationURL: "https://eng.taiwan.net.tw/m1.aspx?sNo=0002124&id=5716"),
       Location(location: "Tamsui 淡水", locationURL: "https://www.taiwan.net.tw/m1.aspx?sNo=0001091&id=19"),
       Location(location: "National Palace Museum 故宮", locationURL: "https://www.npm.gov.tw/?l=2"),
       Location(location: "Shilin Night Market 士林夜市", locationURL: "https://www-travel-taipei.translate.goog/en/attraction/details/1692?_x_tr_sl=en&_x_tr_tl=zh-Hant&_x_tr_hl=zh-Hant&_x_tr_pto=tc"),
       Location(location: "Qingshui Cliffs 清水斷崖", locationURL: "https://www.taroko.gov.tw/en/AttractionTrailContent.aspx?n=7899&sms=11274&s=116"),
       Location(location: "Beitou Hot Springs 北投溫泉", locationURL: "https://eng.taiwan.net.tw/m1.aspx?sNo=0002090&id=4029"),
       Location(location: "Lotus Pond 蓮花潭", locationURL: "https://khh.travel/zh-tw/attractions/detail/11"),
       Location(location: "Chiang Kai-shek Memorial Hall 中正紀念堂", locationURL: "https://www.cksmh.gov.tw/en/"),
       Location(location: "Maokong Gondola 貓空纜車",
                locationURL: "https://english.gondola.taipei"),
       Location(location: "Fo Guang Shan Buddha Museum 佛光山佛陀紀念館",
                locationURL: "https://www.fgsbmc.org.tw/en/index.aspx"),
       Location(location: "Jiufen 九份",
                locationURL: "https://eng-taiwan-net-tw.translate.goog/m1.aspx?sNo=0002091&id=290&_x_tr_sl=en&_x_tr_tl=zh-Hant&_x_tr_hl=zh-Hant&_x_tr_pto=tc"),
       Location(location: "Bustling Kaohsiung Harbor 高雄港",
                locationURL: "https://kh.twport.com.tw/en/cp.aspx?n=7A8A095986A78CE5"),
       Location(location: "Ximending 西門町",
                locationURL: "https://www.travel.taipei/zh-tw/attraction/details/1572"),
       Location(location: "Yehliu Geopark 野柳",
                locationURL: "https://eng-taiwan-net-tw.translate.goog/m1.aspx?sNo=0002091&id=155&_x_tr_sl=en&_x_tr_tl=zh-Hant&_x")
    ]


struct TaiwanState {
    let cityName: String
}

let taiwanStateData = [
    // Special municipality
    TaiwanState(cityName: "Kaohsiung"),
    TaiwanState(cityName: "Taipei"),
    TaiwanState(cityName: "New Taipei City"),
    TaiwanState(cityName: "Tainan"),
    TaiwanState(cityName: "Taoyuan"),
    TaiwanState(cityName: "Taichung"),
    // city
    TaiwanState(cityName: "Keelung"),
    TaiwanState(cityName: "Chiayi"),
    TaiwanState(cityName: "Hsinchu"),
    // county-administered city
    TaiwanState(cityName: "Changhua"),
    TaiwanState(cityName: "Douliu"),
    TaiwanState(cityName: "Hualien"),
    TaiwanState(cityName: "Magong"),
    TaiwanState(cityName: "Miaoli"),
    TaiwanState(cityName: "Nantou"),
    TaiwanState(cityName: "Pingtung"),
    TaiwanState(cityName: "Puzi"),
    TaiwanState(cityName: "Taibao"),
    TaiwanState(cityName: "Taitung"),
    TaiwanState(cityName: "Toufen"),
    TaiwanState(cityName: "Yilan"),
    TaiwanState(cityName: "Yuanlin"),
    TaiwanState(cityName: "Zhubei")
]

//// Special municipality
//let kaohsiung     = "Kaohsiung"
//let taipei        = "Taipei"
//let newTaipeiCity = "newTaipeiCity"
//let tainan        = "Tainan"
//let taoyuan       = "Taoyuan"
//let taichung      = "Taichung"
//
//// city
//let keelung       = "Keelung"
//let chiayi        = "Chiayi"
//
//// county-administered city
//let changhua  = "Changhua"
//let douliu    = "Douliu"
//let hualien   = "Hualien"
//let magong    = "Magong"
//let miaoli    = "Miaoli"
//let nantou    = "Nantou"
//let pingtung  = "Pingtung"
//let puzi      = "Puzi"
//let taibao    = "Taibao"
//let taitung   = "Taitung"
//let toufen    = "Toufen"
//let yilan     = "Yilan"
//let yuanlin   = "Yuanlin"
//let zhubei    = "Zhubei"

// Special municipality
let kaohsiung     = "taiwan"
let taipei        = "taiwan"
let newTaipeiCity = "taiwan"
let tainan        = "taiwan"
let taoyuan       = "taiwan"
let taichung      = "taiwan"

// city
let keelung       = "taiwan"
let chiayi        = "taiwan"

// county-administered city
let changhua  = "taiwan"
let douliu    = "taiwan"
let hualien   = "taiwan"
let magong    = "taiwan"
let miaoli    = "taiwan"
let nantou    = "taiwan"
let pingtung  = "taiwan"
let puzi      = "taiwan"
let taibao    = "taiwan"
let taitung   = "taiwan"
let toufen    = "taiwan"
let yilan     = "taiwan"
let yuanlin   = "taiwan"
let zhubei    = "taiwan"
