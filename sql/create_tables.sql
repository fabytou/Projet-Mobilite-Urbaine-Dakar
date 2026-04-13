-- SCRIPT HIVE POUR LA CRÉATION DES TABLES
CREATE DATABASE IF NOT EXISTS mobilite_dakar;
USE mobilite_dakar;

-- Table des zones
CREATE EXTERNAL TABLE IF NOT EXISTS zones_brut (
    zone_id INT,
    nom_zone STRING,
    latitude_centre DOUBLE,
    longitude_centre DOUBLE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/bambey/projet/brut/zones'
TBLPROPERTIES ("skip.header.line.count"="1");

-- Table des trajets
CREATE EXTERNAL TABLE IF NOT EXISTS trajets_brut (
    vehicule_id STRING,
    timestamp_str STRING,
    latitude DOUBLE,
    longitude DOUBLE,
    type_vehicule STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/bambey/projet/brut/trajets'
TBLPROPERTIES ("skip.header.line.count"="1");

-- Table des incidents
CREATE EXTERNAL TABLE IF NOT EXISTS incidents_brut (
    incident_id STRING,
    timestamp_debut STRING,
    latitude DOUBLE,
    longitude DOUBLE,
    type_incident STRING,
    severite INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/bambey/projet/brut/incidents'
TBLPROPERTIES ("skip.header.line.count"="1");
