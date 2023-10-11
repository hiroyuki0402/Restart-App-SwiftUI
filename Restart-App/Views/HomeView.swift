//
//  HomeView.swift
//  Restart-App
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/10.
//

import SwiftUI

struct HomeView: View {
    // MARK: - プロパティー

    /// アプリのオンボーディングが完了したかどうかを保存および取得するためのプロパティ。
    /// `true`の場合、オンボーディングは既に表示されており、再度表示する必要はありません。
    /// `false`の場合、ユーザーはまだオンボーディングを経験していません。
    @AppStorage("onboarding") var isOnboardingViewActivite: Bool = false



    // MARK: - ボディー
    var body: some View {


        VStack(spacing: 20) {
            Text("HomeView")
                .font(.largeTitle)

            Button {
                isOnboardingViewActivite = true
            } label: {
                Text("REStart")
            }

        } //: VStack
    }

    // MARK: - メソッド
}

#Preview {
    HomeView()
}
