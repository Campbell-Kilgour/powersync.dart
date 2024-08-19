    -- Creates very basic user profile table.
    -- The profile_picture column is what will be used by Powersync to sync 
    -- the associated image files from the Supabase bucket.
create table if not exists public.profile(
    id uuid primary key default uuid_generate_v4(),
    name text not null,
    profile_picture text not null
);

-- TODO: Add functions for syncing auth.users -> public.profile