Soldadora por BGA por luz infra roja 


A fin de solucionar una problematica diaria para cambiar las esferas de estaño de las placas de los motherboard surgio 
la idea de una soldadora por calor de luz infra roja que solo iradea calor en los metales dejando mas enteros los plasticos.

Usando una base de balanza sin uso se monto una lampara de resistencia electrica en la base y una lampara infra roja arriba con el fin de atacar la placa 
de ambos lados. En un principio se prende solo la estufa de la base por  2 minutos y al finalizar el conteo acompaña la luz infra roja por un minuto mas
dejando al usuario la posibilidad de soldar o retirar algun componente que ya este listo con el estaño derretido.

Por medio de un programa en assembler se programaron los tiempos de encendido como asi la manipulacion de un mecanismo que sube y baja acercando o alejando 
la lampara infraroja. consistia en un cabezal que se mueve con un tornillo sin fin junto a un motor y un sensor de fin de recorrido que haga que se detenga 
cuando la lampara llegaba hasta arriba.

La lampara base es accionada por reles a 220 , y la infra roja por medio de un trasnformador de 12v a 10 A hacia un rele. Y todo comandado junto al panel con 4 botones al Pic16f84
para poder manipular un encendido , un apagado , subir cabezal y bajar cabezal.
Se adjunto Esquematico
Codigo en Assembler
proyecto en Proteus

Marcos Benassi año 2016 