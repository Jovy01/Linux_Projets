

projet 4: Connecter le shield Sense HAT à la carte Raspberry PI pour en faire 
          un objet connecté: envoyer et recevoir les données W>wxd'une RP à une autre


pour débuter ce projet: on prend connaissance avec du fonctionnement de 
mosquitto (c'est un interface permettant de récuperer et de transmettre les données
d'une raspberry pi à une autre)

- on se connecte à sa raspberry pi et on installe sense-hat, python3 et la pip en utilisant les commandes
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install sense-hat
sudo apt-get install python3-pip
sudo pip3 install pillow

- on ouvre le node-red qui avait été installé sur notre RP pendant le TP3
en  effectuant la commande node-red-start. sinon l'installé avec sudo apt-get install node-red
et l'ouvrir

on va dans menu, manage palette, install et on installe le node-red-node-pi-sense-hat et 
le node-red-dashboard

Vu qu'on ne peut pas reussir à afficher à la fois les paramètre d'environnement et de température, nous avons 
diffiser le processus en 2: l'un envoi les paramètre d'environnement et recoit les paramètre de mouvement

ensuite on revient sur notre interface node red
la première raspberry recupère la données(environnement) du capteur à l'aide de sence hat out
sépare les données de température, pression et humidité puis introduit des paramètres d'affichage
et les envois à la deuxième raspberry à travers MQTT out (ici il faut lui donner l'adresse pi de la raspbérry pi qui recoit)
a raspberry qui envoi doit changer les paramètre du sence-hat en ne cochant que les paramètre d'environement

la raspberry 2 recoit chaque donnée denvironnement de la raspberry 1 à travers MQTT in 
(ici il faut lui donner l'adresse pi de la raspbérry pi qui envoi)
et ensuite associe à ces données les paramètres d'affichage (sous forme de jauge, message...)

pour afficher les données sur un dashboard il suffit de copier le lien du node-red(http:/ip de la RP:1880)
et le coller dans un navigateur et ensuite ajouter "/ui"

on refait le meme proccesus pour les paramètre de mouvement mais cette fois ci, c'est la RP2 qui envoi les données et la RP1 récupère
la raspberry qui envoi doit changer les paramètre du sence-hat en ne cochant que les paramètre de mouvements

message sur les leds:

la raspberry 2 utilise le MQTT out et un inject (pour ecrire un message) qui sera récuperer par la raspberry 2 à travers un MQTT in 
et l'envoi à la raspbérry à travers sence hat in
pour modiffier les paramètres d'affichage du message, il suffit de télecharger node-red-sense-hat-message dans le node red 
et mettre un scrool message entre le MQTT in et sence-hat et enfin changer les paramettre de scroll-message.

