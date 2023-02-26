# Desafio Go

Aqui o desafio proposto no curso é publicar uma imagem no **Docker Hub** que quando executarmos: 

    docker run sous4cruz/fullcycle

Teremos a seguinte mensagem impressa na saida e a imagem não deve ultrapassar o limite de **2MB** de tamanho: 

    Full Cycle Rocks!!

## Criando o app

Vimos no curso que é possível utilizar o host para programar sem necessariamente instalar da linguagem. Apenas usando container. E foi esta a abordagem adotada aqui no desafio!  Utilizei uma das imagens oficiais prontas de Go Lang para construir o `app` responsável por imprimir a mensagem no console. Subindo um container com o comando a seguir, pude utilizar o `vscode` no host para editar o código que ficou no diretório `./go/src`.

    docker run --rm --name golang -it -v ./go:/go golang:latest bash

Como ainda não sei nada de `go`, me concentrei no desafo e apenas utilizei o mínimo para imprimir a mensagem no console escrevendo a função `./go/src/app/main.go` que resultou o executável `fullcycle` a partir do comando executada no mesmo diretório da função:

    go build

## Criando a imagem

Para que a imagem atenda aos requisitos de tamanho proposto no desafio, nossa imagem base teria que ser a mínima possível. Por isso, um opção foi usar como base a imagem `scratch` e depois de adicionar nosso `app`, incluir um comando para executá-lo, como pode ser visto no `Dockerfile` .
