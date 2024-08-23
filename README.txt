integrantes
Juan Joya
Juan Gallardo
Jefferson Gutierrez

#1#CONTADOR DE CARACTERES, PALABRAS Y LÍNEAS
Este programa en Flex cuenta el número de caracteres, palabras y líneas en un archivo de texto.

Archivos:
- punto1.l: Archivo fuente de Flex que define el analizador léxico.

Requisitos:
- Flex: Herramienta para generar analizadores léxicos.
- GCC: Compilador de C.

Pasos para ejecutar el programa:

1. Asegurarse de tener Flex y GCC instalados en el sistema. Para ello, se pueden utilizar los siguientes comandos en Ubuntu:

   sudo apt-get update
   sudo apt-get install flex gcc

2. Generar el archivo de código C a partir del archivo .l con el siguiente comando:

   flex punto1.l

   Este comando generará un archivo llamado lex.yy.c.

3. Compilar el archivo lex.yy.c utilizando GCC:

   gcc lex.yy.c -o contador -lfl

   Este comando generará un ejecutable llamado contador.

4. Crear un archivo de texto que se desee analizar. Por ejemplo, se puede guardar el texto en un archivo llamado string.txt.

5. Ejecutar el programa contador y redirigir el archivo de texto como entrada:

   ./contador < string.txt

   Esto procesará el archivo string.txt y mostrará el número de caracteres, palabras y líneas en la salida estándar.

6. Ejemplo de uso:

   Supongamos que el archivo string.txt contiene el siguiente texto:

   Hello world!
   This is a test.

   Al ejecutar el comando ./contador < string.txt, la salida será:

   2       5      26

   Donde 2 representa el número de líneas, 5 el número de palabras y 26 el número de caracteres.

******************************************************************************************************************

#2#TRADUCTOR INGLÉS-ESPAÑOL
Este programa en Flex traduce palabras del inglés al español en un texto de entrada.

Archivos:
- punto2.l: Archivo fuente de Flex que define el analizador léxico para el traductor.

Requisitos:
- Flex: Herramienta para generar analizadores léxicos.
- GCC: Compilador de C.

Pasos para ejecutar el programa:

1. Asegurarse de tener Flex y GCC instalados en el sistema. Para ello, se pueden utilizar los siguientes comandos en Ubuntu:

   sudo apt-get update
   sudo apt-get install flex gcc

2. Generar el archivo de código C a partir del archivo .l con el siguiente comando:

   flex punto2.l

   Este comando generará un archivo llamado lex.yy.c.

3. Compilar el archivo lex.yy.c utilizando GCC:

   gcc lex.yy.c -o traductor -lfl

   Este comando generará un ejecutable llamado traductor.

4. Crear un archivo de texto que se desee traducir. Por ejemplo, se puede guardar el texto en un archivo llamado texto.txt.

5. Ejecutar el programa traductor y redirigir el archivo de texto como entrada:

   ./traductor < texto.txt

   Esto procesará el archivo texto.txt, traduciendo las palabras del inglés al español según las definiciones en el archivo punto2.l.

6. Ejemplo de uso:

   Suponga que el archivo texto.txt contiene el siguiente texto:

   computer, mouse, games

   Al ejecutar el comando ./traductor < texto.txt, la salida será:

   ordenador, ratón, juegos

   En este caso, las palabras "computer", "mouse" y "games" han sido traducidas al español como "ordenador", "ratón" y "juegos", respectivamente.
******************************************************************************************************************
#3#LECTOR DE SIMBOLOS DE CALCULADORA
Este programa en Flex identifica y clasifica números, operadores y caracteres especiales en expresiones matemáticas.

Archivos:
- punto3.l: Archivo fuente de Flex que define el analizador léxico para la calculadora.

Requisitos:
- Flex: Herramienta para generar analizadores léxicos.
- GCC: Compilador de C.

Pasos para ejecutar el programa:

1. Asegurarse de tener Flex y GCC instalados en el sistema. Para ello, se pueden utilizar los siguientes comandos en Ubuntu:

   sudo apt-get update
   sudo apt-get install flex gcc

2. Generar el archivo de código C a partir del archivo .l con el siguiente comando:

   flex punto3.l

   Este comando generará un archivo llamado lex.yy.c.

3. Compilar el archivo lex.yy.c utilizando GCC:

   gcc lex.yy.c -o calculadora -lfl

   Este comando generará un ejecutable llamado calculadora.

4. Crear un archivo de texto que contenga la expresión matemática que se desea analizar. Por ejemplo, se puede guardar la expresión en un archivo llamado string3.txt.

5. Ejecutar el programa calculadora y redirigir el archivo de texto como entrada:

   ./calculadora < string3.txt

   Esto procesará el archivo sring3.txt, identificando y clasificando números, operadores y caracteres especiales según las definiciones en el archivo punto3.l.

