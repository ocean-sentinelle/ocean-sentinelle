"""
Module : integration.py
Description : Intègre et harmonise les données multi-domaines (bio-géo-physico-socio)
"""

import pandas as pd

def integrer_donnees(ph_file, impact_file):
    ph_df = pd.read_csv(ph_file)
    with open(impact_file, 'r', encoding='utf-8') as f:
        import json
        impacts = json.load(f)
    ph_df['impact_estime'] = ph_df['RCP4.5'].apply(lambda x: 'fort' if x < 7.85 else 'modéré')
    return ph_df
