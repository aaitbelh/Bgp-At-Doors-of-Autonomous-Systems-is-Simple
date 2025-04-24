# 🔄 Part 2 – Discovering a VXLAN

Welcome to Part 2 of the **BADASS** (Bgp At Doors of Autonomous Systems is Simple) project. This section is dedicated to **VXLAN networking**, a key technology for building scalable virtual Layer 2 networks over Layer 3 infrastructure.

> 🧠 This part was fully implemented by **Me**, focusing on deep network emulation using GNS3 and Docker.

---

## 🎯 Objective

Build and simulate a **VXLAN**-based network using GNS3 and Docker containers. The goal is to:
- Understand static and dynamic VXLAN configurations.
- Visualize network overlay tunneling and multicast behavior.
- Explore traffic encapsulation over Layer 3 infrastructure.

---

## 🧱 Technologies Used

- **GNS3** for network topology simulation
- **Docker** with custom images (routing-ready)
- **Linux bridge** (`br0`) and `vxlan10` for overlay network
- **Multicast Grouping** (e.g., `239.1.1.1`) for dynamic VXLAN
- Basic tools like `ip`, `bridge`, `tcpdump`, etc.

---

## 🌐 Network Design

### ⚙️ VXLAN ID: `10`
### 🔗 Bridge: `br0`
### 🏷️ Interface Name: `vxlan10`
### 📡 Multicast Group (for dynamic VXLAN): `239.1.1.1`

---

## 🛠️ What Was Done

### ✅ Static VXLAN
- Created a VXLAN tunnel between two Docker containers across GNS3 links.
- Assigned VXLAN interface and attached it to a Linux bridge (`br0`).
- Verified connectivity and encapsulation using `tcpdump`.

### ✅ Dynamic Multicast VXLAN
- Implemented multicast-based VXLAN discovery.
- Assigned group address (e.g., `239.1.1.1`) to VXLAN interface.
- Observed auto-learning of MAC addresses using `bridge fdb` and `ip link`.

### ✅ Traffic Inspection
- Used `tcpdump` and `bridge` commands to inspect:
  - Encapsulation behavior
  - MAC learning
  - VXLAN multicast traffic

---

## 🔍 Screenshots & Demo (Optional)

If you have any screenshots or terminal outputs, add them here like this:

```markdown
![VXLAN Setup in GNS3](assets/vxlan-gns3-topology.png)![alt text](image.png)
<img src="assets/vxlan-demo.gif" alt="VXLAN demo" width="600"/>



