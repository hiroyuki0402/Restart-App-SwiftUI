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
            Spacer()

            // MARK: - ヘッダー
            ZStack {
                CycleGroupView(ShapeColor: .gray, ShapeOpacity: 0.2)

            Image(.character2)
                .resizable()
                .scaledToFit()
                .padding()
            }
            // MARK: - センター

            Text("習得にかかる時間は、我々の集中力の度合いに左右される。")
                .font(.title3)
                .fontWeight(.light)
                .padding()
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)

            // MARK: - フッター


            Button {
                isOnboardingViewActivite = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.doc.on.clipboard")
                    .imageScale(.large)

                Text("REStart")
                    .font(.title3)
                    .fontWeight(.bold)

            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)


        } //: VStack
    }

    // MARK: - メソッド
}

#Preview {
    HomeView()
}
