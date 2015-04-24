//
//  Country.swift
//  CountryIDPhotosTableView2
//
//  Created by Audrey Li on 4/23/15.
//  Copyright (c) 2015 shomigo.com. All rights reserved.
//

struct AppConfig {
    static let showFlagCodeMode = ShowFlagCodeMode.Hybrid
}
enum ShowFlagCodeMode{
    case AllCode
    case Hybrid
    case AllPNG
}

class Country{
    let name:String!
    let code: String!
    let flagCode: String!
    let isFlagCodeAvailable: Bool
    init(name: String, code: String, isFlagCodeAvailable: Bool){
        self.name = name
        self.code = code
        self.flagCode = "\(FlagCode(char: Array(code)[0]).rawValue)\(FlagCode(char: Array(code)[1]).rawValue)"
        self.isFlagCodeAvailable = isFlagCodeAvailable
    }
}


class Countries{
    var countries = [Country]()
    init(){
    let noFlagListCountryCodes = ["IM", "NQ","JT","UM","SU","YD","DD","CT","PM","BQ","MI","ZZ","PC","SJ","VD","HM","PZ","BV","CS","PU","IO","FQ","NT","WK","FX"]
        
        
    let nonEmojiCountryCodes = ["IM", "NQ", "MF", "MH", "JT", "UM", "SU", "MU", "GG", "AX", "YD", "DD", "CT", "PM", "NF", "BQ", "TD", "MI", "GL", "CC", "TK", "NR","ZZ", "PC", "SJ", "YT", "BL", "TW", "PF", "VD", "VA", "JE", "CX", "HM", "EH", "PZ", "BV", "PN", "CS", "PU", "IO", "FQ", "AN", "AQ", "NT", "MC", "FK", "WK", "WF", "SH", "FX", "GS", "FM"]
    let countriesDict:[String : String] = ["AF":"Afghanistan","AL":"Albania","DZ":"Algeria","AS":"American Samoa","AD":"Andorra","AO":"Angola","AI":"Anguilla","AQ":"Antarctica","AG":"Antigua and Barbuda","AR":"Argentina","AM":"Armenia","AW":"Aruba","AU":"Australia","AT":"Austria","AZ":"Azerbaijan","BS":"Bahamas","BH":"Bahrain","BD":"Bangladesh","BB":"Barbados","BY":"Belarus","BE":"Belgium","BZ":"Belize","BJ":"Benin","BM":"Bermuda","BT":"Bhutan","BO":"Bolivia","BA":"Bosnia and Herzegovina","BW":"Botswana","BV":"Bouvet Island","BR":"Brazil","BQ":"British Antarctic Territory","IO":"British Indian Ocean Territory","VG":"British Virgin Islands","BN":"Brunei","BG":"Bulgaria","BF":"Burkina Faso","BI":"Burundi","KH":"Cambodia","CM":"Cameroon","CA":"Canada","CT":"Canton and Enderbury Islands","CV":"Cape Verde","KY":"Cayman Islands","CF":"Central African Republic","TD":"Chad","CL":"Chile","CN":"China","CX":"Christmas Island","CC":"Cocos [Keeling] Islands","CO":"Colombia","KM":"Comoros","CG":"Congo - Brazzaville","CD":"Congo - Kinshasa","CK":"Cook Islands","CR":"Costa Rica","HR":"Croatia","CU":"Cuba","CY":"Cyprus","CZ":"Czech Republic","CI":"C\u{00f4}te d\u{2019}Ivoire","DK":"Denmark","DJ":"Djibouti","DM":"Dominica","DO":"Dominican Republic","NQ":"Dronning Maud Land","DD":"East Germany","EC":"Ecuador","EG":"Egypt","SV":"El Salvador","GQ":"Equatorial Guinea","ER":"Eritrea","EE":"Estonia","ET":"Ethiopia","FK":"Falkland Islands","FO":"Faroe Islands","FJ":"Fiji","FI":"Finland","FR":"France","GF":"French Guiana","PF":"French Polynesia","TF":"French Southern Territories","FQ":"French Southern and Antarctic Territories","GA":"Gabon","GM":"Gambia","GE":"Georgia","DE":"Germany","GH":"Ghana","GI":"Gibraltar","GR":"Greece","GL":"Greenland","GD":"Grenada","GP":"Guadeloupe","GU":"Guam","GT":"Guatemala","GG":"Guernsey","GN":"Guinea","GW":"Guinea-Bissau","GY":"Guyana","HT":"Haiti","HM":"Heard Island and McDonald Islands","HN":"Honduras","HK":"Hong Kong SAR China","HU":"Hungary","IS":"Iceland","IN":"India","ID":"Indonesia","IR":"Iran","IQ":"Iraq","IE":"Ireland","IM":"Isle of Man","IL":"Israel","IT":"Italy","JM":"Jamaica","JP":"Japan","JE":"Jersey","JT":"Johnston Island","JO":"Jordan","KZ":"Kazakhstan","KE":"Kenya","KI":"Kiribati","KW":"Kuwait","KG":"Kyrgyzstan","LA":"Laos","LV":"Latvia","LB":"Lebanon","LS":"Lesotho","LR":"Liberia","LY":"Libya","LI":"Liechtenstein","LT":"Lithuania","LU":"Luxembourg","MO":"Macau SAR China","MK":"Macedonia","MG":"Madagascar","MW":"Malawi","MY":"Malaysia","MV":"Maldives","ML":"Mali","MT":"Malta","MH":"Marshall Islands","MQ":"Martinique","MR":"Mauritania","MU":"Mauritius","YT":"Mayotte","FX":"Metropolitan France","MX":"Mexico","FM":"Micronesia","MI":"Midway Islands","MD":"Moldova","MC":"Monaco","MN":"Mongolia","ME":"Montenegro","MS":"Montserrat","MA":"Morocco","MZ":"Mozambique","MM":"Myanmar [Burma]","NA":"Namibia","NR":"Nauru","NP":"Nepal","NL":"Netherlands","AN":"Netherlands Antilles","NT":"Neutral Zone","NC":"New Caledonia","NZ":"New Zealand","NI":"Nicaragua","NE":"Niger","NG":"Nigeria","NU":"Niue","NF":"Norfolk Island","KP":"North Korea","VD":"North Vietnam","MP":"Northern Mariana Islands","NO":"Norway","OM":"Oman","PC":"Pacific Islands Trust Territory","PK":"Pakistan","PW":"Palau","PS":"Palestinian Territories","PA":"Panama","PZ":"Panama Canal Zone","PG":"Papua New Guinea","PY":"Paraguay","YD":"People's Democratic Republic of Yemen","PE":"Peru","PH":"Philippines","PN":"Pitcairn Islands","PL":"Poland","PT":"Portugal","PR":"Puerto Rico","QA":"Qatar","RO":"Romania","RU":"Russia","RW":"Rwanda","RE":"R\u{00e9}union","BL":"Saint Barth\u{00e9}lemy","SH":"Saint Helena","KN":"Saint Kitts and Nevis","LC":"Saint Lucia","MF":"Saint Martin","PM":"Saint Pierre and Miquelon","VC":"Saint Vincent and the Grenadines","WS":"Samoa","SM":"San Marino","SA":"Saudi Arabia","SN":"Senegal","RS":"Serbia","CS":"Serbia and Montenegro","SC":"Seychelles","SL":"Sierra Leone","SG":"Singapore","SK":"Slovakia","SI":"Slovenia","SB":"Solomon Islands","SO":"Somalia","ZA":"South Africa","GS":"South Georgia and the South Sandwich Islands","KR":"South Korea","ES":"Spain","LK":"Sri Lanka","SD":"Sudan","SR":"Suriname","SJ":"Svalbard and Jan Mayen","SZ":"Swaziland","SE":"Sweden","CH":"Switzerland","SY":"Syria","ST":"S\u{00e3}o Tom\u{00e9} and Pr\u{00ed}ncipe","TW":"Taiwan","TJ":"Tajikistan","TZ":"Tanzania","TH":"Thailand","TL":"Timor-Leste","TG":"Togo","TK":"Tokelau","TO":"Tonga","TT":"Trinidad and Tobago","TN":"Tunisia","TR":"Turkey","TM":"Turkmenistan","TC":"Turks and Caicos Islands","TV":"Tuvalu","UM":"U.S. Minor Outlying Islands","PU":"U.S. Miscellaneous Pacific Islands","VI":"U.S. Virgin Islands","UG":"Uganda","UA":"Ukraine","SU":"Union of Soviet Socialist Republics","AE":"United Arab Emirates","GB":"United Kingdom","US":"United States","ZZ":"Unknown or Invalid Region","UY":"Uruguay","UZ":"Uzbekistan","VU":"Vanuatu","VA":"Vatican City","VE":"Venezuela","VN":"Vietnam","WK":"Wake Island","WF":"Wallis and Futuna","EH":"Western Sahara","YE":"Yemen","ZM":"Zambia","ZW":"Zimbabwe","AX":"\u{00c5}land Islands"]
       
        println(countriesDict.count)
        
        for (K,V) in countriesDict {
            if !noFlagListCountryCodes.contains(K) {
                var isFlagCodeAvailable = true
                if nonEmojiCountryCodes.contains(K){
                    isFlagCodeAvailable = false
                }
                let country = Country(name: V, code: K, isFlagCodeAvailable: isFlagCodeAvailable)
                countries.append(country)
            }
        }
        println("no flag countries\(noFlagListCountryCodes.count)")
        println(countries.count)
        println(nonEmojiCountryCodes.count)
        // No flag list countries 
//        NQ  Dronning Maud Land
//        JT  Johnston Island
//        UM  U.S. Minor Outlying Islands
//        SU  Union of Soviet Socialist Republics
//        YD  People's Democratic Republic of Yemen
//        DD  East Germany
//        CT  Canton and Enderbury Islands
//        PM  Saint Pierre and Miquelon
//        BQ  British Antarctic Territory
//        MI  Midway Islands
//        ZZ  Unknown or Invalid Region
//        PC  Pacific Islands Trust Territory
//        SJ  Svalbard and Jan Mayen
//        VD  North Vietnam
//        HM  Heard Island and McDonald Islands
//        PZ  Panama Canal Zone
//        BV  Bouvet Island
//        CS  Serbia and Montenegro
//        PU  U.S. Miscellaneous Pacific Islands
//        IO  British Indian Ocean Territory
//        FQ  French Southern and Antarctic Territories
//        NT  Neutral Zone
//        WK  Wake Island
//        FX  Metropolitan France
    }
    
}