6. Ejemplo de uso:

   Supongamos que el archivo string3.txt contiene la siguiente expresión:

   3 + 5 * (2 - 8) / 4

   Al ejecutar el comando ./calculadora < string3.txt, la salida será:

   NUMBER 3
   PLUS
   NUMBER 5
   TIMES
   NUMBER 2
   MINUS
   NUMBER 8
   DIVIDE
   NUMBER 4

   En este caso, el programa identifica y clasifica los números y operadores en la expresión matemática.
******************************************************************************************************************
#4#
# CALCULADORA BÁSICA

Este programa en Flex reconoce y procesa operaciones aritméticas simples ingresadas por el usuario.

Archivos:
- `calculator.l`: Archivo fuente de Flex que define el analizador léxico para la calculadora.

Requisitos:
- **Flex**: Herramienta para generar analizadores léxicos.
- **GCC**: Compilador de C.

## Pasos para ejecutar el programa:

1. **Instalar Flex y GCC**: Asegúrese de tener Flex y GCC instalados en su sistema. Puede instalarlos en Ubuntu utilizando los siguientes comandos:

   sudo apt-get update
   sudo apt-get install flex gcc

2. **Generar el archivo de código C**: Use Flex para crear un archivo de código C a partir del archivo `.l`:

   flex calculator.l

   Este comando generará un archivo llamado `lex.yy.c`.

3. **Compilar el archivo C**: Compile el archivo `lex.yy.c` utilizando GCC:

   gcc lex.yy.c -o calculator -lfl

   Esto generará un ejecutable llamado `calculator`.

4. **Ejecutar el programa**: Ejecute el programa calculadora y proporcione la entrada directamente desde el teclado o redirigiendo un archivo de texto.

   Para ejecutar el programa y proporcionar entrada desde el teclado, use:

   ./calculator

   Luego, puede ingresar operaciones aritméticas como `3 + 5` o `7 * 2`, y presionar **Enter** para ver los resultados.

5. **Ejemplo de uso**:

   Al ejecutar el programa, puede introducir operaciones como:

   2 + 3
   4 * 5
   6 / 2
   7 - 1

   La salida será algo como:

   1 = 2
   2 = 3
   4 = 5
   5
   6

   En este caso, el programa reconoce y muestra los tokens para las operaciones aritméticas ingresadas y muestra los valores procesados para los números. Además, para cualquier carácter desconocido, se mostrará un mensaje indicando que es un carácter desconocido.

6. **Notas adicionales**: 
   - El programa maneja correctamente operadores básicos como `+`, `-`, `*`, `/` y el operador absoluto `|`.
   - Ignora espacios en blanco y tabulaciones.
   - Cualquier otro carácter no reconocido se informará con el mensaje "Mystery character".

******************************************************************************************************************
#5#CLASIFICADOR DE NÚMEROS COMPLEJOS
Este programa en Flex clasifica números complejos en diferentes formatos, incluyendo formas rectangulares y polares.

Archivos:
- punto5.l: Archivo fuente de Flex que define el analizador léxico para la clasificación de números complejos.

Requisitos:
- Flex: Herramienta para generar analizadores léxicos.
- GCC: Compilador de C.

Pasos para ejecutar el programa:

1. Asegurarse de tener Flex y GCC instalados en el sistema. Para ello, se pueden utilizar los siguientes comandos en Ubuntu:

   sudo apt-get update
   sudo apt-get install flex gcc

2. Generar el archivo de código C a partir del archivo .l con el siguiente comando:

   flex punto5.l

   Este comando generará un archivo llamado lex.yy.c.

3. Compilar el archivo lex.yy.c utilizando GCC:

   gcc lex.yy.c -o clasificador -lfl

   Este comando generará un ejecutable llamado clasificador.

4. Crear un archivo de texto que contenga los números complejos que se desean clasificar. Por ejemplo, se puede guardar el texto en un archivo llamado numeros.txt.

5. Ejecutar el programa clasificador y redirigir el archivo de texto como entrada:

   ./clasificador < numeros.txt

   Esto procesará el archivo numeros.txt, clasificando los números complejos según los formatos definidos en el archivo punto5.l.

6. Ejemplo de uso:

   Supongamos que el archivo numeros.txt contiene el siguiente texto:

   5+3i 
   2.5-7.1j 
   -3.14 
   4*e^iπ

   Al ejecutar el comando ./clasificador < numeros.txt, la salida podría ser:

	N COMPLEJO (F Rectangular): 5+3i
	N COMPLEJO (F Rectangular): 2.5-7.1j
	NUMERO REAL: -3.14
	NUMERO REAL: 4
	TOKEN DESCONOCIDO: *
	TOKEN DESCONOCIDO: e
	TOKEN DESCONOCIDO: ^
	TOKEN DESCONOCIDO: i
	TOKEN DESCONOCIDO:  
	TOKEN DESCONOCIDO:  

   En este caso, el programa identifica y clasifica los números complejos en formas rectangulares y polares.


