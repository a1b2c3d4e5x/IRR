# IRR
The internal rate of return function in swift 3.0.


### Using

	var castFlow = [Int]()
	castFlow.append(-300000)
	castFlow.append(0)
	castFlow.append(0)
	castFlow.append(20000)
	castFlow.append(0)
	castFlow.append(132000)
	castFlow.append(0)
	castFlow.append(0)
	castFlow.append(-156000)
	castFlow.append(0)
	castFlow.append(0)
	castFlow.append(360000)
	let irr = IRR.computeIRR(cashFlows: castFlow)
	
	// 0.018106189979535267
	print(irr)