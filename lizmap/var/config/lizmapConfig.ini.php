;Services
;list the different map services (servers, generic parameters, etc.)
[services]
wmsServerURL="http://127.0.0.1/cgi-bin/qgis_mapserv.fcgi"
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
cacheRootDirectory="/tmp/"
; cache root directory where cache files will be stored
; must be writable
allowUserAccountRequests=off




[repository:guadeloupe]
label="Guadeloupe Canaux"
path="/home/sbe/projects/guadeloupe-eau-carto/data/guadeloupe/"





[repository:qualiteeau]
label="Qualité de l'eau"
path="/home/sbe/data/guadeloupe/qualite_eau/"











[repository:risques]
label="Risques (pollutions, inondations)"
path="/home/sbe/data/guadeloupe/risques/"


[repository:assainissement]
label="L'assainissement"
path="/home/sbe/data/guadeloupe/assainissement/"


[repository:milieunaturel]
label="Le milieu naturel"
path="/home/sbe/data/guadeloupe/milieu_naturel/"


[repository:autresusageseau]
label="Autres usages de l'eau"
path="/home/sbe/data//guadeloupe/autres_usages_eau/"






[repository:eaupotable]
label="Eau potable"
path="/home/sbe/data/guadeloupe/eau_potable_2010/"



