#!/bin/bash

ENV_NAME="local_v"

if [ ! -d "$ENV_NAME" ]; then
  echo -e "[+] Creando entorno virtual...\n"
  python -m venv "$ENV_NAME"
fi

echo -e "[+] Activando entorno virutal...\n"
source "./$ENV_NAME/bin/activate"
sleep 1
echo -e "[+] Entorno activado.\n"
sleep 1
echo -e "[+] Iniciando instalacion de dependencias...\n"
pip install -r ./requirements.txt
echo -e "\n"
sleep 2
echo -e "[+] Las siguientes dependencias estan instaladas.\n"
pip list
