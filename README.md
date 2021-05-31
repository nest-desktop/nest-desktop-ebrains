# Build NEST Desktop on EBRAINS

You can copy command line from the web console of ``https://okd-dev.hbp.eu`` and enter in terminal to login via oc:

``oc login https://okd-dev.hbp.eu:443 --token=<TOKEN>``

Get status of current project:

``oc status``

You find a configuration and a bash files for setting up NEST Desktop on EBRAINS.
Before you have to modify the environment for EBRAINS authentication,
i.e. ``OIDC_CLIENT_ID`` and ``OIDC_CLIENT_SECRET`` of NEST Desktop
(which is printed after setting up the client for NEST Desktop).


Execute the bash script to deploy ``nest-desktop``, ``nest-server`` and ``apache2-oidc`` containers:

``bash setup-nest-desktop.sh``


**Other commands**

Scaling up the replicas (pods or nodes):

``oc scale --replicas=2 dc nest-desktop``
