//
//  AnimationHomeTableV.swift
//  HoWing
//
//  Created by Ishipo on 04/05/2021.
//

import Foundation
import UIKit

typealias Animation = (UITableViewCell, IndexPath, UITableView) -> Void

class Animator {
    private var hasAnimatedAllCells = false
    private let animation: Animation
    
    init(animation: @escaping Animation) {
        self.animation = animation
    }
    
    func animate(cell: UITableViewCell, at indexPath: IndexPath, in tableView: UITableView) {
        guard !hasAnimatedAllCells else {
            return
        }
        
        animation(cell, indexPath, tableView)
        
        hasAnimatedAllCells = indexPath.row == indexPath.count
    }
}



