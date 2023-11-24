############ WORKING-ROUTINE ############
# Start working 9:00
* Check notes from day before
* Check git-hub roadmap
* Set 1 to 5 to-do’s for the working day
# 60 - 90 minutes deep work
* Light work and organizing
# 60 minutes lunch break
# 2 × 60 - 90 minutes deep work
* Light work and organizing
# Last 30 minutes
* Write a log for the day
* Push project
# Finish work 17:00
############## WEEKLY-LOG ##############
# Freitag 24. Nov
- mashine is starting up as aspected when its stated with "sudo make up" (alsways use sudo or in the root)
- changed the file path for data to /home/jschneid/data
- checked with eval sheet everything is working and the

# Donnerstag 23. Nov
- used docker compose to run the docker and got a more precise error message which showed me that the folder path was uppercase and it couldn't find
- but there is still a problem with starting up and the mariadb image gets not created

# Mittwoch 22. Nov
- installed everything on the vm but its not starting up
probably there is an error with the docker deamon or the docker compose maybe reinstall both and try again

# Dienstag 21. Nov
- dockers and wordpress is everything working so far
- improved the makefile is working now
- removed all the files i don't need anymore
- seems like the project is working now as it should

# Monatg 20. Nov
- website is running but and the wp-config.php gets created
- there is stil one error log: 2023-11-20 16:33:18 wordpress  | Error: The 'jschneid' username is already registered.

NICHT GEPUSHT UND ALLE FORTSCHITTE VERLOREN
# Mitwoch 15. Nov
-

# Dienstag 14. Nov
- habe das wp-conf.php umbenannt es wird jetzt auch gefunden aber ein andere error ist auf getreten:
Error: Error establishing a database connection. This either means that the username and password information in your `wp-config.php` file is incorrect or that contact with the database server at `mariadb` could not be established. This could mean your host’s database server is down.
- habe mit paul auch noch ein netzwerk im docker-compose file hinzugefügt
- habe es gelöst mit paul aber kann mich nach wie vor nicht mit dem localhost verbinden

# Montag 13. Nov
- einfaches makefile erstellt dass das docker compose file ausführt und auch wieder runterfahren kann
und auch eine clean rule die alle daten löscht
- wenn docker hoch gefahren sind war es trotzdem nicth möglich zum localhost zu connecten habe an der
wp docker rum gearbeitet aber fährt nicht wirklich hoch

-------------------- WEEKEND --------------------
# Freitag 10. Nov
- habe alle volum und image files gelöscht und ein scribt geschrieben das das übernimmt jetzt fahren alle docker hoch aber konnte noch nicht mit dem local host auf die wordpress website zugreifen => gucken warum dass nicht geht

# Donnerstag 9. Nov
- versucht den docker compose zum laufe zu bringen aber es gibt nach wie vor probleme mit wordpress container
nochmal am besten den wordpress container durch check alle scripts etc und ihn alleine zum laufen bekommen
vielleicht auch nochmal vergleichen was die unterschiede zu den anderen container sind

# Mittwoch 8. Nov
- nginx docker file erstellt und die .conf file erstmal so von @todo = alex übernommen (anpassen)
- cotianer laufen auch für sich alleine
- docker compose fährt bis auf mariadb alle container hoch
- es ist noch ein problem mit volum von maria db weshalb der docker compose nicht hoch fährt
alle pfade nochmal überprüfen

# Dienstag 7. Nov
- mariaDB docker file ergänzt um die database zu erstellen mit setup.sql (tools/)
- habe mariadb und wordpress docker file und volume erstellt, docker fahren auch hoch
aber config files sind wahrscheinlich noch nicht ganz richtig
- morgen mit nginx volume weiter machen und mit docker compose anfangen

# Montag 6. Nov
- to-dos und roadmap erstellt
- mit maria db begonnen docker fährt auch hoch fehlen aber noch ein paar configuartionen
(https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-docker/)
(https://mariadb.com/kb/en/creating-a-custom-container-image/)

-------------------- WEEKEND --------------------
# 2. Nov
hab nicht weiter gemacht

# 1. Nov
mal eval sheet lesen dann hat man auch nochmal andere ideen
hab versucht nach dem guide von medium die wp website zum laufen zu bringen aber docker
fährt nicht hoch, weiter versuchen

# 31. Oct
habe angefanfen den nginx docker zu erstellen aber keine ahnung
ober der so läuft wie er soll.
Am besten erstmal mit wordpress weiter machen dann sieht man auch was.
