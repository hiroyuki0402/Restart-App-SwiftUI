//
//  OnboardingView.swift
//  Restart-App
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/10.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - プロパティー

    /// アプリのオンボーディングが完了したかどうかを保存および取得するためのプロパティ。
    /// `true`の場合、オンボーディングは既に表示されており、再度表示する必要ない。
    /// `false`の場合、ユーザーはまだオンボーディングを経験していない。
    @AppStorage("onboarding") var isOnboardingViewActivite: Bool = true

    // MARK: - ボディー
    var body: some View {

        ZStack {
            // 背景の設定
            Color(.colorBlue)
                .ignoresSafeArea(.all, edges: .all)

            // MARK: -  メインコンテンツ
            VStack(spacing: 20) {
                Spacer()

                // MARK: -  タイトルとサブテキストのセクション
                VStack(spacing: 0) {
                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("私たちがどれだけ多くを与えるかではなく、与える行為にどれだけの愛を込めるかが大切です ")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }

                // MARK: -  キャラクターイメージのセクション
                ZStack {
                    CycleGroupView(ShapeColor: .white, ShapeOpacity: 0.4)

                    Image(.character1)
                        .resizable()
                        .scaledToFit()
                }

                Spacer()

                // MARK: -  "始めましょう"ボタンのセクション
                ZStack {
                    Capsule()
                        .fill(.white.opacity(0.2))

                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)

                    Text("始めましょう")
                        .font(.title3)
                        .fontDesign(.rounded)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    HStack {
                        Capsule()
                            .fill(.red)
                            .frame(width: 80, height: 80)
                        Spacer()
                    }

                    HStack {
                        ZStack {
                            Capsule()
                                .fill(.red)

                            Capsule()
                                .fill(.white.opacity(0.15))
                                .padding(8)

                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActivite = false
                        }
                        Spacer()
                    }

                }
                .frame(height: 80, alignment: .center)
                .padding()

            }//: VStack
        } //: ZStack
    }

    // MARK: - メソッド
}

// プレビュー用のセクション
#Preview {
    OnboardingView()
}
