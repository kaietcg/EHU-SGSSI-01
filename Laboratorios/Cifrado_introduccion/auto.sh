    HASH_FIJO="7d573924d70a604cb56122aed9bded3f40d3083d8adc353a97c0b816c0e573bb"
    DIRECTORIO="$HOME/sgssiLabs/repo/EHU-SGSSI-01/Laboratorios/Cifrado_introduccion"

    for archivo in "$DIRECTORIO"/durruti/*; do
        if [ -f "$archivo" ]; then
            echo "Procesando archivo: $(basename "$archivo")"
            HASH_ACTUAL=$(sha256sum "$archivo" | awk '{print $1}')
            
            if [ "$HASH_ACTUAL" == "$HASH_FIJO" ]; then
                echo "COINCIDENCIA ENCONTRADA: El archivo $(basename "$archivo") tiene el hash correcto."
                break
            fi
            
        fi
    done
