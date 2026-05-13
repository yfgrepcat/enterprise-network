# Enterprise Network

> Multi-site enterprise network project with internal routing, interconnection with other autonomous systems, and shared network services.

## Project Overview

This project focuses on building a multi-site enterprise network and setting up an autonomous system that can interconnect with the other ASes used by the class.

### Team Members

| Name |
| --- |
| Yoann François |
| Corentin Pradier |
| Emilien Fieu |
| Thomas Silvestre |
| Nikita Ziuzin |
| Stéphane Loppinet |
| Ismael Alriyami |
| Pierre Chaveroux |

### Scope

| Area | Requirements |
| --- | --- |
| Our AS | Provide Internet access service to individual users (internal and external). |
| Our AS | Offer a zero-configuration interconnection solution for residential clients. |
| Our AS | Internal residential users are our responsibility; client management is handled by the group. |
| Our AS | Residential users (internal or external) must access the network through a consumer gateway (box). |
| Our AS | The internal user is number 2 |
| External AS | The external user is number (2+2)%4 = 0+1, , i.e., AS11 |
| Our AS | Through their gateway, residential users must be able to automatically access the enterprise network. |
| Our AS | Provide Internet access service to the enterprise network (internal and external). |
| Our AS | The internal company AS number is G2+10 (AS12). |
| Our AS | The external company is managed by Group 3: Sarah, Denisa, Tess, Simon, Nils, Mina, Alex, Louis, and Pierre-François. |
| Our AS | The connection provided to the company must allow access to both sites: intra-AS12 and external AS13. |
| Our AS | Use OSPF as the dynamic routing protocol within the AS. |
| Our AS | Our AS12 IP range is 120.0.162.0/20. |
| Enterprise site | Implement network services and dynamic addressing (DHCP). |
| Enterprise site | Implement internal network access security. |
| Enterprise site | Implement user management. |
| Enterprise site | Deploy the enterprise DNS service. |
| Enterprise site | Deploy the VoIP service. |
| Enterprise site | Deploy the company's web service. |
| Enterprise site | Set up a VPN between the two company sites. |
| Enterprise site | Set up a VPN between the companies and residential users. |

## Project Tracking

### Enterprise Site Tasks

| Task | Status | Completion date |
| --- | --- | --- |
| Network services and dynamic addressing | KO | - |
| Internal network access security | KO | - |
| User management | KO | - |
| Enterprise DNS | KO | - |
| VoIP service | KO | - |
| Enterprise web service | KO | - |
| VPN between company sites | KO | - |
| VPN between company and residential users | KO | - |

### Work Packages



| Team | Members | Iteration Number | Focus | Status |
| --- | --- | --- | --- | --- |
| Team 1 | Ismael & Pierre | 1 | DNS and DHCP setup in the AS | KO |
| Team 2 | Nikita & Stéphane | 1 | VoIP and web Docker setup inside the enterprise | KO |
| Team 3 | Corentin & Emilien | 1 | eBGP interconnection and VPN | KO |
| Team 4 | Yoann & Thomas | 1 |  Internal AS routing | KO |

## Deployment Procedure

1. Clone the repository and move into the project directory.

   ```bash
   git clone https://github.com/yfgrepcat/enterprise-network.git
   cd enterprise-network
   ```

2. Optional: install the Containerlab VS Code extension if you want easier lab management.

   See the official guide: https://containerlab.dev/manual/vsc-extension/

3. Deploy the lab environment with Containerlab.

   Use the CLI if Containerlab is already installed on your system:

   ```bash
   sudo containerlab deploy --topo clab-topology.yaml
   ```

   > Note: `sudo` may be disabled in recent Containerlab setups. If that happens, add your user to the `docker` and `clab_admins` groups so you can run Containerlab without `sudo`.

   Or deploy it from VS Code:

   - Open the Containerlab extension in the VS Code sidebar.
   - Select the `clab-topology.yaml` topology file.
   - Click `Deploy Lab` to start the environment.
