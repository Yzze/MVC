//
//  ModelCells.swift
//  MVC
//
//  Created by Ян Жигурс on 01.02.2023.
//

import UIKit

struct Section {
    let options: [SettingsOptionType]
}

enum SettingsOptionType {
    case staticCell(model: SettingsOption)
    case switchCell(model: SettingsSwitchOption)
    case topCell(model: TopCellOption)
    case badgeCell(model: SettingsBadgeOption)
}

struct SettingsOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let optionalText: String
    let handler: (() -> Void)
}

struct SettingsSwitchOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let isOn: Bool
    let handler: (() -> Void)
}

struct TopCellOption {
    let icon: UIImage?
    let title: String
    let subtitleText: String
    let handler: (() -> Void)
}

struct SettingsBadgeOption {
    let title: String
    let icon: UIImage?
    let iconBackgroundColor: UIColor
    let badgeLabel: String
    let handler: (() -> Void)
}
