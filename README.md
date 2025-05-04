# 🛡️ Defend the Network: A Cybersecurity Simulation using Lotka-Volterra Dynamics

**Author**: Ward Spangenberg  
**Course**: Differential Equations - MA211-700, Spring 2025  
**Status**: In Development

---

## 📘 Project Overview

_Defend the Network_ is an interactive simulation built in MATLAB App Designer that visualizes cyber attack-defense dynamics using the classical Lotka-Volterra predator-prey model. By reinterpreting the predator as **attackers** and the prey as **defenders**, the simulation provides an intuitive and engaging metaphor for real-world cybersecurity battles.

Users can adjust system parameters such as defender growth rate and attacker burnout to observe how strategies affect long-term survival, escalation, or breaches. The simulation is geared toward education, cyber training, and demonstrating complex differential equations in an applied and visual way.

---

## 📊 The Mathematical Model

This simulation is governed by the Lotka-Volterra equations:

```
dx/dt = αx - βxy  
dy/dt = δxy - γy
```

### Variable Mapping:
- **x(t)**: Defender population (interpreted as firewalls, analysts, response systems)
- **y(t)**: Attacker population (interpreted as threat actors, malware, exploits)

### Parameters:
- **α** – Defender growth rate (resource scaling)
- **β** – Attack surface vulnerability (how often attackers succeed)
- **δ** – Attacker adaptation rate (how fast they improve after success)
- **γ** – Attacker burnout rate (natural decay when thwarted)

---

## ✅ Current Functionality

| Feature | Why It’s Valuable |
|--------|--------------------|
| 🎮 UI Sliders for α and γ | Lets users simulate resource scaling vs. attacker fatigue |
| 📊 Dynamic Plotting | Real-time animation of attacker vs defender populations |
| 📋 Data Table | Displays population values and derivatives for analysis |
| 🚦 Network Health Lamp | Color-coded lamp visually communicates simulation outcome |
| 📈 Gauges | Semicircular gauges represent live attacker/defender strength |
| 🎯 Difficulty Modes | Easy, Medium, Hard adjust β and δ for attacker behavior |
| 📅 Time Tracker | Live time counter during simulation |
| 🧠 Educational Overlay | Info button explains model assumptions and variable mapping |
| 🔄 Responsive UI | Layout adapts to screen width automatically |
| 📝 Final Outcome Summary | Reports final network status: secure, breached, or contested |

---

## 🔜 Planned Features (Coming Soon)

| Feature | Description |
|--------|-------------|
| 🔀 Overlay Nullclines + Fixed Point | Visual aid for system equilibrium analysis |
| 🎛️ Live Parameter Display | α, β, γ, δ values displayed live during simulation |
| 🧾 Narrative Summary | Story-like outcome description based on final state |

---

## ▶️ How to Run

1. **Requirements**:
   - MATLAB R2021a or later
   - App Designer
   - No external toolboxes required

2. **Launch Instructions**:
   - Open `DefendTheNetwork.mlapp` in MATLAB App Designer
   - Click **Run**
   - Adjust sliders and dropdowns, then click **Run Simulation**

3. **Alternate Method** (if modularized):
   - Run `main_app_launcher.m` if provided
   - Ensure `src/` directory is on MATLAB path

---

## 📁 Project Structure

```
DefendTheNetwork/
├── DefendTheNetwork.mlapp       # Main App Designer file
├── README.md                    # Project documentation
├── src/
│   ├── lv_simulation.m          # ODE logic and solution wrapper
│   ├── attacker_ai.m            # Attacker behavior parameter config
│   └── health_status.m          # Status color & label utilities
└── assets/                      # Optional images or icons
```

---

## 📚 References

1. Lotka, A. J. (1925). *Elements of Physical Biology*.  
2. Volterra, V. (1926). *Fluctuations in the abundance of a species considered mathematically*.  
3. MIT OpenCourseWare: Differential Equations Lecture Series.  
4. MATLAB Documentation: [ode45](https://www.mathworks.com/help/matlab/ref/ode45.html)

---

## 📜 License & Attribution

© 2025 Ward Spangenberg.  
Built as part of a Differential Equations course project.
