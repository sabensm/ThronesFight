//
//  Player.swift
//  ThronesFight
//
//  Created by Mike Sabens on 7/20/16.
//  Copyright © 2016 TheNewThirty. All rights reserved.
//

import Foundation

class Player {
    
    private var _hp: Int
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    private var _attackPower: Int
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    private var _name: String
    
    var name: String {
        get {
            return _name
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attackPower: Int, name: String) {
        self._hp = startingHp
        self._attackPower = attackPower
        self._name = name
  
    }
    
    func attemptAttack(attackPower: Int) -> Bool {
        self._hp -= attackPower
        return true
    }
    
}