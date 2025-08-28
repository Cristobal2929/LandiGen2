chmod +x setup_landigen2.sh
#!/bin/bash

# Carpeta del proyecto
cd ~/LandiGen2 || exit

# Inicializar Git
git init

# Añadir todos los archivos y hacer commit
git add .
git commit -m "Proyecto LandiGen2 completo listo para workflow"

# Configurar rama principal
git branch -M main

# Configurar repositorio remoto
git remote add origin https://github.com/Cristobal2929/LandiGen2.git

# Push inicial
git push -u origin main

echo "✅ Todo listo. Tu proyecto LandiGen2 está en GitHub y listo para Actions."
echo "💡 Recuerda configurar los secretos KEYSTORE_BASE64, KEYSTORE_PASSWORD, KEY_ALIAS, KEY_PASSWORD"

