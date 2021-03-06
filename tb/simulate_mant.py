#!/usr/local/bin/python3.9

import os
import sys
import numpy as np
import plot

# Arguments to pass directly to simulation script
superarg = ''
# Output file prefix
outfileName = 'results_batch_mant'
topModule = 'Batch'
topMant = 23
dsr=12
for arg in sys.argv:
    content = arg.split('=')
    if content[0] == '-help':
        print("Simulation mantissa script overrides following property:")
        print("-mant=\t\t the highest number of mantissa bits in the sweep\n")
        os.system('./simulate.py -help')
        sys.exit()
    elif content[0] == '-mant':
        topMant = int(content[1])
    elif content[0] == '-out':
        outfileName = content[1]
    elif content[0] == '-dsr':
        dsr = int(content[1])
        superarg += ' ' + arg
    elif content[0] == '-top':
        if content[1] == 'TB_Batch_Flp':
            topModule = 'Batch Floating-point'
        elif content[1] == 'TB_FIR_Flp':
            topModule = 'FIR Floating-point'
        elif content[1] == 'TB_FIR_Fxp':
            topModule = 'FIR Fixed-point'
        elif content[1] == 'TB_Batch_Fxp':
            topModule = 'Batch Fixed-point'
        elif content[1] == 'TB_Hybrid_Fxp':
            topModule = 'Hybrid Fixed-point'
        superarg = superarg + ' ' + arg
    elif content[0].find('.py') != -1:
        # Skip self-reference
        continue
    else:
        superarg += ' ' + arg
print(superarg)

for i in range(7, topMant+1):
    os.system('./simulate.py -noplot' + superarg + ' -out=' + outfileName + str(i) + ' -mant=' + str(i))

plot.PlotSeries(outfileName, np.arange(7, topMant+1), topModule + ' with mantissa bits = ', dsr, 240e6/dsr, topModule + " SNR", "Mantissa bits")

