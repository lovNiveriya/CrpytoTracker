//
//  HomeView.swift
//  SwiftFulCrypto
//
//  Created by LOVE  on 25/08/24.
//

import SwiftUI

struct HomeView: View {

    @State private var showPrortfolio: Bool = false

    var body: some View {
        ZStack{
            Color.theme.background
                .ignoresSafeArea()

            //content layer
            VStack {
                HStack{
                    CircleButtonView(iconName: showPrortfolio ? "plus" : "info")
                        .background(
                            CircleButtonAnimationView(animate: $showPrortfolio)
                        )
                    Spacer()
                    Text(showPrortfolio ? "Portfolio": "Live Prices")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.theme.accent)
                    Spacer()
                    CircleButtonView(iconName: "chevron.right")
                        .rotationEffect(Angle(degrees: showPrortfolio ? 180 : 0))
                        .onTapGesture {
                            withAnimation(.spring()) {
                                showPrortfolio.toggle()
                            }
                        }
                }
                .padding(.horizontal)
                
                Spacer(minLength: 0)
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
            .navigationBarBackButtonHidden(true)
    }
}
