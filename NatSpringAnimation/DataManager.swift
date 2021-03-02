//
//  DataManager.swift
//  NatSpringAnimation
//
//  Created by HappyLiya on 01.03.2021.
//

import Spring

class DataManager {
    static let shared = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .FadeIn,
        .FadeInDown,
        .FadeInLeft,
        .FadeInRight,
        .FadeInUp,
        .FadeOut,
        .FadeOutIn,
        .Fall,
        .Flash,
        .FlipX,
        .FlipY,
        .Morph,
        .Pop,
        .Shake,
        .SlideDown,
        .SlideLeft,
        .SlideRight,
        .SlideUp,
        .Squeeze,
        .SqueezeDown,
        .SqueezeLeft,
        .SqueezeRight,
        .SqueezeUp,
        .Swing,
        .Wobble,
        .ZoomIn,
        .ZoomOut
    ]
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
