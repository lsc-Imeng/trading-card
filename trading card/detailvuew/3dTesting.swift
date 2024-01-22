//
//  3dTesting.swift
//  trading card
//
//  Created by 孟元森 on 2024-01-22.
//

import SwiftUI

struct _dTesting: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow)
                .frame(height: 100)
                .overlay {
                    Text("45 Back on X Axis")
                }
                .rotation3DEffect(
                    Angle(degrees: 45),
                    axis: (x: 0.0, y: 0.0, z: 1.0)
                )
        }
    }
}

#Preview {
    _dTesting()
}
