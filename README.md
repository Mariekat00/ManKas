# ManKas
 Je développe un application web qui pourrait permettre à une entreprise de lavage automobile et qui a plus d'autres services 
 
Ce projet est encore mais je n'ai pas encore finalisé avec l'hébergement pour voir les résultats en ligne. mais juste que là le résultat en localhost c'était whaou 😍 
--------------------------------------------------------------------------------------------------------------------------------------------------------

# 🚗 Vehicle Service Web Application

Application web développée en PHP, HTML, CSS et JavaScript pour la gestion de services liés aux véhicules. Elle est connectée à une base de données MySQL hébergée sur InfinityFree.

---

## 🧩 Technologies utilisées

- **Frontend** : HTML, CSS, JavaScript
- **Backend** : PHP (vanilla PHP, sans framework)
- **Base de données** : MySQL (InfinityFree)
- **Autres outils** : phpMyAdmin, GitHub

---

## 📁 Structure du projet

```plaintext
/
├── admin/                 # Interface d'administration
├── assets/                # Fichiers statiques (images, js, css)
├── build/, dist/          # Fichiers compilés (si utilisés)
├── classes/, inc/, libs/  # Librairies et fonctions PHP
├── config.php             # Configuration de la base de données
├── index.php              # Point d'entrée principal
├── initialize.php         # Fichier d’initialisation
├── *.html, *.php          # Pages du site
├── uploads/               # Téléchargements utilisateurs
└── .gitignore             # Exclusions Git
```

## 🔧 Configuration de la base de données
```L'application utilise une base de données MySQL distante, avec les constantes suivantes dans config.php :

define('DB_SERVER', 'sql302.infinityfree.com');
define('DB_USERNAME', 'if0_39446680');
define('DB_PASSWORD', '********'); 
define('DB_NAME', 'if0_39446680_vehicle_service_db');
```

🛡️ Assurez-vous d’ajouter config.php à .gitignore pour éviter toute fuite de données sensibles.

## 🚀 Déploiement
# Hébergement :
Le site est hébergé sur InfinityFree.

# Étapes :
```1. Cloner le projet :
git clone https://github.com/votre-utilisateur/votre-repo.git
```
2. Mettre à jour config.php avec les identifiants de votre base.
3. Uploader les fichiers sur l’hébergeur dans le dossier htdocs/.

## ✅ Fonctionnalités principales
* Système de gestion des services de véhicule
* Authentification de l’administrateur
* Téléversement de fichiers (images, justificatifs, etc.)
* Interface simple et responsive
* Connexion à une base de données distante

  
## 📌 Sécurité & recommandations
* Ne jamais exposer de mot de passe dans un dépôt public.
* Utiliser un fichier .env et des variables d’environnement en production.
* Utiliser HTTPS pour le déploiement final.

## 👤 Auteur
Moïse Manda
ManKas Corporation
📧 moisemanda2000@gmail.com
📞 +243 974 037 169

## 📜 Licence
# Ce projet est sous licence MIT. Voir le fichier LICENSE pour plus d’informations.

```

### ✅ Prochaine étape :
- Ajoute ce contenu dans un fichier `README.md` à la racine de ton dépôt.
- N'oublie pas d’adapter :
  - Le lien GitHub (`git clone`)
  - Le nom du projet si ce n’est pas "Vehicle Service"
  - Le nom du répertoire si tu le renommes
  - Les coordonnées si besoin

Souhaites-tu également que je te génère un fichier `LICENSE` (par exemple en MIT) ?


