#include <stdio.h>

int main()
{
    int neuronAmount1, neuronAmount2;
    neuronAmount1 = 379 + 648;
    neuronAmount2 = 4825 + 114;

    int avgFiringNum, totalNeuronFirings;
    avgFiringNum = 39;
    totalNeuronFirings = (neuronAmount1 + neuronAmount2) * avgFiringNum;

    printf("Neuron firing amount:%d\n", totalNeuronFirings);
}
