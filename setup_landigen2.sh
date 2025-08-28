#!/bin/bash
# setup_landigen2.sh - Script para crear LandiGen2 completo

echo "🚀 Creando estructura de proyecto LandiGen2..."
mkdir -p LandiGen2/www/css LandiGen2/www/js LandiGen2/.github/workflows
cd LandiGen2 || exit

# Archivos de ejemplo
echo "<!DOCTYPE html>
<html lang='es'>
<head>
<meta charset='UTF-8'>
<title>Landing Template 1</title>
<link rel='stylesheet' href='css/style.css'>
</head>
<body>
<h1>Bienvenido a LandiGen2</h1>
<p>Este es el template 1. Personalízalo desde la app.</p>
<script src='js/script.js'></script>
</body>
</html>" > www/template1.html

echo "<!DOCTYPE html>
<html lang='es'>
<head>
<meta charset='UTF-8'>
<title>Landing Template 2</title>
<link rel='stylesheet' href='css/style.css'>
</head>
<body>
<h1>Landing Template 2</h1>
<p>Contenido de ejemplo para el template 2.</p>
<script src='js/script.js'></script>
</body>
</html>" > www/template2.html

echo "<!DOCTYPE html>
<html lang='es'>
<head>
<meta charset='UTF-8'>
<title>Landing Template 3</title>
<link rel='stylesheet' href='css/style.css'>
</head>
<body>
<h1>Landing Template 3</h1>
<p>Contenido de ejemplo para el template 3.</p>
<script src='js/script.js'></script>
</body>
</html>" > www/template3.html

# CSS
echo "body { font-family: Arial, sans-serif; text-align: center; padding: 20px; background-color: #f0f0f0; }
h1 { color: #2c3e50; }
p { font-size: 18px; }" > www/css/style.css

# JS
echo "console.log('LandiGen2 cargado correctamente');" > www/js/script.js

# config.xml
echo "<?xml version='1.0' encoding='utf-8'?>
<widget id='com.tuempresa.landigen2' version='1.0.0' xmlns='http://www.w3.org/ns/widgets' xmlns:cdv='http://cordova.apache.org/ns/1.0'>
<name>LandiGen2</name>
<description>Generador de landing pages</description>
<author email='tu@email.com' href='https://tusitio.com'>Cristóbal</author>
<content src='www/template1.html'/>
<preference name='Fullscreen' value='true'/>
<platform name='android'/>
</widget>" > config.xml

# package.json mínimo
echo "{
  \"name\": \"landigen2\",
  \"version\": \"1.0.0\",
  \"description\": \"Generador de landing pages\",
  \"main\": \"index.js\",
  \"scripts\": {},
  \"dependencies\": {},
  \"devDependencies\": {}
}" > package.json

touch package-lock.json

# README.md
echo "# LandiGen2
Proyecto para generar landing pages y compilar como APK Android firmado.
" > README.md

# Simular keystore
echo "Simulando keystore..."
touch landigen.keystore
echo "💡 Recuerda convertir tu keystore a Base64 y subirlo a GitHub Secrets."

# Git
git init
git add .
git commit -m "Proyecto LandiGen2 completo listo para workflow"
git branch -M main
git remote add origin https://github.com/Cristobal2929/LandiGen2.git

echo "✅ Todo listo. Ahora haz push:"
echo "git push -u origin main"

echo "💡 Luego configura tus secretos KEYSTORE_BASE64, KEYSTORE_PASSWORD, KEY_ALIAS, KEY_PASSWORD en GitHub."


