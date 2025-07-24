function results = analyzeResults(dataFile)
    S = load(dataFile,'simOut','cycleName');
    logs = S.simOut.logsout;
    results.speed = logs.getElement('VehicleSpeed').Values.Data;
    results.time  = logs.getElement('VehicleSpeed').Values.Time;
    results.enginePower = logs.getElement('EnginePower').Values.Data;
    results.motorPower  = logs.getElement('MotorPower').Values.Data;
    results.SOC         = logs.getElement('BatterySOC').Values.Data;
    figure; plot(results.time, results.speed, 'k-', ...
                 results.time, logs.getElement('DriveCycle').Values.Data,'g--');
    legend('Actual Speed','Drive Cycle'); xlabel('Time (s)'); ylabel('Speed (km/h)');
end
