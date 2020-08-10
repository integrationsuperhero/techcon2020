# Build and Publish the Image Processing Web Application Service

In this section we will package a simple web application that uses a TensorFlow model to discover objects in an image.  The web application consists of an HTML page, two test images, and a javascript model file.  Also pacakged in this service container is a script `service.sh` that runs constantly polling the IEAM Hub for changes in the model object.  When a change is published, this script will pull a copy of the new object (model file), and update the application.

A simple web server is started in the container, and the edge devices are already configured to expose a port (40xx) to allow the application to be invoked externally.

In order to publish a service to the IEAM Hub, we must obtain personal keys from the hub to sign the image with.  We build the application into a Docker image.  Then using the Horizon CLI, publish it as a service on the IEAM Hub.

1. Create a personal key to sign the service with.  This command requires an organization name (which can be different from the HZN Org ID) and your email address.  Use the organization IBM and provide your own email address in the follwowing command.
```bash
hzn key create IBM <you email address>

```
The output of this command will create a new public/private key and place them in the local `.hzn` folder.  The output looks something like the following.
```
Created keys:
 	/home/coc/.hzn/keys/service.private.key
	/home/coc/.hzn/keys/service.public.pem
```

2. Unregister this device for the moment.  We will be creating and setting up several objects and don't need this device to be registered with the hub yet. 
```bash
hzn unregister -f

```
The output of this command will indicate that it will be ``cancelling all agreements, stopping all workloads, and restarting Horizon``.  

3. Clone this repository into the home directory of the user on the edge device.  Then change to the directory.  Here you will find all the files files necessary for the rest of the lab.
```bash
cd ~
git clone https://github.com/eswarak/ieam-mms-lab.git

cd ieam-mms-lab

```

4. Set your Docker Hub account name in an environment variable, and then log into Docker Hub with your account.
```bash
export DOCKER_HUB_ID=<your docker hub id>
docker login -u $DOCKER_HUB_ID

```

5. The rest of this lab will require the use of many environment variables.  These are set in the file script file `vars.sh`.  You can review this file if you like.  Then `source` the varaiables into the local environment.
```bash
source vars.sh

```
The output will look something like the following.  Make sure all variables have a value.
```
HOSTNAME=dev29
HZN_ORG_ID=green
HZN_EXCHANGE_USER_AUTH=iamapikey:avqNQjrrknQ49gFEVfsqsqanhmniB0bhtn0nqe4oSovx
ARCH=amd64
DOCKER_HUB_ID=zippy
DOCKER_IMAGE=/dev29.ieam-mms-lab_amd64:1.0.0
SERVICE_NAME=dev29.ieam-mms-lab
SERVICE_VERSION=1.0.0
OBJECT_ID=dev29-model.js
```

6. Build the service container.
```bash
docker build -t ${DOCKER_IMAGE} .

```

The file `horizon/service_definition.json` contains the JSON properies for the service definition.  Notice that many of the fields in this definition will be substituted with the environment variables you established in the previous step.
```json
{
    "org": "$HZN_ORG_ID",
    "label": "$SERVICE_NAME for $ARCH",
    "description": "A super-simple image demo with Horizon MMS updates",
    "public": false,
    "documentation": "https://github.ibm.com/jconallen/ieam-mms-lab/blob/master/docs/README.md",
    "url": "$SERVICE_NAME",
    "version": "$SERVICE_VERSION",
    "arch": "$ARCH",
    "sharable": "multiple",
    "requiredServices": [],
    "userInput": [],
    "deployment": {
        "services": {
            "$SERVICE_NAME": {
                "image": "$DOCKER_IMAGE",
		        "ports": [
                    {
                        "HostPort": "9080:80/tcp",
                        "HostIP": "0.0.0.0"
                    }
                ]
            }
        }
    }
}
```


7. Sign and publish the container as a service on the IEAM Hub with the following Horizon command.
```bash
hzn exchange service publish -f horizon/service_definition.json

```

8. You can verify that the service got pubilshed by listing all of them. Your service should be in this list (look for the one with your device name).
```bash
hzn exchange service list

```

<table align="center">
<tr>
  <td align="left" width="9999"><a href="install_agent.md">Previous: Install Agent</a> </td>
  <td align="right" width="9999"><a href="publish_deployment_policy.md">Next: Publish Deployment Policy </a> </td>
</tr>
</table>
