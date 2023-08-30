# **Scrolling-Message-Display-Board**

Author: [Sahaj Singh](https://github.com/SatireSage)

# Contents:

- [Component Design Overview](#Component-Design-Overview)
  - [Control Unit](#Control-Unit)
  - [Datapath](#Datapath)
  - [Scheduler](#Scheduler)
  - [Prescale](#Prescale)
  - [Debouncer](#Debouncer)
  - [Program Execution Counter (PEC)](#Program-Execution-Counter)
  - [IO Controller](#IO-Controller)
  - [Custom 7Segment Display Controller](#Custom-7Segment-Display-Controller)
  - [Application Specific Instruction Set Processor (ASIP)](#Application-Specific-Instruction-Set-Processor)
  - [Scrolling Message Display Board (SMDB)](#Scrolling-Message-Display-Board)

## **Component Design Overview**

The Scrolling Message Display Board (SMDB) is a digital system designed to display scrolling messages on HEX displays. This project encompasses various components, including the Application Specific Instruction set Processor (ASIP), Control Units, IO Controllers, and more. This repository contains the VHDL designs, testbenches, and associated documentation for the SMDB.

#### Structural Diagram of SMDB:
![FE8622C4-47B0-48A2-8173-BC0915EDE35F](https://github.com/SatireSage/Scrolling-Message-Display-Board/assets/49692422/5e2ea0b4-f3f6-4961-a4ab-0e842526b0a4)
#### Structural Diagram of ASIP:
![6D700962-13F3-40EF-AD2B-58441C38751C](https://github.com/SatireSage/Scrolling-Message-Display-Board/assets/49692422/ded4f70f-f5c4-4968-afee-692eb720cda0)

These subsystems work together to the system to display scrolling messages on the HEX displays. The ASIP is responsible for executing the program instructions, while the IO Controller manages the input and output devices. The Control Unit coordinates the operation of the system, and the Scheduler determines the order in which the instructions are executed.

A brief description of all the components in the design are as follows:

### 1. Control Unit

The Control Unit, the system's core, seamlessly orchestrates operations. It decodes the scheduler's instructions and efficiently sequences commands, directing data to the HEX display, ensuring SMDB's smooth functionality.

### 2. Datapath

The Datapath acts as the system's main communication channel, streamlining the flow between the scheduler and the Program Execution Counter (PEC). This conduit guarantees efficient relay of instructions and data, underpinning system synchronicity.

### 3. Scheduler

The Scheduler, the system's regulatory core, diligently oversees program switch inputs, directing program execution using non-preemptive scheduling. Adaptive by design, it returns to an idle state post-program termination or upon a reset, priming the system for subsequent tasks.

### 4. Prescale

The Prescale module, the system's tempo regulator, modulates the clock signal, affecting the HEX display's scrolling rate. This control ensures the SMDB's output adapts to user preferences, offering a tailored viewing pace.

### 5. Debouncer

The Debouncer stabilizes external switch inputs, filtering out unintended toggles and presenting a consistent signal to the system. A pre-configured debouncer circuit needs incorporation into the ASIP design.

### 6. Program Execution Counter (PEC)

The PEC tracks valid ASIP-executed programs, displaying the binary count on Green LEDs. This visual counter remains active until a hard reset interrupts its function.

### 7. IO Controller

The IO Controller manages system IO operations, chiefly instantiating the 8 Custom7Segment converters for the SMDB, ensuring efficient data relay between converters and other modules.

### 8. Custom7Seg (7Seg)

This tailored 7Segment converter displays specific characters required by the programs, converting input data into relevant HEX display segments.

### 9. Application Specific Instruction set Processor (ASIP)

ASIP, a pivotal component, integrates the Control, Datapath, and IO Controller. Customized for the SMDB's requirements, it ensures efficient instruction handling.

### 10. Scrolling Message Display Board (SMDB)

The SMDB is the user-facing interface, harmonizing all components for a cohesive display experience. It manages the ASIP, debounce, and prescaler circuits, guiding them to their respective FPGA connections.

## License

This project is licensed under the MIT License.
