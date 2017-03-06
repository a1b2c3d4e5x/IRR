# IRR
The internal rate of return function in swift 3.0.


### Using

	var cashFlow = [Int]()
	cashFlow.append(-300000)
	cashFlow.append(0)
	cashFlow.append(0)
	cashFlow.append(20000)
	cashFlow.append(0)
	cashFlow.append(132000)
	cashFlow.append(0)
	cashFlow.append(0)
	cashFlow.append(-156000)
	cashFlow.append(0)
	cashFlow.append(0)
	cashFlow.append(360000)
	let irr = IRR.computeIRR(cashFlows: cashFlow)
	
	// 0.018106189979535267
	print(irr)