//
//  Profile .swift
//  MyHabbits
//
//  Created by Захар Кисляк on 28.05.2023.
//

import UIKit
import SnapKit


struct Profile{
    let habbits: String
    let periodicity: String
    let counter: String
}

extension Profile{
    static func make() -> [Profile] {
            [
            Profile(habbits: "Выпивать каждый день стакан воды",
                    periodicity: "Каждый час",
                    counter: "Всего было выпито 5 стаканов"),
            Profile(habbits: "Отжиматься каждый день",
                    periodicity: "20 отжиманий в день",
                    counter: "Каждый день")
                ]
    }
}
