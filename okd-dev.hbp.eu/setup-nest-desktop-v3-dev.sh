#
# NEST Desktop
#

oc project nest-desktop-v3
oc delete is,dc,svc,route app nest-desktop nest-server apache2-oidc
oc delete configMap nest-desktop-apache2oidc

oc new-app nestdesktop/app:3.0+nestdesktop/nest-server:3.0+nestdesktop/apache2-oidc:1.2
oc new-app nest-desktop-apache2oidc-collab2-v3-dev.yaml
oc set env --from='configmap/nest-desktop-apache2oidc' dc/app
oc create route edge --hostname='nest-desktop-v3.apps-dev.hbp.eu' --port='8080-tcp' --service='app'

#oc scale --replicas=10 dc nest-desktop
