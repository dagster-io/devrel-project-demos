select

    year(date_trunc('year', obs_date)) as year,
    bird_name,
    country,
    region,
    sum(species_count) as species_count

from {{ ref('all_birds') }}
where lower(bird_name) like '%duck%'
group by all
order by year, species_count desc
