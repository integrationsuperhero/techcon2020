# Define and Publish a Deployment Policy

In this section we will review a deployment policy and publish it.  A deployment policy (appears in the IEAM UI as Policies), are a declarative description of what conditions to deploy a service to an edge device.  Any new edge device that is registered with the hub will be examined by the system to see if its properties (and conditions) match the policy and service definition.  If it does then an agreement is made between the edge devide and the echange hub, at which time the edge device pulls the image from the registry and runs it as a service on the device.

The file `horizon/business_policy.json` file contains the deployment policy declaration.  In it you  can not only see the use of the environment variables you set earlier, but there are a couple of constraints defined.  In order for this service to be deployed to an edge device the edge device must have its `location` property set to `backyard` and more importantly the `device` property must be set to your edge device name.  We do this specifically for this lab, as there are many others using the same IEAM Hub, and we don't want to step on each others progress.
```json
{
  "label": "Business policy for $SERVICE_NAME",
  "description": "A super-simple image demo with Horizon MMS updates",
  "service": {
    "name": "$SERVICE_NAME",
    "org": "$HZN_ORG_ID",
    "arch": "$ARCH",
    "serviceVersions": [
      {
        "version": "$SERVICE_VERSION",
        "priority":{}
      }
    ]
  },
  "properties": [],
  "constraints": [
        "location == backyard",
        "device == %HOSTNAME%"
  ],
  "userInput": [
    {
      "serviceOrgid": "$HZN_ORG_ID",
      "serviceUrl": "$SERVICE_NAME",
      "serviceVersionRange": "[0.0.0,INFINITY)",
      "inputs": [
      ]
    }
  ]
}
```

2. Publish the policy.
```bash
hzn exchange business  addpolicy -f horizon/business_policy.json $BUSINESS_POLICY_NAME

```

3. Verify the policy was created.
```bash
hzn exchange business listpolicy $HOSTNAME.ieam-mms-lab.bp

```


<table align="center">
<tr>
  <td align="left" width="9999"><a href="build_publish_service">Previous: Build, Publish Service</a> </td>
  <td align="right" width="9999"><a href="register_edge_device">Next: Register Edge Device </a> </td>
</tr>
</table>
