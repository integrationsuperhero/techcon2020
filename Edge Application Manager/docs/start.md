# IEAM Model Management System Lab

In this lab you will use a virtual device, install an agent and demontrate the model management system being used to update
a model resource in a simple image processing web application.  This update will happen inside a runnning container without having to redeploy the service to the edge device or even restart the service container.

There are several steps in this lab;

1. Starting from a newly provisioned edge device (Ubuntu VM), install the agent program on the edge device which will connect it with the exchange server (IEAM Hub).
2. Build a simple service and publish it to the IEAM hub as a service.
3. Define and publish a deployment policy.
4. Register the edge device with a set of properties that will trigger a deployment of the service to it.
5. Verify the service is running.
6. Object the model object on the IEAM hub and watch it deploy to the edge device.
7. Verify the service has a new model.

Normally these tasks are carried out on at least two different machines (edge device and your workstation).  To facilitate the needs of this lab (and not require you to install software on your workstation), we will use the same edge device for both types of tasks.

This lab also expects that you have a Docker Hub account that you can use to publish the docker images that you create in this lab.  We use the public Docker Hub as a convience to everyone, since it has known certifications and won't require the creation of a new registry just for this lab.


Have on hand the following information:

- **Edge device hostname and ssh port** 
- **Edge device userid/password**
- **IBM Edge Application Manager( IEAM ) URL**
- **IEAM console userid/password**
- **IEAM host url**
- **Your Docker Hub ID (you can <a href="https://hub.docker.com/signup" target="_blank">create a temporary one</a> if you like)**

<table align="center">
<tr>
  <td align="right" width="9999"><a href="install_agent">Install Agent</a></td>
</tr>
</table>

