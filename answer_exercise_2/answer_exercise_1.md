# Ejercicio 2

## 1. Crea un nuevo proyecto e inicializa git
``` git init ```

## 2. Añade una regla para ignorar los ficheros de tipo .sh
Se crea el .gitignore
``` */*.sh ```

## 3. Crea dos ficheros vacíos: demo1.txt y demo2.txt. Añade estos ficheros al stage area.
Creamos los ficheros vacios y se utliza el siguiente comando para el agregarlos al stage
``` git add -A ```

## 4. Añade contenido al fichero demo1.txt. A continuación, realiza un commit con el mensaje Modified  demo1.txt
Despues de añadir contenido se guardan los cambios de la siguiente manera
``` git add demo1.txt ```
Se hace el commit
``` git commit -m "Modified demo1.txt" ```

## 5. Añade contenido al fichero demo2. A continuación, realiza un commit con el mensaje Modified demo3.txt
Despues de añadir contenido se guardan los cambios de la siguiente manera
``` git add demo2.txt ```
Se hace el commit
``` git commit -m "Modified demo3.txt" ```

## 6. Rectifica el commit anterior con el mensaje Modified demo2.txt
Con el siguiente comando se modifica el mensaje del ultimo commit
``` git commit --amend -m "Modified demo2.txt" ```

## 7. Crea una nueva rama develop y añade un fichero script.sh que imprima por pantalla Git 101
Crear rama
~~~
git branch develop  
git checkout develop
~~~ 

Añadimos el fichero llamado script.sh

## 8. Da permisos de ejecución al script
Modificamos el archivo .gitignore para que no ignore los ficheros de tipo .sh
``` git add .gitignore script.sh  ```
Agregamos cambios
``` git commit -m "Agregar script.sh" ```

## 9. Realiza un merge develop -> master para integrar los cambios
~~~ 
git checkout master 
git merge development
~~~ 

## 10. Sube todos los cambios a tu repositorio remoto
Se agrega al repositorio remoto
~~~ 
git branch -M main
git remote add origin https://github.com/PastorCisneros/Git-101.git
git push -u origin master 
~~~


