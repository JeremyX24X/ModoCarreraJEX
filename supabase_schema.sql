-- ModoCarreraJEX: esquema inicial para datos compartidos online
create table if not exists public.players (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  media numeric default 1,
  goals integer not null default 0,
  own_goals integer not null default 0,
  mvp integer not null default 0,
  yellow integer not null default 0,
  red integer not null default 0,
  trophies integer not null default 0,
  world_cups integer not null default 0,
  champions integer not null default 0,
  copa_america integer not null default 0,
  euro_cups integer not null default 0,
  club_world_cups integer not null default 0,
  ballons integer not null default 0,
  golden_boots integer not null default 0,
  golden_gloves integer not null default 0,
  best_youth integer not null default 0,
  photo text,
  media_type text default 'image',
  pos_x numeric default 50,
  pos_y numeric default 50,
  zoom numeric default 100,
  rotation numeric default 0,
  league text default 'JUGADORES',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists players_points_sort on public.players (created_at desc);

alter table public.players enable row level security;

-- Lectura pública para que todos puedan ver los jugadores.
create policy "Public can read players"
on public.players for select
using (true);

-- Las operaciones de escritura se habilitarán después de configurar Auth/admin.
-- No se deja escritura pública para no permitir que cualquier visitante modifique la web.
