# Enterprise-Network

## Project Overview (To be translated)
* Ce projet a pour objectif de la mise en oeuvre d'un réseau d'entreprise multu-sites et la mise en place d'un AS incluant son interconnexion avec d'autres AS, ceux des autres groupes de la classe. Le notre est composé de : 
- Yoann François,
- Corentin Pradier, 
- Emilien Fieu, 
- Thomas Silvestre, 
- Nikita Ziuzin, 
- Stéphane Loppinet, 
- Ismael Alriyami
- Pierre Chaveroux

* Le cahier des charges est le suivant pour les différentes parties : 
1. Sur notre AS : 
- Doit fournir un service d'accès Internet au particulier : particulier de l'entreprise Interne et Externe
- Doit proposer une solution d'interconnexion sans configuration pour les clients particuliers
- Le particulier interne est à notre charge, le particulier est géré par le groupe
- Doit fournir un service d'accès Internet au réseau d'entreprise : entreprise Interne et Externe
- L'entreprise interne a pour numéro d'AS G2+10 donc AS12
- L'entreprise externe est gérée par le groupe 3, donc Sarah, Denisa, Tess, Simon, Nils, Mina, Alex, Louis, Pierre-François.
- Doit utiliser le protocole de routage dynamique OSPF, en intra-AS
- Doit proposer une solution d'interconnexion sans configuration pour les clients particuliers
- Notre AS12 a pour plage IP 120.0.162.0/20

## Tasks
* Team1(Ismail & Pierre): DNS & DHCP setup in AS
* Team2(Nikita & Stéphane): VoIP & Web Docker setup inside Enterprise
* Team3(Corentin & Emilien): eBGP interconnection and VPN 
* Team4(Yoann & Thomas): Internal AS routing

## Deployment Procedure

1. Clone the repository and navigate to the project directory:
   ```bash
   git clone https://github.com/yfgrepcat/enterprise-network.git
   cd enterprise-network
   ``` 
2. (Optional) Install the containerlab VSCode extension for easier management of the lab environment.

        see: https://containerlab.dev/manual/vsc-extension/

3. Deploy the lab environment using containerlab:

    Manually through the CLI (requires containerlab to be installed on your system):
    ```bash
    sudo containerlab deploy --topo clab-topology.yaml
    ```
    > Note: `sudo` may be disabled on recent versions of containerlab, so you may need to add your user to the `docker` and `clab_admins` groups to run containerlab without `sudo`.

    Or through the VSCode extension:
    - Click on the Containerlab extension in the VSCode sidebar.
    - Select the `clab-topology.yaml` file from the list of available topologies.
    - Click the "Deploy Lab" button to start the lab environment.