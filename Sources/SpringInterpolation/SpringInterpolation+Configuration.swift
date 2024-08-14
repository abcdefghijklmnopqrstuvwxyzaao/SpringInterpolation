//
//  SpringInterpolation+Configuration.swift
//  SpringInterpolation
//
//  Created by QAQ on 2023/12/3.
//

import Foundation

public extension SpringInterpolation {
    struct Configuration: Equatable, Hashable {
        public var angularFrequency: Double
        public var dampingRatio: Double
        public var threshold: Double
        public var stopWhenHitTarget: Bool

        public static let defaultAngularFrequency: Double = 4
        public static let defaultDampingRatio: Double = 1

        public init(
            angularFrequency: Double = defaultAngularFrequency,
            dampingRatio: Double = defaultDampingRatio,
            threshold: Double = 0.0001,
            stopWhenHitTarget: Bool = false
        ) {
            self.angularFrequency = angularFrequency
            self.dampingRatio = dampingRatio
            self.threshold = threshold
            self.stopWhenHitTarget = stopWhenHitTarget

            assert(angularFrequency > 0)
            assert(dampingRatio > 0)
            assert(threshold >= 0)
        }
    }
}
