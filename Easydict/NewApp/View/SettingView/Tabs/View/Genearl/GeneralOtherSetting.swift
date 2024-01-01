//
//  GeneralOtherSetting.swift
//  Easydict
//
//  Created by Sharker on 2024/1/1.
//  Copyright © 2024 izual. All rights reserved.
//

import SwiftUI

@available(macOS 13.0, *)
extension GeneralTab {
    struct OtherSettingView: View {
        var body: some View {
            Section {
                HStack {
                    Text("show_main_window")
                    Toggle(isOn: $hideMainWindow) {
                        Text("hide_main_window")
                    }
                }
                HStack {
                    Text("launch")
                    Toggle(isOn: $launchAtStartup) {
                        Text("launch_at_startup")
                    }
                }
                HStack {
                    Text("menu_bar_icon")
                    Toggle(isOn: $hideMenuBarIcon) {
                        Text("hide_menu_bar_icon")
                    }
                }
                HStack {
                    Text("beta_new_app")
                    Toggle(isOn: $enableBetaNewApp) {
                        Text("enable_beta_new_app")
                    }
                }
            } header: {
                Text("other")
            }
        }

        @AppStorage(kHideMainWindowKey) private var hideMainWindow = false
        @AppStorage(kLaunchAtStartupKey) private var launchAtStartup = false
        @AppStorage(kHideMenuBarIconKey) private var hideMenuBarIcon = false
        @AppStorage(kEnableBetaNewAppKey) private var enableBetaNewApp = false
    }
}
