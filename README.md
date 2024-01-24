# LifeGoesOn-SwiftUI

## Overview

LifeGoesOn-SwiftUI is an iOS application developed using SwiftUI. It's a simple, visually appealing app that demonstrates the use of animations and state management in SwiftUI. The app features a background that toggles between two colors and displays an animated image sequence.

## Features

- **Color Toggling Background:** The background of the app transitions between blue and yellow colors, creating a dynamic visual effect.
- **Animation Sequence:** A series of images are animated to create a fluid visual sequence, showcasing the capability of integrating UIKit elements with SwiftUI through `UIViewRepresentable`.

## Installation

To run LifeGoesOn-SwiftUI, follow these steps:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/[Your-Username]/LifeGoesOn-Swiftui.git
   ```
2. **Open the Project:**
   Open LifeGoesOn.xcodeproj in Xcode.
3. **Run the Application:**
   Select an iOS simulator or connect an iOS device and run the application.
## Requirements

- iOS 13.0+
- Xcode 11.0+
- Swift 5.0+
## Structure
- ContentView: The main view of the app. It includes the logic for toggling the background color and positioning the animation sequence.
- AnimationSequenceView: A SwiftUI view that represents a UIView for displaying the animated image sequence.

## Tutorial Video
Watch the app in action: LifeGoesOn-SwiftUI Demo on YouTube [https://youtu.be/8QaQ5JlGB_8]

## Notes
- The animation images need to be added to the project's assets with names "image0" to "image14".
- The app demonstrates the use of @State for state management and animations in SwiftUI.


