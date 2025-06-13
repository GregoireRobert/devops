## Intégration Continue
Grâce au fichier .github/workflows/build-app.yml, on définit un workflow Github Action  
À chaque fois qu'on pousse du code sur la branche 'main':
1. Le code du dépôt est récupéré
2. Une image Docker est construite en suivant les instructions du fichier Dockerfile

## Livraison Continue

Une fois l'image construite:

1. L'image est poussée sur le registre ghcr.io (authentification au préalable)
2. Une attestation pour l'artefact est générée

## Déploiement Continu

- Connexion SSH au VPS
- Lancement d'un conteneur avec la commande: docker run ghcr.io/gregoirerobert/mon_app:latest


