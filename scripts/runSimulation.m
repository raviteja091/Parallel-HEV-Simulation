function runSimulation(cycleName)
    if nargin < 1, cycleName = 'US06'; end
    load(['model/data/DriveCycle.mat'], cycleName);
    simIn = Simulink.SimulationInput('model/ParallelHEV');
    simIn = simIn.setVariable('DriveCycleData', eval(cycleName));
    simIn = simIn.setModelParameter('StopTime','DriveCycleData.time(end)');
    simOut = sim(simIn);
    save('ParallelHEV_SimulationData.mat','simOut','cycleName');
end
