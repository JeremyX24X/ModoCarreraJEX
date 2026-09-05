# ModoCarreraJEX — versión preparada para publicar

Esta carpeta conserva la web actual como `index.html` y deja preparada la estructura para convertirla en una web pública con datos compartidos.

## Objetivo
- Web pública accesible desde celular y PC.
- Un solo panel de administración para registrar/editar/eliminar jugadores.
- Datos compartidos en una base de datos online.
- Jugadores, puntos, tops, goles, trofeos y demás estadísticas visibles para todos.
- Mantener el diseño y funciones actuales.

## Importante
El `index.html` actual sigue funcionando como versión local. La sincronización online requiere conectar el JavaScript a una base de datos (Supabase) antes de publicar, para evitar que cada visitante tenga una copia distinta de los datos.

## Archivos
- `index.html` — web actual conservada.
- `backend/supabase_schema.sql` — estructura inicial de la base de datos online.
- `backend/CONFIG_TEMPLATE.js` — plantilla de configuración del proyecto.

## Publicación prevista
1. Crear proyecto en Supabase.
2. Ejecutar `backend/supabase_schema.sql`.
3. Conectar `index.html` a Supabase usando la configuración pública del proyecto.
4. Publicar en un hosting estático (por ejemplo, Vercel, Netlify o GitHub Pages).
5. Añadir dominio personalizado si se desea.
6. Registrar el sitio en Google Search Console para facilitar su aparición en Google.

Nunca se debe poner una contraseña de administrador real dentro del JavaScript público. La autenticación del administrador debe hacerse mediante el sistema de autenticación del backend.
