#  Projet d'Analyse de la Mobilité Urbaine à Dakar

Ce projet propose une architecture Big Data complète pour simuler, ingérer et analyser les flux de transport dans la région de Dakar (Plateau, Médina, Yoff, etc.).

##  Stack Technique
* **Génération :** Python (Pandas, Faker) via Google Colab.
* **Ingestion :** Apache NiFi (Flux de collecte des CSV vers HDFS).
* **Stockage :** Hadoop HDFS & Hive (Catalogue de données).
* **Traitement :** PySpark (Calcul des vitesses moyennes et détection des bouchons).

## Structure du Dépôt
* `mobilite_dakar.py` : Script complet de génération et d'analyse.
* `/sql` : Scripts de création des tables Hive.
* `/scripts` : (À venir) Scripts Spark dédiés.

## Comment l'utiliser
1. Exécuter le script Python pour générer les fichiers CSV.
2. Configurer NiFi pour envoyer les données vers HDFS.
3. Créer les tables Hive en utilisant le script dans `/sql`.
4. Lancer l'analyse Spark pour visualiser les indicateurs de trafic.
