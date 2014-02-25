;Services
;list the different map services (servers, generic parameters, etc.)
[services]
wmsServerURL="http://observatoire-eau-guadeloupe-gis.makina-corpus.net/cgi-bin/qgis_mapserv.fcgi"
;List of URL available for the web client
defaultRepository=montpellier
cacheStorageType=file
;cacheStorageType=sqlite => store cached images in one sqlite file per repo/project/layer
;cacheStorageType=file => store cached images in one folder per repo/project/layer. The root folder is /tmp/
cacheExpiration=0
; default cache expiration : the default time to live of data, in seconds.
; 0 means no expiration, max : 2592000 seconds (30 days)
proxyMethod=php
; php -> use the built in file_get_contents method
; curl-> use curl. It must be installed.
debugMode=0
; debug mode
; on = print debug messages in lizmap/var/log/messages.log
; off = no lizmap debug messages
cacheRootDirectory="/srv/projects/guadeloupe-eau-gis/project/var/tmp"
; cache root directory where cache files will be stored
; must be writable
allowUserAccountRequests=off




adminContactEmail="sysadmin@makina-corpus.com"
[repository:qualiteeau]
label="Qualité de l'eau"
path="../ftp/qualite_eau/"


[repository:milieunaturel]
label="Le milieu naturel"
path="../ftp/milieu_naturel/"


[repository:eaupotable]
label="L'eau potable"
path="../ftp/eau_potable_2010/"


[repository:autresusageseau]
label="Autres usages de l'eau"
path="../ftp/autres_usages_eau/"


[repository:assainissement]
label="L'assainissement"
path="../ftp/assainissement/"


[repository:risques]
label="Risques (pollutions, inondations)"
path="../ftp/risques/"


