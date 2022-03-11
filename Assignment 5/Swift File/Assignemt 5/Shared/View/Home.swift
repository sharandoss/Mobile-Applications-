//
//  Home.swift
//  MotionParallax (iOS)
// Motion Parallex Effect using Accelerometer & Gyroscope
//
// Followed Youtube Tutorial https://www.youtube.com/watch?v=2DMpS0xiiXU

import SwiftUI

struct Home: View {
    @StateObject var motionData = MotionObserver()
    var body: some View {
        
        ZStack{
            
            GeometryReader{proxy in
                
                let size = proxy.size
                
                Image("BG-1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height)
                    .cornerRadius(0)
                
                // Slighly Dimming...
                Color.black
                    .opacity(0.2)
            }
            // Blur Overlay...
            .overlay(.ultraThinMaterial)
            .ignoresSafeArea()
            
            GeometryReader{proxy in
                
                let size = proxy.size
                
                Image("BG-1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(motionData.movingOffset)
                // if you want only frame moving just apply negative in offset here...
                   // .offset(x: -motionData.movingOffset.width,y: -motionData.movingOffset.height)
                    .frame(width: size.width * 1, height: size.height * 1)
                    // Applying Offset to image to get nice Parallax...
                    .frame(width: size.width, height: size.height)
            }
            .frame(height: 600)
            .cornerRadius(25)
            .padding(.horizontal,10)
            // Applying offset here...
            // to look like its moving on real time motion data...
            .offset(motionData.movingOffset)
        }
        // Calling Motion Updater with duration...
        .onAppear(perform: {
            // duration = how much you need to move the view in both sides..
            // since we have padded 40 on each side
            // so we can use 30...
            motionData.fetchMotionData(duration: 30)
        })
        // Preffered to be Dark..
        .environment(\.colorScheme, .dark)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
