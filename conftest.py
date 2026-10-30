import os

import pytest
import requests
import urllib3

urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# The QGIS Servers to compare, the URLs can be overridden with environment variables
TARGETS = {
    # QGIS Server with the GeoMapFish plugin, behind the geoportal proxy.
    # The MAP parameter is added by the proxy from the OGC server URL.
    "gmf": {
        "base_url": os.environ.get("GMF_URL", "https://app.localhost:8484/"),
        "ogcapi_path": "mapserv_proxy/qgisserver/ogcapi",
        # Basic auth (BASICAUTH=True), role_admin has a read/write restriction area on the demo layers
        "auth": (
            os.environ.get("GMF_USERNAME", "admin"),
            os.environ.get("GMF_PASSWORD", "admin"),
        ),
    },
    # Bare QGIS Server (qgisserver-bare service), the project is set with QGIS_PROJECT_FILE
    "bare": {
        "base_url": os.environ.get("QGIS_BARE_URL", "http://localhost:8485/"),
        "ogcapi_path": "ogcapi",
        "auth": None,
    },
}


@pytest.fixture(scope="class")
def init_config(request):
    """
    Config of the QGIS Server selected by the `target` attribute of the test class
    """
    target = TARGETS[request.cls.target]
    client = requests.Session()
    client.auth = target["auth"]
    return {
        "client": client,
        "base_url": target["base_url"],
        "ogcapi_path": target["ogcapi_path"],
    }
