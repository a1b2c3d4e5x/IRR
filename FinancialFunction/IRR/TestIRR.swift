//
//  TestIRR.swift
//  FinancialFunction
//
//  Created by GuoHao on 2017/3/3.
//  Copyright © 2017年 cgh. All rights reserved.
//

import Foundation

extension IRR {
    static func test1() {
        
        var cf = [Int]()
        cf.append(-224988)
        cf.append(34662)
        cf.append(34312)
        cf.append(33962)
        cf.append(33612)
        cf.append(33262)
        cf.append(32912)
        cf.append(32562)
        cf.append(32212)
        cf.append(31862)
        cf.append(31512)
        cf.append(31162)
        cf.append(30812)
        cf.append(30462)
        cf.append(30112)
        cf.append(29762)
        cf.append(29412)
        cf.append(29062)
        cf.append(28712)
        cf.append(28362)
        let irr = IRR.computeIRR(cashFlows: cf)?.decimal(.´9´);
        
        // 0.13144211379673515
        assert("0.131442114" == irr, "Error: \(#function), value: \(irr)")
    }
    
    /// [股票配息]
    /// 第一年買股票 61, 020
    /// 第二年拿回 3, 580 配息
    /// 第三年拿回 4, 686 配息
    /// 第四年拿回 5, 098 配息
    /// 第五年拿回配息與賣股票共 91, 916
    static func test2() {
        var cf = [Int]()
        cf.append(-61020)
        cf.append(3580)
        cf.append(4686)
        cf.append(5098)
        cf.append(91916)
        let irr = IRR.computeIRR(cashFlows: cf)?.decimal(.´9´);
        
        // 0.1578197827640115
        assert("0.157819783" == irr, "Error: \(#function), value: \(irr)")
    }

    /// 有一個六年期的養老保險
    /// 繳費期間是前三年
    /// 每一年初繳 30,250
    /// 到第六年時領回 100,000 元
    static func test3() {
        var cf = [Int]()
        cf.append(-30250)
        cf.append(-30250)
        cf.append(-30250)
        cf.append(0)
        cf.append(0)
        cf.append(0)
        cf.append(100000)
        let irr = IRR.computeIRR(cashFlows: cf)?.decimal(.´9´);
        
        // 0.019576439400469214
        assert("0.019576439" == irr, "Error: \(#function), value: \(irr)")
    }
    
    /// [貸款]
    /// 汽車貸款 40 萬分 24 期
    /// 每期繳款 18,458 元
    static func test4() {
        
        var cf = [Int]()
        cf.append(400000)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        cf.append(-18458)
        
        let irr = IRR.computeIRR(cashFlows: cf)?.decimal(.´9´);
        
        // 0.0083334663319744994
        assert("0.008333466" == irr, "Error: \(#function), value: \(irr)")
    }
    
    /// [股票買賣]
    /// 30 元/股買進中鋼 10 張
    /// 第 3 個月配息 2 元/股
    /// 第 5 個月以 33 元/股賣出 4 張
    /// 第 8 個月以 26 元/股再買 6 張攤平
    /// 最後於第 11 個月時以 30 元賣出所剩 12 張股票。
    static func test5() {
        
        var cf = [Int]()
        cf.append(-300000)
        cf.append(0)
        cf.append(0)
        cf.append(20000)
        cf.append(0)
        cf.append(132000)
        cf.append(0)
        cf.append(0)
        cf.append(-156000)
        cf.append(0)
        cf.append(0)
        cf.append(360000)
        let irr = IRR.computeIRR(cashFlows: cf)?.decimal(.´9´);
        
        // 0.018106189979535267
        assert("0.018106190" == irr, "Error: \(#function), value: \(irr)")
    }
    
    /// [整存整付定存]
    /// 100 萬放銀行整存整付定存
    /// 一年後拿回 103 萬
    static func test6() {
        
        var cf = [Int]()
        cf.append(-1000000)
        cf.append(0)
        cf.append(0)
        cf.append(0)
        cf.append(0)
        cf.append(0)
        cf.append(0)
        cf.append(0)
        cf.append(0)
        cf.append(0)
        cf.append(0)
        cf.append(0)
        cf.append(1030000)
        let irr = IRR.computeIRR(cashFlows: cf)?.decimal(.´9´);
        
        // 0.002466269772303555
        assert("0.002466270" == irr, "Error: \(#function), value: \(irr)")
    }
    
    static func test7() {
        
        var cf = [Int]()
        cf.append(-128400)
        cf.append(30000)
        cf.append(30000)
        cf.append(30000)
        cf.append(30000)
        cf.append(30000)
        let irr = IRR.computeIRR(cashFlows: cf)?.decimal(.´9´);
        
        // 0.054171820950292514
        assert("0.054171821" == irr, "Error: \(#function), value: \(irr)")
    }
    
    static func test8() {
        
        var cf = [Int]()
        cf.append(30000)
        cf.append(30000)
        cf.append(30000)
        cf.append(30000)
        cf.append(30000)
        cf.append(-128400)
        let irr = IRR.computeIRR(cashFlows: cf)?.decimal(.´9´);
        
        // -0.05138803738982415
        assert("-0.051388037" == irr, "Error: \(#function), value: \(irr)")
    }
}
