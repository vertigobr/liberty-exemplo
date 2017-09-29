#!/bin/bash
#
# Linha de comando "mvn" para quem não tem Java instalado.
# Quem tem Docker não tem medo.
# Usar imagem "maven" ou "vertigo/maven-ibmjava"
#
docker run --rm -ti \
  -p 9080:9080 \
  -e TERM=xterm \
  vertigo/liberty-exemplo bash

