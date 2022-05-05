`ifndef COEFFICIENTS_SV_
`define COEFFICIENTS_SV_
package Coefficients;
	localparam N = 4;
	localparam M = 4;
	localparam real Lfr[0:3] = {0.9909936, 0.9909936, 0.9798975, 0.9798975};








		'{-315.39786, -25.729626, 2.391748, -0.02091026, -327.88712, -24.224422, 2.4033616, -0.026568063, -339.61957, -22.702948, 2.4107327, -0.032088693, -350.58783, -21.168032, 2.413919, -0.037465084, -360.78583, -19.62248, 2.4129825, -0.042690527, -370.20898, -18.069077, 2.4079926, -0.04775867, -378.85406, -16.510567, 2.399024, -0.052663535, -386.71915, -14.949662, 2.3861566, -0.05739952, -393.80377, -13.389033, 2.3694756, -0.061961398, -400.10867, -11.831307, 2.3490715, -0.06634431, -405.636, -10.279063, 2.3250399, -0.0705438, -410.38907, -8.73483, 2.2974799, -0.074555784, -414.37256, -7.2010803, 2.2664957, -0.07837655, -417.5923, -5.6802287, 2.2321959, -0.08200277, -420.05533, -4.1746297, 2.1946921, -0.08543151, -421.76984, -2.6865723, 2.1541, -0.088660225, -422.7452, -1.2182797, 2.1105382, -0.091686726, -422.9918, 0.22809494, 2.0641289, -0.09450921, -422.5211, 1.6504707, 2.0149968, -0.09712625, -421.34564, 3.046841, 1.9632692, -0.09953679},
		'{-315.39786, -25.729626, 2.391748, -0.02091026, -327.88712, -24.224422, 2.4033616, -0.026568063, -339.61957, -22.702948, 2.4107327, -0.032088693, -350.58783, -21.168032, 2.413919, -0.037465084, -360.78583, -19.62248, 2.4129825, -0.042690527, -370.20898, -18.069077, 2.4079926, -0.04775867, -378.85406, -16.510567, 2.399024, -0.052663535, -386.71915, -14.949662, 2.3861566, -0.05739952, -393.80377, -13.389033, 2.3694756, -0.061961398, -400.10867, -11.831307, 2.3490715, -0.06634431, -405.636, -10.279063, 2.3250399, -0.0705438, -410.38907, -8.73483, 2.2974799, -0.074555784, -414.37256, -7.2010803, 2.2664957, -0.07837655, -417.5923, -5.6802287, 2.2321959, -0.08200277, -420.05533, -4.1746297, 2.1946921, -0.08543151, -421.76984, -2.6865723, 2.1541, -0.088660225, -422.7452, -1.2182797, 2.1105382, -0.091686726, -422.9918, 0.22809494, 2.0641289, -0.09450921, -422.5211, 1.6504707, 2.0149968, -0.09712625, -421.34564, 3.046841, 1.9632692, -0.09953679},
		'{-313.9008, -25.617615, 2.3192613, -0.26458496, -326.34842, -24.179775, 2.2132473, -0.25634763, -338.08737, -22.782751, 2.1099567, -0.24826594, -349.13785, -21.425854, 2.009351, -0.24033912, -359.51978, -20.108398, 1.9113904, -0.23256631, -369.25272, -18.829697, 1.8160353, -0.22494659, -378.35583, -17.589067, 1.7232461, -0.21747893, -386.848, -16.385826, 1.6329827, -0.21016228, -394.74777, -15.219293, 1.5452054, -0.20299554, -402.0733, -14.08879, 1.4598737, -0.19597752, -408.84244, -12.993643, 1.3769478, -0.189107, -415.07272, -11.933181, 1.2963876, -0.1823827, -420.78128, -10.906735, 1.2181528, -0.17580332, -425.98502, -9.913642, 1.1422035, -0.16936746, -430.70038, -8.95324, 1.0684996, -0.16307375, -434.94357, -8.024876, 0.9970013, -0.1569207, -438.73047, -7.1278963, 0.9276688, -0.15090688, -442.0766, -6.2616568, 0.8604624, -0.14503074, -444.99716, -5.425516, 0.79534274, -0.13929075, -447.50702, -4.618839, 0.73227036, -0.13368532},
		'{-313.9008, -25.617615, 2.3192613, -0.26458496, -326.34842, -24.179775, 2.2132473, -0.25634763, -338.08737, -22.782751, 2.1099567, -0.24826594, -349.13785, -21.425854, 2.009351, -0.24033912, -359.51978, -20.108398, 1.9113904, -0.23256631, -369.25272, -18.829697, 1.8160353, -0.22494659, -378.35583, -17.589067, 1.7232461, -0.21747893, -386.848, -16.385826, 1.6329827, -0.21016228, -394.74777, -15.219293, 1.5452054, -0.20299554, -402.0733, -14.08879, 1.4598737, -0.19597752, -408.84244, -12.993643, 1.3769478, -0.189107, -415.07272, -11.933181, 1.2963876, -0.1823827, -420.78128, -10.906735, 1.2181528, -0.17580332, -425.98502, -9.913642, 1.1422035, -0.16936746, -430.70038, -8.95324, 1.0684996, -0.16307375, -434.94357, -8.024876, 0.9970013, -0.1569207, -438.73047, -7.1278963, 0.9276688, -0.15090688, -442.0766, -6.2616568, 0.8604624, -0.14503074, -444.99716, -5.425516, 0.79534274, -0.13929075, -447.50702, -4.618839, 0.73227036, -0.13368532}};

		'{382.63885, -31.786383, -0.82754797, 0.1459217, 366.55676, -32.530922, -0.7242731, 0.14376976, 350.1191, -33.20845, -0.621463, 0.1414105, 333.35947, -33.81892, -0.5192836, 0.13885131, 316.31137, -34.3624, -0.4178968, 0.1360998, 299.0082, -34.839066, -0.31746066, 0.1331637, 281.48337, -35.249203, -0.21812896, 0.130051, 263.77005, -35.593204, -0.12005121, 0.12676983, 245.90112, -35.871574, -0.023372298, 0.12332847, 227.9093, -36.08491, 0.07176759, 0.119735345, 209.82693, -36.23392, 0.16523317, 0.11599898, 191.68597, -36.3194, 0.25689414, 0.11212802, 173.51797, -36.342243, 0.34662545, 0.10813119, 155.354, -36.303432, 0.43430728, 0.10401729, 137.22464, -36.204037, 0.5198252, 0.099795155, 119.159874, -36.045223, 0.60307044, 0.095473684, 101.18912, -35.82822, 0.6839397, 0.09106178, 83.34113, -35.554344, 0.76233536, 0.086568356, 65.64402, -35.22499, 0.8381656, 0.08200232, 48.12515, -34.841618, 0.9113445, 0.077372566},
		'{-382.63885, 31.786383, 0.82754797, -0.1459217, -366.55676, 32.530922, 0.7242731, -0.14376976, -350.1191, 33.20845, 0.621463, -0.1414105, -333.35947, 33.81892, 0.5192836, -0.13885131, -316.31137, 34.3624, 0.4178968, -0.1360998, -299.0082, 34.839066, 0.31746066, -0.1331637, -281.48337, 35.249203, 0.21812896, -0.130051, -263.77005, 35.593204, 0.12005121, -0.12676983, -245.90112, 35.871574, 0.023372298, -0.12332847, -227.9093, 36.08491, -0.07176759, -0.119735345, -209.82693, 36.23392, -0.16523317, -0.11599898, -191.68597, 36.3194, -0.25689414, -0.11212802, -173.51797, 36.342243, -0.34662545, -0.10813119, -155.354, 36.303432, -0.43430728, -0.10401729, -137.22464, 36.204037, -0.5198252, -0.099795155, -119.159874, 36.045223, -0.60307044, -0.095473684, -101.18912, 35.82822, -0.6839397, -0.09106178, -83.34113, 35.554344, -0.76233536, -0.086568356, -65.64402, 35.22499, -0.8381656, -0.08200232, -48.12515, 34.841618, -0.9113445, -0.077372566},
		'{1164.9854, -57.3158, 3.6885912, -0.18126035, 1136.5121, -56.576088, 3.6517847, -0.18187673, 1108.4106, -55.828094, 3.6140108, -0.1823481, 1080.6852, -55.072643, 3.5753334, -0.18267986, 1053.3391, -54.31053, 3.5358136, -0.18287732, 1026.3756, -53.542526, 3.4955108, -0.18294565, 999.7974, -52.76937, 3.4544828, -0.18288992, 973.607, -51.991783, 3.4127858, -0.18271509, 947.8063, -51.21045, 3.3704734, -0.18242595, 922.39703, -50.426044, 3.3275983, -0.18202724, 897.3806, -49.639202, 3.2842112, -0.18152353, 872.7581, -48.850544, 3.240361, -0.18091933, 848.5303, -48.06067, 3.1960952, -0.18021901, 824.6976, -47.27014, 3.1514597, -0.17942682, 801.2602, -46.479515, 3.1064985, -0.17854694, 778.218, -45.68932, 3.0612543, -0.1775834, 755.5707, -44.900063, 3.0157685, -0.17654017, 733.3177, -44.11223, 2.9700809, -0.17542107, 711.4581, -43.326283, 2.9242294, -0.17422986, 689.991, -42.542675, 2.878251, -0.17297018},
		'{-1164.9854, 57.3158, -3.6885912, 0.18126035, -1136.5121, 56.576088, -3.6517847, 0.18187673, -1108.4106, 55.828094, -3.6140108, 0.1823481, -1080.6852, 55.072643, -3.5753334, 0.18267986, -1053.3391, 54.31053, -3.5358136, 0.18287732, -1026.3756, 53.542526, -3.4955108, 0.18294565, -999.7974, 52.76937, -3.4544828, 0.18288992, -973.607, 51.991783, -3.4127858, 0.18271509, -947.8063, 51.21045, -3.3704734, 0.18242595, -922.39703, 50.426044, -3.3275983, 0.18202724, -897.3806, 49.639202, -3.2842112, 0.18152353, -872.7581, 48.850544, -3.240361, 0.18091933, -848.5303, 48.06067, -3.1960952, 0.18021901, -824.6976, 47.27014, -3.1514597, 0.17942682, -801.2602, 46.479515, -3.1064985, 0.17854694, -778.218, 45.68932, -3.0612543, 0.1775834, -755.5707, 44.900063, -3.0157685, 0.17654017, -733.3177, 44.11223, -2.9700809, 0.17542107, -711.4581, 43.326283, -2.9242294, 0.17422986, -689.991, 42.542675, -2.878251, 0.17297018}};

		'{315.39786, -25.729626, -2.391748, -0.02091026, 327.88712, -24.224422, -2.4033616, -0.026568063, 339.61957, -22.702948, -2.4107327, -0.032088693, 350.58783, -21.168032, -2.413919, -0.037465084, 360.78583, -19.62248, -2.4129825, -0.042690527, 370.20898, -18.069077, -2.4079926, -0.04775867, 378.85406, -16.510567, -2.399024, -0.052663535, 386.71915, -14.949662, -2.3861566, -0.05739952, 393.80377, -13.389033, -2.3694756, -0.061961398, 400.10867, -11.831307, -2.3490715, -0.06634431, 405.636, -10.279063, -2.3250399, -0.0705438, 410.38907, -8.73483, -2.2974799, -0.074555784, 414.37256, -7.2010803, -2.2664957, -0.07837655, 417.5923, -5.6802287, -2.2321959, -0.08200277, 420.05533, -4.1746297, -2.1946921, -0.08543151, 421.76984, -2.6865723, -2.1541, -0.088660225, 422.7452, -1.2182797, -2.1105382, -0.091686726, 422.9918, 0.22809494, -2.0641289, -0.09450921, 422.5211, 1.6504707, -2.0149968, -0.09712625, 421.34564, 3.046841, -1.9632692, -0.09953679},
		'{315.39786, -25.729626, -2.391748, -0.02091026, 327.88712, -24.224422, -2.4033616, -0.026568063, 339.61957, -22.702948, -2.4107327, -0.032088693, 350.58783, -21.168032, -2.413919, -0.037465084, 360.78583, -19.62248, -2.4129825, -0.042690527, 370.20898, -18.069077, -2.4079926, -0.04775867, 378.85406, -16.510567, -2.399024, -0.052663535, 386.71915, -14.949662, -2.3861566, -0.05739952, 393.80377, -13.389033, -2.3694756, -0.061961398, 400.10867, -11.831307, -2.3490715, -0.06634431, 405.636, -10.279063, -2.3250399, -0.0705438, 410.38907, -8.73483, -2.2974799, -0.074555784, 414.37256, -7.2010803, -2.2664957, -0.07837655, 417.5923, -5.6802287, -2.2321959, -0.08200277, 420.05533, -4.1746297, -2.1946921, -0.08543151, 421.76984, -2.6865723, -2.1541, -0.088660225, 422.7452, -1.2182797, -2.1105382, -0.091686726, 422.9918, 0.22809494, -2.0641289, -0.09450921, 422.5211, 1.6504707, -2.0149968, -0.09712625, 421.34564, 3.046841, -1.9632692, -0.09953679},
		'{313.9008, -25.617615, -2.3192613, -0.26458496, 326.34842, -24.179775, -2.2132473, -0.25634763, 338.08737, -22.782751, -2.1099567, -0.24826594, 349.13785, -21.425854, -2.009351, -0.24033912, 359.51978, -20.108398, -1.9113904, -0.23256631, 369.25272, -18.829697, -1.8160353, -0.22494659, 378.35583, -17.589067, -1.7232461, -0.21747893, 386.848, -16.385826, -1.6329827, -0.21016228, 394.74777, -15.219293, -1.5452054, -0.20299554, 402.0733, -14.08879, -1.4598737, -0.19597752, 408.84244, -12.993643, -1.3769478, -0.189107, 415.07272, -11.933181, -1.2963876, -0.1823827, 420.78128, -10.906735, -1.2181528, -0.17580332, 425.98502, -9.913642, -1.1422035, -0.16936746, 430.70038, -8.95324, -1.0684996, -0.16307375, 434.94357, -8.024876, -0.9970013, -0.1569207, 438.73047, -7.1278963, -0.9276688, -0.15090688, 442.0766, -6.2616568, -0.8604624, -0.14503074, 444.99716, -5.425516, -0.79534274, -0.13929075, 447.50702, -4.618839, -0.73227036, -0.13368532},
		'{313.9008, -25.617615, -2.3192613, -0.26458496, 326.34842, -24.179775, -2.2132473, -0.25634763, 338.08737, -22.782751, -2.1099567, -0.24826594, 349.13785, -21.425854, -2.009351, -0.24033912, 359.51978, -20.108398, -1.9113904, -0.23256631, 369.25272, -18.829697, -1.8160353, -0.22494659, 378.35583, -17.589067, -1.7232461, -0.21747893, 386.848, -16.385826, -1.6329827, -0.21016228, 394.74777, -15.219293, -1.5452054, -0.20299554, 402.0733, -14.08879, -1.4598737, -0.19597752, 408.84244, -12.993643, -1.3769478, -0.189107, 415.07272, -11.933181, -1.2963876, -0.1823827, 420.78128, -10.906735, -1.2181528, -0.17580332, 425.98502, -9.913642, -1.1422035, -0.16936746, 430.70038, -8.95324, -1.0684996, -0.16307375, 434.94357, -8.024876, -0.9970013, -0.1569207, 438.73047, -7.1278963, -0.9276688, -0.15090688, 442.0766, -6.2616568, -0.8604624, -0.14503074, 444.99716, -5.425516, -0.79534274, -0.13929075, 447.50702, -4.618839, -0.73227036, -0.13368532}};

		'{-382.63885, -31.786383, 0.82754797, 0.1459217, -366.55676, -32.530922, 0.7242731, 0.14376976, -350.1191, -33.20845, 0.621463, 0.1414105, -333.35947, -33.81892, 0.5192836, 0.13885131, -316.31137, -34.3624, 0.4178968, 0.1360998, -299.0082, -34.839066, 0.31746066, 0.1331637, -281.48337, -35.249203, 0.21812896, 0.130051, -263.77005, -35.593204, 0.12005121, 0.12676983, -245.90112, -35.871574, 0.023372298, 0.12332847, -227.9093, -36.08491, -0.07176759, 0.119735345, -209.82693, -36.23392, -0.16523317, 0.11599898, -191.68597, -36.3194, -0.25689414, 0.11212802, -173.51797, -36.342243, -0.34662545, 0.10813119, -155.354, -36.303432, -0.43430728, 0.10401729, -137.22464, -36.204037, -0.5198252, 0.099795155, -119.159874, -36.045223, -0.60307044, 0.095473684, -101.18912, -35.82822, -0.6839397, 0.09106178, -83.34113, -35.554344, -0.76233536, 0.086568356, -65.64402, -35.22499, -0.8381656, 0.08200232, -48.12515, -34.841618, -0.9113445, 0.077372566},
		'{382.63885, 31.786383, -0.82754797, -0.1459217, 366.55676, 32.530922, -0.7242731, -0.14376976, 350.1191, 33.20845, -0.621463, -0.1414105, 333.35947, 33.81892, -0.5192836, -0.13885131, 316.31137, 34.3624, -0.4178968, -0.1360998, 299.0082, 34.839066, -0.31746066, -0.1331637, 281.48337, 35.249203, -0.21812896, -0.130051, 263.77005, 35.593204, -0.12005121, -0.12676983, 245.90112, 35.871574, -0.023372298, -0.12332847, 227.9093, 36.08491, 0.07176759, -0.119735345, 209.82693, 36.23392, 0.16523317, -0.11599898, 191.68597, 36.3194, 0.25689414, -0.11212802, 173.51797, 36.342243, 0.34662545, -0.10813119, 155.354, 36.303432, 0.43430728, -0.10401729, 137.22464, 36.204037, 0.5198252, -0.099795155, 119.159874, 36.045223, 0.60307044, -0.095473684, 101.18912, 35.82822, 0.6839397, -0.09106178, 83.34113, 35.554344, 0.76233536, -0.086568356, 65.64402, 35.22499, 0.8381656, -0.08200232, 48.12515, 34.841618, 0.9113445, -0.077372566},
		'{-1164.9854, -57.3158, -3.6885912, -0.18126035, -1136.5121, -56.576088, -3.6517847, -0.18187673, -1108.4106, -55.828094, -3.6140108, -0.1823481, -1080.6852, -55.072643, -3.5753334, -0.18267986, -1053.3391, -54.31053, -3.5358136, -0.18287732, -1026.3756, -53.542526, -3.4955108, -0.18294565, -999.7974, -52.76937, -3.4544828, -0.18288992, -973.607, -51.991783, -3.4127858, -0.18271509, -947.8063, -51.21045, -3.3704734, -0.18242595, -922.39703, -50.426044, -3.3275983, -0.18202724, -897.3806, -49.639202, -3.2842112, -0.18152353, -872.7581, -48.850544, -3.240361, -0.18091933, -848.5303, -48.06067, -3.1960952, -0.18021901, -824.6976, -47.27014, -3.1514597, -0.17942682, -801.2602, -46.479515, -3.1064985, -0.17854694, -778.218, -45.68932, -3.0612543, -0.1775834, -755.5707, -44.900063, -3.0157685, -0.17654017, -733.3177, -44.11223, -2.9700809, -0.17542107, -711.4581, -43.326283, -2.9242294, -0.17422986, -689.991, -42.542675, -2.878251, -0.17297018},
		'{1164.9854, 57.3158, 3.6885912, 0.18126035, 1136.5121, 56.576088, 3.6517847, 0.18187673, 1108.4106, 55.828094, 3.6140108, 0.1823481, 1080.6852, 55.072643, 3.5753334, 0.18267986, 1053.3391, 54.31053, 3.5358136, 0.18287732, 1026.3756, 53.542526, 3.4955108, 0.18294565, 999.7974, 52.76937, 3.4544828, 0.18288992, 973.607, 51.991783, 3.4127858, 0.18271509, 947.8063, 51.21045, 3.3704734, 0.18242595, 922.39703, 50.426044, 3.3275983, 0.18202724, 897.3806, 49.639202, 3.2842112, 0.18152353, 872.7581, 48.850544, 3.240361, 0.18091933, 848.5303, 48.06067, 3.1960952, 0.18021901, 824.6976, 47.27014, 3.1514597, 0.17942682, 801.2602, 46.479515, 3.1064985, 0.17854694, 778.218, 45.68932, 3.0612543, 0.1775834, 755.5707, 44.900063, 3.0157685, 0.17654017, 733.3177, 44.11223, 2.9700809, 0.17542107, 711.4581, 43.326283, 2.9242294, 0.17422986, 689.991, 42.542675, 2.878251, 0.17297018}};



`endif
