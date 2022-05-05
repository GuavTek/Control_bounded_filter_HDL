`ifndef COEFFICIENTS_SV_
`define COEFFICIENTS_SV_
package Coefficients;
	localparam N = 4;
	localparam M = 4;
	localparam real Lfr[0:3] = {0.98900646, 0.98900646, 0.97591347, 0.97591347};








		'{183.25674, 17.803015, -1.9955642, 0.02115994, 191.84448, 16.545134, -2.006414, 0.027916582, 199.79929, 15.271762, -2.0121887, 0.034473382, 207.11423, 13.98629, -2.0129735, 0.040818363, 213.78412, 12.69207, -2.0088646, 0.046940286, 219.80539, 11.392408, -1.9999676, 0.05282868, 225.17615, 10.090563, -1.9863975, 0.058473844, 229.89612, 8.78973, -1.9682786, 0.06386685, 233.96657, 7.493044, -1.945744, 0.068999566, 237.39035, 6.2035656, -1.9189346, 0.073864646, 240.17183, 4.924279, -1.8879989, 0.07845553, 242.31682, 3.6580853, -1.8530928, 0.08276646, 243.83257, 2.4077973, -1.8143785, 0.086792454, 244.7277, 1.1761336, -1.7720243, 0.090529345, 245.01224, -0.03428483, -1.7262039, 0.093973726, 244.69739, -1.2209402, -1.6770965, 0.09712297, 243.79565, -2.3814216, -1.6248852, 0.09997521, 242.32071, -3.5134282, -1.5697573, 0.10252937, 240.28734, -4.614774, -1.5119035, 0.10478506, 237.71138, -5.683389, -1.4515173, 0.10674267},
		'{183.25674, 17.803015, -1.9955642, 0.02115994, 191.84448, 16.545134, -2.006414, 0.027916582, 199.79929, 15.271762, -2.0121887, 0.034473382, 207.11423, 13.98629, -2.0129735, 0.040818363, 213.78412, 12.69207, -2.0088646, 0.046940286, 219.80539, 11.392408, -1.9999676, 0.05282868, 225.17615, 10.090563, -1.9863975, 0.058473844, 229.89612, 8.78973, -1.9682786, 0.06386685, 233.96657, 7.493044, -1.945744, 0.068999566, 237.39035, 6.2035656, -1.9189346, 0.073864646, 240.17183, 4.924279, -1.8879989, 0.07845553, 242.31682, 3.6580853, -1.8530928, 0.08276646, 243.83257, 2.4077973, -1.8143785, 0.086792454, 244.7277, 1.1761336, -1.7720243, 0.090529345, 245.01224, -0.03428483, -1.7262039, 0.093973726, 244.69739, -1.2209402, -1.6770965, 0.09712297, 243.79565, -2.3814216, -1.6248852, 0.09997521, 242.32071, -3.5134282, -1.5697573, 0.10252937, 240.28734, -4.614774, -1.5119035, 0.10478506, 237.71138, -5.683389, -1.4515173, 0.10674267},
		'{-182.00656, -17.691608, 1.9211302, -0.2637629, -190.55325, -16.50202, 1.8158827, -0.2539327, -198.51532, -15.352927, 1.7138801, -0.2443255, -205.9128, -14.243513, 1.615066, -0.23493986, -212.7653, -13.172956, 1.5193839, -0.22577423, -219.09207, -12.14044, 1.4267766, -0.21682692, -224.91194, -11.145147, 1.3371872, -0.20809613, -230.24329, -10.186268, 1.2505579, -0.19957995, -235.10413, -9.262992, 1.1668315, -0.19127631, -239.51207, -8.374516, 1.0859503, -0.18318307, -243.48431, -7.520039, 1.0078568, -0.17529799, -247.03764, -6.6987696, 0.93249375, -0.16761872, -250.18848, -5.909919, 0.85980356, -0.16014284, -252.95282, -5.1527047, 0.7897292, -0.15286785, -255.34631, -4.4263535, 0.7222136, -0.14579117, -257.3842, -3.7300978, 0.6572003, -0.13891017, -259.0813, -3.0631773, 0.5946326, -0.13222215, -260.45212, -2.4248407, 0.5344547, -0.12572433, -261.51077, -1.8143445, 0.47661078, -0.11941391, -262.27097, -1.2309542, 0.42104563, -0.11328804},
		'{-182.00656, -17.691608, 1.9211302, -0.2637629, -190.55325, -16.50202, 1.8158827, -0.2539327, -198.51532, -15.352927, 1.7138801, -0.2443255, -205.9128, -14.243513, 1.615066, -0.23493986, -212.7653, -13.172956, 1.5193839, -0.22577423, -219.09207, -12.14044, 1.4267766, -0.21682692, -224.91194, -11.145147, 1.3371872, -0.20809613, -230.24329, -10.186268, 1.2505579, -0.19957995, -235.10413, -9.262992, 1.1668315, -0.19127631, -239.51207, -8.374516, 1.0859503, -0.18318307, -243.48431, -7.520039, 1.0078568, -0.17529799, -247.03764, -6.6987696, 0.93249375, -0.16761872, -250.18848, -5.909919, 0.85980356, -0.16014284, -252.95282, -5.1527047, 0.7897292, -0.15286785, -255.34631, -4.4263535, 0.7222136, -0.14579117, -257.3842, -3.7300978, 0.6572003, -0.13891017, -259.0813, -3.0631773, 0.5946326, -0.13222215, -260.45212, -2.4248407, 0.5344547, -0.12572433, -261.51077, -1.8143445, 0.47661078, -0.11941391, -262.27097, -1.2309542, 0.42104563, -0.11328804}};

		'{-220.94467, 22.134588, 0.68327236, -0.14565031, -209.72185, 22.745558, 0.58000046, -0.14303371, -198.2103, 23.28945, 0.4773432, -0.14012164, -186.44359, 23.766256, 0.3755374, -0.13692695, -174.4552, 24.176136, 0.27481315, -0.1334629, -162.27855, 24.519405, 0.17539336, -0.12974317, -149.94682, 24.796534, 0.0774935, -0.12578177, -137.49294, 25.008144, -0.018678905, -0.12159303, -124.94948, 25.155006, -0.11292458, -0.11719154, -112.34858, 25.23803, -0.20505281, -0.11259214, -99.72192, 25.258263, -0.29488173, -0.10780984, -87.100586, 25.216887, -0.3822386, -0.10285982, -74.51508, 25.115202, -0.4669601, -0.09775735, -61.9952, 24.954641, -0.54889244, -0.09251777, -49.570004, 24.73674, -0.62789166, -0.08715648, -37.267746, 24.463152, -0.70382357, -0.08168884, -25.115845, 24.135626, -0.77656424, -0.0761302, -13.140806, 23.756014, -0.84599984, -0.070495784, -1.3681931, 23.326256, -0.91202664, -0.064800754, 10.1774235, 22.84837, -0.9745514, -0.05906008},
		'{220.94467, -22.134588, -0.68327236, 0.14565031, 209.72185, -22.745558, -0.58000046, 0.14303371, 198.2103, -23.28945, -0.4773432, 0.14012164, 186.44359, -23.766256, -0.3755374, 0.13692695, 174.4552, -24.176136, -0.27481315, 0.1334629, 162.27855, -24.519405, -0.17539336, 0.12974317, 149.94682, -24.796534, -0.0774935, 0.12578177, 137.49294, -25.008144, 0.018678905, 0.12159303, 124.94948, -25.155006, 0.11292458, 0.11719154, 112.34858, -25.23803, 0.20505281, 0.11259214, 99.72192, -25.258263, 0.29488173, 0.10780984, 87.100586, -25.216887, 0.3822386, 0.10285982, 74.51508, -25.115202, 0.4669601, 0.09775735, 61.9952, -24.954641, 0.54889244, 0.09251777, 49.570004, -24.73674, 0.62789166, 0.08715648, 37.267746, -24.463152, 0.70382357, 0.08168884, 25.115845, -24.135626, 0.77656424, 0.0761302, 13.140806, -23.756014, 0.84599984, 0.070495784, 1.3681931, -23.326256, 0.91202664, 0.064800754, -10.1774235, -22.84837, 0.9745514, 0.05906008},
		'{672.33044, -39.69634, 3.066378, -0.18078938, 652.6359, -39.08045, 3.0294678, -0.18150762, 633.25134, -38.45651, 2.9914224, -0.18201949, 614.18054, -37.8255, 2.9523318, -0.18233427, 595.4269, -37.188354, 2.912282, -0.18246095, 576.99304, -36.545963, 2.8713567, -0.1824083, 558.8816, -35.89919, 2.8296363, -0.18218485, 541.0945, -35.24885, 2.7871976, -0.18179886, 523.63324, -34.595737, 2.744115, -0.18125838, 506.49905, -33.940594, 2.70046, -0.18057121, 489.69284, -33.284145, 2.6563008, -0.17974496, 473.215, -32.627075, 2.6117032, -0.17878693, 457.06573, -31.970037, 2.5667305, -0.17770432, 441.24484, -31.313652, 2.5214431, -0.17650399, 425.75186, -30.658514, 2.4758987, -0.17519264, 410.58603, -30.005186, 2.430153, -0.17377679, 395.74628, -29.354204, 2.3842585, -0.1722627, 381.23135, -28.706076, 2.3382664, -0.17065646, 367.03964, -28.061283, 2.2922244, -0.16896392, 353.16943, -27.420277, 2.246179, -0.1671908},
		'{-672.33044, 39.69634, -3.066378, 0.18078938, -652.6359, 39.08045, -3.0294678, 0.18150762, -633.25134, 38.45651, -2.9914224, 0.18201949, -614.18054, 37.8255, -2.9523318, 0.18233427, -595.4269, 37.188354, -2.912282, 0.18246095, -576.99304, 36.545963, -2.8713567, 0.1824083, -558.8816, 35.89919, -2.8296363, 0.18218485, -541.0945, 35.24885, -2.7871976, 0.18179886, -523.63324, 34.595737, -2.744115, 0.18125838, -506.49905, 33.940594, -2.70046, 0.18057121, -489.69284, 33.284145, -2.6563008, 0.17974496, -473.215, 32.627075, -2.6117032, 0.17878693, -457.06573, 31.970037, -2.5667305, 0.17770432, -441.24484, 31.313652, -2.5214431, 0.17650399, -425.75186, 30.658514, -2.4758987, 0.17519264, -410.58603, 30.005186, -2.430153, 0.17377679, -395.74628, 29.354204, -2.3842585, 0.1722627, -381.23135, 28.706076, -2.3382664, 0.17065646, -367.03964, 28.061283, -2.2922244, 0.16896392, -353.16943, 27.420277, -2.246179, 0.1671908}};

		'{183.25674, -17.803015, -1.9955642, -0.02115994, 191.84448, -16.545134, -2.006414, -0.027916582, 199.79929, -15.271762, -2.0121887, -0.034473382, 207.11423, -13.98629, -2.0129735, -0.040818363, 213.78412, -12.69207, -2.0088646, -0.046940286, 219.80539, -11.392408, -1.9999676, -0.05282868, 225.17615, -10.090563, -1.9863975, -0.058473844, 229.89612, -8.78973, -1.9682786, -0.06386685, 233.96657, -7.493044, -1.945744, -0.068999566, 237.39035, -6.2035656, -1.9189346, -0.073864646, 240.17183, -4.924279, -1.8879989, -0.07845553, 242.31682, -3.6580853, -1.8530928, -0.08276646, 243.83257, -2.4077973, -1.8143785, -0.086792454, 244.7277, -1.1761336, -1.7720243, -0.090529345, 245.01224, 0.03428483, -1.7262039, -0.093973726, 244.69739, 1.2209402, -1.6770965, -0.09712297, 243.79565, 2.3814216, -1.6248852, -0.09997521, 242.32071, 3.5134282, -1.5697573, -0.10252937, 240.28734, 4.614774, -1.5119035, -0.10478506, 237.71138, 5.683389, -1.4515173, -0.10674267},
		'{183.25674, -17.803015, -1.9955642, -0.02115994, 191.84448, -16.545134, -2.006414, -0.027916582, 199.79929, -15.271762, -2.0121887, -0.034473382, 207.11423, -13.98629, -2.0129735, -0.040818363, 213.78412, -12.69207, -2.0088646, -0.046940286, 219.80539, -11.392408, -1.9999676, -0.05282868, 225.17615, -10.090563, -1.9863975, -0.058473844, 229.89612, -8.78973, -1.9682786, -0.06386685, 233.96657, -7.493044, -1.945744, -0.068999566, 237.39035, -6.2035656, -1.9189346, -0.073864646, 240.17183, -4.924279, -1.8879989, -0.07845553, 242.31682, -3.6580853, -1.8530928, -0.08276646, 243.83257, -2.4077973, -1.8143785, -0.086792454, 244.7277, -1.1761336, -1.7720243, -0.090529345, 245.01224, 0.03428483, -1.7262039, -0.093973726, 244.69739, 1.2209402, -1.6770965, -0.09712297, 243.79565, 2.3814216, -1.6248852, -0.09997521, 242.32071, 3.5134282, -1.5697573, -0.10252937, 240.28734, 4.614774, -1.5119035, -0.10478506, 237.71138, 5.683389, -1.4515173, -0.10674267},
		'{182.00656, -17.691608, -1.9211302, -0.2637629, 190.55325, -16.50202, -1.8158827, -0.2539327, 198.51532, -15.352927, -1.7138801, -0.2443255, 205.9128, -14.243513, -1.615066, -0.23493986, 212.7653, -13.172956, -1.5193839, -0.22577423, 219.09207, -12.14044, -1.4267766, -0.21682692, 224.91194, -11.145147, -1.3371872, -0.20809613, 230.24329, -10.186268, -1.2505579, -0.19957995, 235.10413, -9.262992, -1.1668315, -0.19127631, 239.51207, -8.374516, -1.0859503, -0.18318307, 243.48431, -7.520039, -1.0078568, -0.17529799, 247.03764, -6.6987696, -0.93249375, -0.16761872, 250.18848, -5.909919, -0.85980356, -0.16014284, 252.95282, -5.1527047, -0.7897292, -0.15286785, 255.34631, -4.4263535, -0.7222136, -0.14579117, 257.3842, -3.7300978, -0.6572003, -0.13891017, 259.0813, -3.0631773, -0.5946326, -0.13222215, 260.45212, -2.4248407, -0.5344547, -0.12572433, 261.51077, -1.8143445, -0.47661078, -0.11941391, 262.27097, -1.2309542, -0.42104563, -0.11328804},
		'{182.00656, -17.691608, -1.9211302, -0.2637629, 190.55325, -16.50202, -1.8158827, -0.2539327, 198.51532, -15.352927, -1.7138801, -0.2443255, 205.9128, -14.243513, -1.615066, -0.23493986, 212.7653, -13.172956, -1.5193839, -0.22577423, 219.09207, -12.14044, -1.4267766, -0.21682692, 224.91194, -11.145147, -1.3371872, -0.20809613, 230.24329, -10.186268, -1.2505579, -0.19957995, 235.10413, -9.262992, -1.1668315, -0.19127631, 239.51207, -8.374516, -1.0859503, -0.18318307, 243.48431, -7.520039, -1.0078568, -0.17529799, 247.03764, -6.6987696, -0.93249375, -0.16761872, 250.18848, -5.909919, -0.85980356, -0.16014284, 252.95282, -5.1527047, -0.7897292, -0.15286785, 255.34631, -4.4263535, -0.7222136, -0.14579117, 257.3842, -3.7300978, -0.6572003, -0.13891017, 259.0813, -3.0631773, -0.5946326, -0.13222215, 260.45212, -2.4248407, -0.5344547, -0.12572433, 261.51077, -1.8143445, -0.47661078, -0.11941391, 262.27097, -1.2309542, -0.42104563, -0.11328804}};

		'{-220.94467, -22.134588, 0.68327236, 0.14565031, -209.72185, -22.745558, 0.58000046, 0.14303371, -198.2103, -23.28945, 0.4773432, 0.14012164, -186.44359, -23.766256, 0.3755374, 0.13692695, -174.4552, -24.176136, 0.27481315, 0.1334629, -162.27855, -24.519405, 0.17539336, 0.12974317, -149.94682, -24.796534, 0.0774935, 0.12578177, -137.49294, -25.008144, -0.018678905, 0.12159303, -124.94948, -25.155006, -0.11292458, 0.11719154, -112.34858, -25.23803, -0.20505281, 0.11259214, -99.72192, -25.258263, -0.29488173, 0.10780984, -87.100586, -25.216887, -0.3822386, 0.10285982, -74.51508, -25.115202, -0.4669601, 0.09775735, -61.9952, -24.954641, -0.54889244, 0.09251777, -49.570004, -24.73674, -0.62789166, 0.08715648, -37.267746, -24.463152, -0.70382357, 0.08168884, -25.115845, -24.135626, -0.77656424, 0.0761302, -13.140806, -23.756014, -0.84599984, 0.070495784, -1.3681931, -23.326256, -0.91202664, 0.064800754, 10.1774235, -22.84837, -0.9745514, 0.05906008},
		'{220.94467, 22.134588, -0.68327236, -0.14565031, 209.72185, 22.745558, -0.58000046, -0.14303371, 198.2103, 23.28945, -0.4773432, -0.14012164, 186.44359, 23.766256, -0.3755374, -0.13692695, 174.4552, 24.176136, -0.27481315, -0.1334629, 162.27855, 24.519405, -0.17539336, -0.12974317, 149.94682, 24.796534, -0.0774935, -0.12578177, 137.49294, 25.008144, 0.018678905, -0.12159303, 124.94948, 25.155006, 0.11292458, -0.11719154, 112.34858, 25.23803, 0.20505281, -0.11259214, 99.72192, 25.258263, 0.29488173, -0.10780984, 87.100586, 25.216887, 0.3822386, -0.10285982, 74.51508, 25.115202, 0.4669601, -0.09775735, 61.9952, 24.954641, 0.54889244, -0.09251777, 49.570004, 24.73674, 0.62789166, -0.08715648, 37.267746, 24.463152, 0.70382357, -0.08168884, 25.115845, 24.135626, 0.77656424, -0.0761302, 13.140806, 23.756014, 0.84599984, -0.070495784, 1.3681931, 23.326256, 0.91202664, -0.064800754, -10.1774235, 22.84837, 0.9745514, -0.05906008},
		'{-672.33044, -39.69634, -3.066378, -0.18078938, -652.6359, -39.08045, -3.0294678, -0.18150762, -633.25134, -38.45651, -2.9914224, -0.18201949, -614.18054, -37.8255, -2.9523318, -0.18233427, -595.4269, -37.188354, -2.912282, -0.18246095, -576.99304, -36.545963, -2.8713567, -0.1824083, -558.8816, -35.89919, -2.8296363, -0.18218485, -541.0945, -35.24885, -2.7871976, -0.18179886, -523.63324, -34.595737, -2.744115, -0.18125838, -506.49905, -33.940594, -2.70046, -0.18057121, -489.69284, -33.284145, -2.6563008, -0.17974496, -473.215, -32.627075, -2.6117032, -0.17878693, -457.06573, -31.970037, -2.5667305, -0.17770432, -441.24484, -31.313652, -2.5214431, -0.17650399, -425.75186, -30.658514, -2.4758987, -0.17519264, -410.58603, -30.005186, -2.430153, -0.17377679, -395.74628, -29.354204, -2.3842585, -0.1722627, -381.23135, -28.706076, -2.3382664, -0.17065646, -367.03964, -28.061283, -2.2922244, -0.16896392, -353.16943, -27.420277, -2.246179, -0.1671908},
		'{672.33044, 39.69634, 3.066378, 0.18078938, 652.6359, 39.08045, 3.0294678, 0.18150762, 633.25134, 38.45651, 2.9914224, 0.18201949, 614.18054, 37.8255, 2.9523318, 0.18233427, 595.4269, 37.188354, 2.912282, 0.18246095, 576.99304, 36.545963, 2.8713567, 0.1824083, 558.8816, 35.89919, 2.8296363, 0.18218485, 541.0945, 35.24885, 2.7871976, 0.18179886, 523.63324, 34.595737, 2.744115, 0.18125838, 506.49905, 33.940594, 2.70046, 0.18057121, 489.69284, 33.284145, 2.6563008, 0.17974496, 473.215, 32.627075, 2.6117032, 0.17878693, 457.06573, 31.970037, 2.5667305, 0.17770432, 441.24484, 31.313652, 2.5214431, 0.17650399, 425.75186, 30.658514, 2.4758987, 0.17519264, 410.58603, 30.005186, 2.430153, 0.17377679, 395.74628, 29.354204, 2.3842585, 0.1722627, 381.23135, 28.706076, 2.3382664, 0.17065646, 367.03964, 28.061283, 2.2922244, 0.16896392, 353.16943, 27.420277, 2.246179, 0.1671908}};



`endif
