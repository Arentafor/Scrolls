//
//  ViewControllerTask2.swift
//  Lesson 10
//
//  Created by Виталий Крюков on 13.04.2021.
//

import UIKit

struct settings {
    var namesetting: String
    var imagesetting: String
}

class FubricsSettings {
    static func FC () -> [(sect:String, itms:[settings])] {
        return [ (sect: "",
                  [settings (namesetting:"Авиарежим", imagesetting: "setting1"),
                   settings (namesetting:"Wi-Fi", imagesetting: "setting2"),
                   settings (namesetting:"Bluetooth", imagesetting: "setting3"),
                   settings (namesetting:"Сотовая Связь", imagesetting: "setting4"),
                   settings (namesetting:"Режим модема", imagesetting: "setting5")]),
                (sect: "",
                  [settings (namesetting:"Уведомления", imagesetting: "setting6"),
                   settings (namesetting:"Звуки, тактильные сигналы", imagesetting: "setting7"),
                   settings (namesetting:"Не беспокоить", imagesetting: "setting8"),
                   settings (namesetting:"Экранное время", imagesetting: "setting9")]),
                (sect: "",
                  [settings (namesetting:"Основные", imagesetting: "setting10"),
                   settings (namesetting:"Пункт управления", imagesetting: "setting11"),
                   settings (namesetting:"Экран и яркость", imagesetting: "setting12"),
                   settings (namesetting:"Обои", imagesetting: "setting13")])]
    }
}

class ViewControllerTask2: UIViewController {
    
    var fubricsettings = FubricsSettings.FC()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    
}

extension ViewControllerTask2: UITableViewDataSource, UITableViewDelegate {
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return
            fubricsettings.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return ""
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fubricsettings[section].itms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellSettings = tableView.dequeueReusableCell(withIdentifier: "Sett") as! TableViewCellTask2
        cellSettings.initCellSettings(item: fubricsettings[indexPath.section].itms[indexPath.row])
        
    return cellSettings
    }
}
