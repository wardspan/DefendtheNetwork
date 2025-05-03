
# Defend the Network

An interactive MATLAB-based simulation that models attacker vs. defender dynamics in cybersecurity using the classic Lotka-Volterra predator-prey equations.

## 📘 Project Overview

Inspired by real-world network defense scenarios, this simulation uses differential equations to visualize how defenders (Blue Team) and attackers (Red Team) interact over time. The attacker adapts and escalates threats, while the defender adjusts resources and countermeasures. The simulation plots population dynamics and includes features like evolving AI behavior, breach alerts, and a system health meter.

## 🔬 Mathematical Model

This project is built on the Lotka-Volterra equations:

dx/dt = αx - βxy

dy/dt = δxy - γy

Where:
- `x(t)`: Defender population
- `y(t)`: Attacker population
- `α`: Defender growth rate
- `β`: Attack surface exploitation rate
- `δ`: Attacker reproduction from successful exploits
- `γ`: Attacker decay rate

## 🚀 How to Run

1. Open `app/DefendTheNetwork.mlapp` in MATLAB App Designer.
2. Run the app.
3. Adjust the sliders to change defender parameters.
4. Click `Run Simulation` to watch how the system evolves.

## 🧠 Features

- Real-time ODE solving with `ode45`
- Adjustable defender parameters
- Evolving/random attacker behavior
- Live population plot (Defenders vs. Attackers)
- Breach detection and system status indicator (WIP)
- Expandable to include decision-making and missions

## 🗂️ Project Structure

```
DefendTheNetwork/
├── app/
│   └── DefendTheNetwork.mlapp
├── src/
│   ├── lv_simulation.m
│   ├── attacker_ai.m
│   └── health_status.m
├── assets/
│   └── screenshots/
├── README.md
├── .gitignore
└── LICENSE (optional)
```

## 📚 References

- Lotka, A. J. *Elements of Physical Biology*. 1925.
- Strogatz, S. H. *Nonlinear Dynamics and Chaos*. Westview Press, 2014.
- MathWorks Documentation: [ode45](https://www.mathworks.com/help/matlab/ref/ode45.html)

---

© 2025 Ward Spangenberg. Built as part of a Differential Equations course project.
