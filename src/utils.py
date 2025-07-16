"""
Module : utils.py
Description : Fonctions utilitaires transverses
"""

def verifier_coherence(df, seuil=7.8):
    anomalies = df[df['RCP8.5'] < seuil]
    return anomalies
