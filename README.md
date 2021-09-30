# Castillos en guerra

**Vamos a modelar una guerra en la época medieval, con reyes y castillos, ataques, defensas y fiestas. Intentaremos ver qué castillos logran mantenerse en pie y cuáles son derrotados.**



## Planteo del problema

Cada castillo cuenta con un rey y un séquito formado por burócratas de confianza y guardias siempre listos para proteger el castillo ante cualquier ataque. Los castillos suelen ser amplios y fríos y siempre tienen una muralla exterior. En su interior cuentan con diversos ambientes o lugares por donde los moradores del castillo circulan y realizan sus tareas. Algunos castillos son más grandes que otros, ya sea porque tienen más ambientes o éstos son más grandes. A su vez, la cantidad de guardias o burócratas también puede diferir e ir modificándose con el tiempo.  


### Derrota
Cuando la estabilidad del castillo está por debajo de 100 unidades se considera que fue derrotado. ¿Triunfo? No. En la guerra no hay triunfadores. El castillo que no es derrotado, simplemente permanece en pie. 

### Guardias
Los guardias, si bien son el pilar de defensa del castillo, no son de importancia para el reino, por lo que no se conoce sus nombres, sino únicamente su capacidad y su nivel de agotamiento a la hora de luchar. Los guardias son asignados a un determinado ambiente del castillo.
Durante las fiestas, los guardias simplemente descansan para recuperarse de agotamiento y volver a estar preparados ante una amenaza posterior.
A la hora de preparar las defensas, la estabilidad del castillo aumenta en función de la capacidad de cada guardia.

### Burócratas
Son de gran importancia para el rey y por lo tanto, se conoce su nombre, la fecha de nacimiento y los años de experiencia de cada uno en el castillo. 
Durante las fiestas, se olvidarán del miedo que les infundió la batalla y serán capaces de celebrar. 
Cuando el castillo prepara sus defensas los burócratas se encargan de realizar una planificación estratégica capaz de aumentar la resistencia del castillo, siempre y cuando no se encuentren en pánico.

### El Rey
Los reyes no participan en la preparación de las defensas y ni en la defensa de su castillo, pero les gustan las fiestas y participan de ellas, muchas veces convirtiéndose en su principal animador.
El rey es quien decide a qué otro castillo atacar. Para ello, consulta en el sitio www.todocastillos.com donde está toda la info sobre la resistencia de los castillos de la comarca. 

### Defensas
Una de las actividades típicas que se realiza en el castillo es preparar defensas previendo que se aproxime un ataque. Cuando se da esta orden, todos colaboran en aumentar la estabilidad del castillo.

### Fiestas  
Es frecuente que el rey ordene hacer una fiesta, pero sólo se hará si el castillo no se encuentra bajo amenaza (con una estabilidad a menos de un 25% superior de su estabilidad mínima) y no hay mucho temor entre sus moradores. Realizar una fiesta provoca efectos en la población del castillo y eventualmente puede afectar su estabilidad u otras características. 

### Ataques
Cuando el castillo recibe un ataque, el daño que sufre en su estabilidad depende de la resistencia que ofrezca, lo que se calcula a partir del tamaño de su muralla, de los otros ambientes y de qué tan bien puedan defenderse. 
Los guardias que se encuentren en el castillo participan activamente del combate, luchando con toda su capacidad para detener a los enemigos aunque aumentando su agotamiento. 
Los burócratas no aportan para la defensa del castillo, pero el presenciar actos violentos los hace sucumbir de miedo en caso de que sean jóvenes o inexpertos. 


## Requerimientos

1. Modelar a todas las entidades involucradas, implementado el código correspondiente para realizar las tareas descriptas. En los casos en que no se especifica el detalle de cómo es cada acción, apelar a la creatividad respetando la idea general de la consigna y tratando de aplicar diferentes conceptos.
2. Realizar casos de prueba que demuestren el correcto funcionamiento de los métodos. Esto involucra realizar secuencias que afecten el estado interno de las entidades.
3. Explicar las ventajas que tiene utilizar clases para crear objetos, en lugar de definir los objetos individualmente. ¿En qué casos no es necesario o es contraproducente utilizar clases? 
4. Bonus:
   - Añadir nuevos moradores del castillo (diferente a los anteriores, como por ejemplo, cocineros) que reaccionen a los distintos eventos que afectan al castillo e interactúen con las demás entidades que pertenecen al mismo.
   - Permitir que un castillo tenga reina en vez de rey, con un comportamiento diferente.
   - Agregar nuevas funcionalidades con los ambientes del castillo 
