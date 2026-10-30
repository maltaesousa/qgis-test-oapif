# OGC API Features: GeoMapFish QGIS Server vs bare QGIS Server

Runs the same tests on QGIS Server behind the GeoMapFish `mapserv_proxy` (with the GeoMapFish plugin)
and on a bare QGIS Server, to identify what the plugin changes.

```bash
cd gmf
python build
docker compose up -d
cd ..
pip install pytest requests
python -m pytest test_qgis_services.py -v
```

- GeoMapFish: https://app.localhost:8484/mapserv_proxy/qgisserver/ogcapi (user `admin`, password `admin`)
- Bare QGIS Server: http://localhost:8485/ogcapi
- To start again from an empty database: `docker compose down` and delete `gmf/postgres_data`.
