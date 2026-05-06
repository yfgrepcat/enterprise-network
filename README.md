# Enterprise-Network

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
- Le particulier interne est à notre charge, le particulier est géré par le groupe (2+2)%4 = **0 ??**
- Doit fournir un service d'accès Internet au réseau d'entreprise : entreprise Interne et Externe
- L'entreprise interne a pour numéro d'AS G2+10 donc AS12
- L'entreprise externe est gérée par le groupe 3, donc Sarah, Denisa, Tess, Simon, Nils, Mina, Alex, Louis, Pierre-François.
- Doit utiliser le protocole de routage dynamique OSPF, en intra-AS
- Doit proposer une solution d'interconnexion sans configuration pour les clients particuliers
- Notre AS12 a pour plage IP 120.0.162.0/20

## Tasks
Team1(Ismail & Pierre): DNS & DHCP setup in AS
Team2(Nikita & Stéphane): VoIP & Web Docker setup inside Enterprise
Team3(Corentin & Emilien): eBGP interconnection and VPN 
Team4(Yoann & Thomas): Internal AS routing
