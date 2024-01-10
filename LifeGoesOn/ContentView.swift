//
//  ContentView.swift
//  LifeGoesOn
//
//  Created by Pouya Sadri on 09/01/2024.
//

import SwiftUI

struct ContentView: View {
	// State for toggling colors
	@State private var isBlueColor = false
	
    var body: some View {
		ZStack{
			// Background Color that taggles between blue and yellow
			Color(isBlueColor ? .blue : .yellow)
				.animation(Animation.easeInOut(duration: 3.5).repeatForever(autoreverses: false),value: isBlueColor)
				.onAppear{
					isBlueColor.toggle()
				}
				.ignoresSafeArea()
			AnimationSequenceView()
				.offset(x:12,y : 180)
		}
    }
}

#Preview {
    ContentView()
}

let images : [UIImage] = (0...14).compactMap{
	UIImage(named: "image\($0)")
}

let animatedImages = UIImage.animatedImage(with: images, duration: 0.5)

struct AnimationSequenceView : UIViewRepresentable{
	
	func makeUIView(context: Context) -> some UIView {
		let sequenceView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
		
		let imageView = UIImageView(frame: sequenceView.bounds)
		imageView.clipsToBounds = true
		imageView.layer.cornerRadius = 20
		imageView.contentMode = .scaleAspectFit
		imageView.image = animatedImages
		
		sequenceView.addSubview(imageView)
		return sequenceView
	}
	
	func updateUIView(_ uiView: UIViewType, context: Context) {
		
	}
}
