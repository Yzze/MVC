//
//  Model.swift
//  MVC
//
//  Created by Ян Жигурс on 01.02.2023.
//

import UIKit

class Model {
    var models = [Section]()
    
    func configure() -> [Section]{
        models.append(Section(options: [
            .topCell(model: TopCellOption(icon: UIImage(named: "swift"), title: "Ян Жигурс", subtitleText: "Apple ID, iCloud, контент и покупки", handler: {
                print("Главная ячейка")
            }))
        ]))
        
        models.append(Section(options: [
            .switchCell(model: SettingsSwitchOption(title: "Авиарежим", icon: UIImage(systemName: "airplane"), iconBackgroundColor: .systemOrange, isOn: false, handler: {
                print("Нажатие на Авиарежим")
            })),
            .staticCell(model: SettingsOption(title: "Wi-Fi", icon: UIImage(systemName: "wifi"), iconBackgroundColor: .systemBlue, optionalText: "Не подключено", handler: {
                print("Нажатие на WiFi")
            })),
            .staticCell(model: SettingsOption(title: "Bluetooth", icon: UIImage(systemName: "dot.radiowaves.left.and.right"), iconBackgroundColor: .systemBlue, optionalText: "Выкл.", handler: {
                print("Нажатие на Bluetooth")
            })),
            .staticCell(model: SettingsOption(title: "Cотовая связь", icon: UIImage(systemName: "antenna.radiowaves.left.and.right"), iconBackgroundColor: .systemGreen, optionalText: "", handler: {
                print("Нажатие на Cотовая связь")
            })),
            .staticCell(model: SettingsOption(title: "Режим модема", icon: UIImage(systemName: "personalhotspot"), iconBackgroundColor: .systemGreen, optionalText: "Выкл.", handler: {
                print("Нажатие на Режим модема")
            })),
            .switchCell(model: SettingsSwitchOption(title: "VPN", icon: UIImage(systemName: "lock.shield"), iconBackgroundColor: .systemBlue, isOn: false, handler: {
                print("Нажатие на VPN")
            }))])
        )
        
        models.append(Section(options: [
            .staticCell(model: SettingsOption(title: "Уведомления", icon: UIImage(systemName: "bell.badge"), iconBackgroundColor: .systemRed, optionalText: "", handler: {
                print("Нажатие на Уведомления")
            })),
            .staticCell(model: SettingsOption(title: "Звуки", icon: UIImage(systemName: "speaker.wave.3"), iconBackgroundColor: .systemPink, optionalText: "", handler: {
                print("Нажатие на Звуки")
            })),
            .staticCell(model: SettingsOption(title: "Фокусирование", icon: UIImage(systemName: "moon"), iconBackgroundColor: .systemPurple, optionalText: "", handler: {
                print("Нажатие на Фокусирование")
            })),
            .staticCell(model: SettingsOption(title: "Экранное время", icon: UIImage(systemName: "hourglass"), iconBackgroundColor: .systemPurple, optionalText: "", handler: {
                print("Нажатие на Экранное время")
            }))])
        )
        
        models.append(Section(options: [
            .badgeCell(model: SettingsBadgeOption(title: "Основные", icon: UIImage(systemName: "gear"), iconBackgroundColor: .systemGray, badgeLabel: "1", handler: {
                print("Нажатие на Основные")
            })),
            .staticCell(model: SettingsOption(title: "Пункт управления", icon: UIImage(systemName: "switch.2"), iconBackgroundColor: .systemGray, optionalText: "", handler: {
                print("Нажатие на Пункт управления")
            })),
            .staticCell(model: SettingsOption(title: "Экран и яркость", icon: UIImage(systemName: "textformat.size"), iconBackgroundColor: .systemBlue, optionalText: "", handler: {
                print("Нажатие на Экран и яркость")
            })),
            .staticCell(model: SettingsOption(title: "Экран домой", icon: UIImage(systemName: "apps.iphone"), iconBackgroundColor: .systemBlue, optionalText: "", handler: {
                print("Нажатие на Экран домой")
            })),
            .staticCell(model: SettingsOption(title: "Универсальный доступ", icon: UIImage(systemName: "figure.wave.circle"), iconBackgroundColor: .systemBlue, optionalText: "", handler: {
                print("Нажатие на Универсальный доступ")
            })),
            .staticCell(model: SettingsOption(title: "Обои", icon: UIImage(systemName: "paintbrush.fill"), iconBackgroundColor: .systemCyan, optionalText: "", handler: {
                print("Нажатие на Обои")
            }))])
        )
        return models
    }
}
