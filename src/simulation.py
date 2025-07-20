"""
Module : simulation.py
Description : Simule les trajectoires futures à partir de modèles de scénarios (RCP)
"""

def simuler_ph(init_ph, annee_depart, annee_fin, delta_annuel):
    resultats = []
    for annee in range(annee_depart, annee_fin+1):
        ph = init_ph - delta_annuel * (annee - annee_depart)
        resultats.append({'annee': annee, 'pH_simule': round(ph, 3)})
    return resultats
