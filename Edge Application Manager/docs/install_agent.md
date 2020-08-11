# Register Edge Device

In this section we log into the newly provisioned edge device (Ubuntu VM) with the credentials 
we were given.  We then obtain an API key which identifies your account on the IEAM Hub. We 
update the `HZN_EXCHANGE_USER_AUTH` environment varaible with your personalized key, and use 
it to install the agent program on the edge device.

1. In a terminal window (i.e. putty) shell into the edge device.  
   ```
   ssh <edge userid>@<edge hostname> -p <edge port>

   ```

2. The IEAM comand line interfaces (`cloudctl` and `hzn`) have already been installed on the edge device.  Use the IEAM client and log into the IEAM Hub.   
   ```
   cloudctl login -a <IEAM Hub URL> -u <IEAM userid> -p <IEAM password> -n default

   ```

3. Create a new API key to use with the Horizon CLI (`hzn`).   
   ```
   cloudctl iam api-key-create  <IEAM userid>-edge-node-apikey 

   ```  

4. The output of this command will look something like the following (assumming your user id is `zippy`).  Copy the API Key value to your clipboard. 

   ```
   Name          zippy-edge-node-apikey
   Description
   Bound To      crn:v1:icp:private:iam-identity:::IBMid:user:zippy
   Created At    2020-07-18T18:46+0000
   API Key       avqNQjrrknQ49gFEVfsqsqanhmniB0bhtn0nqA4oSovx
   ```

5. Edit the VM's main environment variables file.  This requires `sudo` priviledges. 

   ```
   sudo nano /etc/environment

   ```

6. On the line that begins with `HZN_EXCHANGE_USER_AUTH=iamapikey:` change the value of the API key after it to yours.  Save the file.  

7. Reset the environment variables.   

   ```
   source /etc/environment
   env | grep -i hzn

   ```

8. With the environment variables set with your API key we can install the agent which will connect to the IEAM Hub.  

   ```
   ./agent-device-install.sh 

   ```

A lot of messages will go by.  If they end with the following you can continue on to the next section.  

   ```
   Horizon node is registered. Workload agreement negotiation should begin shortly. Run 'hzn agreement list' to view.
   ```


<table align="center">
<tr>
  <td align="left" width="9999"><a href="start">Previous: Home</a> </td>
  <td align="right" width="9999"><a href="build_publish_service">Next: Build, Publish Service </a> </td>
</tr>
</table>

