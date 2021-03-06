//
//  ServiceListModel.swift
//  FirstJapaneseLife
//
//  Created by G-Xi0N on 2017/12/17.
//  Copyright © 2017年 G-Xi0N. All rights reserved.
//

import Foundation
import HandyJSON

struct ServiceListModel: HandyJSON {
    var sid: String?
    var name: String? {
        return LanguageManager.shared.isJapanese ? jname : cname
    }
    var cname: String?
    var jname: String?
    var flow: String? {
        return LanguageManager.shared.isJapanese ? jflow : cflow
    }
    var cflow: String?
    var jflow: String?
    var flowNote: String? {
        return LanguageManager.shared.isJapanese ? jflowNote : cflowNote
    }
    var cflowNote: String?
    var jflowNote: String?
    var ready_images: [String]?
    var chat: String? {
        return LanguageManager.shared.isJapanese ? jchat : cchat
    }
    var cchat: String?
    var jchat: String?
    var audio: String?
    var list = [DetailModel]()
    var contents: [String] {
        return LanguageManager.shared.isJapanese ? jcontents : ccontents
    }
    var ccontents = [String]()
    var jcontents = [String]()

}
