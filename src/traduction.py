"""
Module : traduction.py
Description : Convertit des données scientifiques en impacts opérationnels compréhensibles
"""

def traduire_impact(pH, omega):
    if pH < 7.9 and omega < 1.5:
        return "Impact critique sur la calcification"
    elif pH < 8.0:
        return "Impact modéré probable"
    else:
        return "Pas d’impact significatif attendu"
