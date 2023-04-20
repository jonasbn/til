# Database

These are my notes on the database available in Logtail.

I need these to make some Grafana dashboards, so it is nice to get an overview of the underlying model.

All available information was gathers based on pointers from an article and using the `describe table` command in the ClickHouse client.

## `$table`

| Field | Type | Null | Key | Default | Extra |
| --- | --- | --- | --- | --- | --- |
| `dt` | `DateTime64(6, 'UTC')` | | | | |
| `_insert_index` | `UInt32` | | | | |
| `json` | `String` | | | | |
| `message` | `String` | | | | |
| `host` | `String` | | | | |
| `nginx.agent` | `String` | | | | |
| `nginx.client` | `String` | | | | |
| `nginx.method` | `String` | | | | |
| `nginx.path` | `String` | | | | |
| `nginx.referer` | `String` | | | | |
| `nginx.size` | `String` | | | | |
| `nginx.status` | `String` | | | | |
| `level` | `String` | | | | |
| `nginx.host` | `String` | | | | |

## `geoip_city_ipv4`

| Field | Type | Null | Key | Default | Extra |
| --- | --- | --- | --- | --- | --- |
| `network` | `String` | | | | |
| `getname_id` | `UInt32` | | | | |
| `registered_country_geoname_id` | `UInt32` | | | | |
| `postal_code` | `String` | | | | |
| `latitude` | `Float32` | | | | |
| `longitude` | `Float32` | | | | |
| `accuracy_radius` | `UInt32` | | | | |

## `geoip_city_ipv4_dictionary`

| Field | Type | Null | Key | Default | Extra |
| --- | --- | --- | --- | --- | --- |
| `network` | `String` | | | | |
| `getname_id` | `UInt32` | | | | |
| `registered_country_geoname_id` | `UInt32` | | | | |
| `represented_country_geoname_id` | `UInt32` | | | | |
| `is_anonymous_proxy` | `UInt32` | | | | |
| `is_satellite_provider` | `UInt32` | | | | |
| `postal_code` | `String` | | | | |
| `latitude` | `Float32` | | | | |
| `longitude` | `Float32` | | | | |
| `accuracy_radius` | `UInt32` | | | | |

## `geoip_city_locations`

| Field | Type | Null | Key | Default | Extra |
| --- | --- | --- | --- | --- | --- |
| `geoname_id` | `Uint64` | | | | |
| `locale_code` | `String` | | | | |
| `continent_code` | `String` | | | | |
| `continent_name` | `String` | | | | |
| `country_iso_code` | `String` | | | | |
| `country_name` | `String` | | | | |
| `subdivision_1_iso_code` | `String` | | | | |
| `subdivision_1_name` | `String` | | | | |
| `subdivision_2_iso_code` | `String` | | | | |
| `subdivision_2_name` | `String` | | | | |
| `city_name` | `String` | | | | |
| `metro_code` | `UInt32` | | | | |
| `time_zone` | `String` | | | | |
| `is_in_european_union` | `UInt32` | | | | |
