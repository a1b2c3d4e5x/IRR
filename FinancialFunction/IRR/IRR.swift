//
//  IRR.swift
//  FinancialFunction
//
//  Created by GuoHao on 2017/3/3.
//  Copyright © 2017年 cgh. All rights reserved.
//

import Foundation

/**
 Internal Rate Of Return (IRR)
 */
public class IRR {
        
    static func computeIRR(cashFlows:[Int]) -> Double? {
    
        // const
        let MAX_ITERATION = 1000        // Max Iteration
        let PRECISION_REQ = 0.00000001  // Percision
        
        // variable
        var guessRate0: Double = 0.1;   // Default: 10%
        var guessRate1: Double = 0;
        var derivative: Double = 0;
        var nowCash: Double = 0.0;
        var npv: Double = 0;

        let numOfFlows = cashFlows.count;
        for _ in 0 ..< MAX_ITERATION {
            
            npv = 0.0;
            derivative = 0.0;
            
            for j in 0 ..< numOfFlows {
                
                // cashFlows[j] 的現今價值
                nowCash = (Double(cashFlows[j]) / pow(1 + guessRate0, Double(j)));
                //print("nowCash: \(nowCash)")
                
                // 損益差
                npv = npv + nowCash;
                //print("npv: \(npv)")
                
                derivative += (Double(-j * cashFlows[j]) / pow(1.0 + guessRate0, Double(j + 1)));
            }
            
            guessRate1 = guessRate0 - (npv / derivative);
            
            // 收斂到 0.0000001 以內
            if (PRECISION_REQ >= abs(guessRate1 - guessRate0)) {
                return guessRate1;
            }
            
            guessRate0 = guessRate1;
        }
        
        return nil
    }
}
