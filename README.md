
**Parallel Hybrid Electric Vehicle Simulation**

A comprehensive MATLAB Simulink model of a Parallel Hybrid Electric Vehicle (HEV), featuring an integrated Internal Combustion Engine (ICE), electric motor, battery driveline, and control strategy. This repository provides model files, supporting MATLAB scripts for automation and post-processing, and detailed documentation.

**🎯 Highlights**

- **Parallel HEV Architecture**: ICE and electric motor mechanically coupled to wheels, enabling combined or independent propulsion.
- **Model Components**: Drive Cycle, Driver Commands, Battery Dynamics, Motor & Engine Models, Driveline, Wheels & Brakes, Vehicle Dynamics.
- **Control Strategy**: Proportional–Integral (PI) controller for torque split between ICE and motor; regenerative braking interface.
- **Automated Analysis**: MATLAB scripts to run batch simulations, extract key metrics, and generate plots.
- **High-Fidelity Results**: Speed tracking, power flows, SOC evolution, and comparative performance under standard drive cycles.
- **Modular Design**: Each subsystem is a separate Simulink library block for easy reuse and extension.

**🛠️ Setup & Usage**

1. **Clone Repository**

   git clone https://github.com/raviteja091>/Parallel-HEV-Simulation.git\
   cd Parallel-HEV-Simulation

1. **Required Toolboxes**
   1. MATLAB R2023a or later
   1. Simulink
   1. Simscape
   1. Simscape Driveline
   1. Simscape Electrical
   1. Control System Toolbox
   1. Signal Processing Toolbox
1. **Open Model**

   open\_system('model/ParallelHEV.slx');

1. **Batch Simulation**

   Use the provided script to run multiple drive cycles and parameter sweeps:

   runSimulation;           % Runs default drive cycle\
   runSimulation('FTP');    % Example with FTP drive cycle

**Analyze Results**

   After simulation, extract and visualize results:

   results = analyzeResults('ParallelHEV\_SimulationData.mat');\
   exportFigures(results, 'docs/results\_overview.png');

**📖 README Sample Figures**

*Replace these placeholders with your actual images in docs/.*

- **System Architecture**\
  ![Architecture](docs/architecture)
- **Sample Results**\
  ![Results Overview](docs/results)


**✅ Testing**

Run unit tests to verify model integrity:

matlab -batch "cd tests; testModelLoad; testSimulationOutputs; exit"

**📄 License**

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

*Congratulations on achieving a robust Parallel HEV simulation! This modular framework supports advanced research, control development, and performance analysis.*

⁂
