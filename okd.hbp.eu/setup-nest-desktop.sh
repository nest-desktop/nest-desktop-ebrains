#
# NEST Desktop
#

oc project nest-desktop
oc delete is,dc,svc,route app nest-simulator apache2-oidc
oc delete configMap nest-desktop-apache2oidc

oc new-app nestdesktop/app:3.0+nestdesktop/nest-simulator:3.0+nestdesktop/apache2-oidc:1.2
oc new-app nest-desktop-apache2oidc-collab2.yaml
oc set env --from='configmap/nest-desktop-apache2oidc' dc/app
oc create route edge --hostname='nest-desktop.apps.hbp.eu' --port='8080-tcp' --service='app'

#oc scale --replicas=10 dc nest-desktop
