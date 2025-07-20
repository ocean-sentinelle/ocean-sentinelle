import json

def test_thresholds():
    with open('../config/abacode_config.json') as f:
        cfg = json.load(f)
        assert cfg['thresholds']['pH_min'] >= 7.8
        assert cfg['thresholds']['Omega_aragonite_min'] > 1.0

def test_datasource_integrity():
    with open('../config/datasources.yaml') as f:
        for line in f:
            if line.strip():
                name, url = line.split(':', 1)
                assert url.strip().startswith("https://"), f"URL malformee pour {name.strip()}"
