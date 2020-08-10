**APIC Dev Jam Lab 1 - Create and Secure an API**

In this lab, you will get a chance to use the online APIC Developer
Toolkit and its intuitive interface to create a new API using the
OpenAPI definition (YAML) of the existing product inventory RESTful
web-service.

In this tutorial, you will explore the following key capabilities:

-   Creating an API by importing an OpenAPI definition for an existing
    REST service.

-   Configuring ClientID/Secret Security, endpoints, and proxy to invoke
    endpoint.

-   Testing a REST API in the online developer toolkit.

-   Publish an API for developers.

 APIC Dev Jam Series
====================================================================================================================================================================

The APIC Dev Jam Series is a hands-on workshop with lab exercises that
walk you through designing, publishing, and securing APIs. This workshop
is for API developers, architects, and line of business people who want
to create a successful API strategy. There are 8 labs and each is 30
minutes long. Make sure you choose enough time in your reservation to
get through all the labs! 

[NOTE: ]**[This demo environment contains a
full API Connect installation in Cloud Pak for Integration. The login
information to the APIC cluster will be sent in a separate email when
you reserve the instance. Use Google Chrome, Firefox or Microsoft Edge
to access the cluster using the credentials supplied. Make sure you
login using API Manager User Registry not Common Services
registry.]**

[Lab 1 : Create and Secure an API to Proxy an Existing REST Web
service](https://integrationsuperhero.github.io/techcon2020/APICDevJam/Lab1)

[Lab 2 : The Developer Portal
Experience](https://integrationsuperhero.github.io/techcon2020/APICDevJam/Lab2)

[Lab 3 : Add OAuth Security to your
API](https://integrationsuperhero.github.io/techcon2020/APICDevJam/Lab3)

[Lab 4 : Use Lifecycle Controls to Version Your
API](https://integrationsuperhero.github.io/techcon2020/APICDevJam/Lab4)

[Lab 5: Advanced API
Assembly](https://integrationsuperhero.github.io/techcon2020/APICDevJam/Lab5)

[Lab 6: Working with API
Products](https://integrationsuperhero.github.io/techcon2020/APICDevJam/Lab6)

[Lab 7: The Consumer
Experience](https://integrationsuperhero.github.io/techcon2020/APICDevJam/Lab7)

[Lab 8: Create and test GraphQL Proxy
API](https://integrationsuperhero.github.io/techcon2020/APICDevJam/Lab8)

 Import API to the Developer Workspace
===========================================================================================

First, we will download the OpenApi file for the existing REST service
for Inventory. Then, we will import it to the online workspace.

1.  Open a browser window to the API Manager Portal. If the screen
    displays [[\"Your connection is not
    private\"]] click
    Advanced, and then Accept the to continue. Log in with the username
    ad credentials supplied.

    ![](images/tutorial_html_c7010880ec6f2b94.png)

    ![](images/tutorial_html_228c6cdfd6f4d489.png)

    When you login for the first time you will see What's new in API Connect
    10. Click **Done** after reviewing.

    ![](images/tutorial_html_db2469619b74ee90.png)

2.  Click on the [[Develop APIs and
    Products]] tile
    to enter the online development workspace.

    ![](images/tutorial_html_61b4022571d0a4a3.png)  

3.  Now you are in the home screen of the online developer tool. From
    here, you can begin to create APIs and Products.

    ![](images/tutorial_html_333c6b76e2638b45.png)  

4.  Click [[ADD-\>API.]]

    ![](images/tutorial_html_993047b3f798317c.png)  

5.  On the next screen, select [[Existing OpenAPI]] under
    Import**,** as in the image below. Then
    click **[Next.]**

    ![](images/tutorial_html_b219e12b9ba30a1c.png)  

6.  Now download the[[Inventory.yaml]] 
    file the dte-labs git repository using the following command.

    ```
    curl -OL https://raw.githubusercontent.com/ibm-cloudintegration/dte-labs/master/APICv10/inventory.yaml

    ```

    You can also down the file using this link : [inventory.yaml](https://integrationsuperhero.github.io/techcon2020/APICDevJam/resources/inventory.yaml)

    Choose the downloaded
    [[Inventory.yaml]] OpenAPI
    definition and Click **[Next.]**

    ![](images/tutorial_html_64514a49c35e90d4.png)  

7.  **[Do not ]**select **[Activate
    API]**.
    Click [[Next]].

    ![](images/tutorial_html_3e51d8ec0929f2b5.png)  

8.  The API should be imported successfully as shown in the image below.
    Click [[Edit
    API]].

    ![](images/tutorial_html_83ece115b799d430.png)

 Configure API
===================================================================

After importing the existing API, the first step is to configure basic
security before exposing it to other developers. By creating a client
key and secret security, you are able to identify the app using the
services. Next, we will define the backend endpoints where the API is
actually running. API Connect supports pointing to multiple backend
endpoints to match your multiple build stage environments. Finally, we
will configure the proxy call to invoke the endpoint.

 Configure API Key security
---------------------------------------------------------------------------------------------------------------------------------------------

1.  Click [[Security
    Definitions]].

2.  In the [[Security
    Definition]] section,
    click
    the [[Add]] button
    on the right. This will open a new view titled [**[API Security
    Definition]**[.]]

3.  In the **[Name]** field,
    type [[client-id]].

4.  Under **[Type]**, choose [[API
    Key]].
    This will reveal additional settings.

5.  For **[Located
    In]** choose [[Header]].
    For **[Key Type]** choose [[Client
    ID]].
    In [[Parameter
    Name]] type [[X-IBM-Client-Id]].
    Your screen should look like the image below. 

    ![](images/tutorial_html_9acabae1c0f045ea.png)

6.  Click
    the [[Save]] button
    to return to the **[Security
    Definitions]** section.

7.  Click [[Add]] again
    to add the client secret definition.

8.  Under **[Name,]** type [[secret]].

9.  For **[Located
    In]** choose [[Header]].
    For **[Key Type]** choose [[Client
    Secret]].
    In [[Parameter
    Name]] type [[X-IBM-Client-Secret]].
    Your screen should look like the image below. 

    ![](images/tutorial_html_c8364653a0d1e2f5.png)

10. Click
    the [[Save]] button
    to return to the **[Security
    Definitions]** section.

11. Click [[Security]] in
    the left menu.

12. Click [[Add. ]]This will
    populate the **[Security
    Definitions]** table with secret and
    client-id. Select both as shown in the image below. Then
    click [[Save]]. 

    ![](images/tutorial_html_41e66c41b43e89ac.png)

13. Add security and enable secret and client-id. Click **Save** to save
    the changes.

    ![](images/tutorial_html_5bd00a842ec2bfff.png)

 Define Target-URL for Sandbox environment
------------------------------------------------------------------------------------------------------------------------------------------------------------

1.  Click
    on [[Properties]] in
    the left menu.

2.  Click on the target-url property. The target-url property is
    automatically inserted to be able to define multiple run-time
    targets for the service.

3.  In the **[Default value]** text field,
    type [https://apic-pot-inventory-api.mybluemix.net](https://apic-pot-inventory-api.mybluemix.net/)**[.]**

4.  Click **[Add.]**

5.  Choose the **[Sandbox catalog]** and
    for the URL
    type [https://apic-pot-inventory-api.mybluemix.net](https://apic-pot-inventory-api.mybluemix.net/)

![](images/tutorial_html_f977429f6db6091a.png)

6.  Click **[Save]** to complete the
    configuration.

 Configure Proxy Call in Designer
---------------------------------------------------------------------------------------------------------------------------------------------------

1.  On the top Navigation,
    click [[Assemble]].

2.  Click [[Invoke]] in
    the flow
    designer.  ![](images/tutorial_html_eda46641cdf764e6.png)

3.  This will open a window from the right to configure. In the URL
    field, type [[\$(target-url)\$(request.path)\$(request.search)]]. 

```
<!-- -->
```
4.  Click [[Save]].

 Test the API
==================================================================

In the API designer, you have the ability to test the API immediately
after creation in the Assemble view!

1.  Click
    the **[play]** **[icon]** as
    indicated in the image below. 

    ![](images/tutorial_html_70e7e587c6be69d7.png)

2.  Toggle
    [[Offline]]
    to activate API. to publish the API itself to the gateway for
    testing.  

    ![](images/tutorial_html_227e8350d01d16f9.png)

3.  After the API is published, additional tabs appear your screen
    should look like the image below.
    ![](images/tutorial_html_a35d4b82b4aa8b10.png)

4.  Choose **[Test]** tab and append **[/Items]** to the URL as shown below.

    ![](images/tutorial_html_5e2c8cff09f77c58.png)

5.  Your client Id  and client secret for the sandbox-test-app is
    prefilled.

6.  Scroll all the way to the bottom of the test view.

    ![](images/tutorial_html_6400dc1e94d34fd8.png)

7.  Click [[Send]].

8.  If this is the first test of the API, you will see a certificate
    exception. Simply click on the URL and choose the option to proceed.

9.  Go back to the test view and
    click [[Send]] again.

10. Now you will see a Response section with Status code 200 OK and the
    Body displaying all the inventory items.

    ![](images/tutorial_html_d063fb9dba035b70.png)

 Publish API
=================================================================

In this lab, we will make the API available to developers. In order to
do so, the API must be first put into a product and then published to
the sandbox catalog. A product dictates rate limits and API throttling.
When the product is published, the Invoke policy defined in the previous
lab is written to the gateway. 

 Create Inventory Product and Add API
-------------------------------------------------------------------------------------------------------------------------------------------------------

1.  From the vertical navigation menu on the left,
    click **[Develop]** to return to the
    Develop home screen.

    ![](images/tutorial_html_fa935b3ea4222145.png)

2.  Click **[Add]** and
    select [Product]**.**

3.  On the next screen, select **[New
    Product]**. Then
    click **[Next]**.

4.  For the Title, enter [**[Inventory
    APIs]**[.]] Click **[Next]**.

5.  Select the **[inventory 1.0.0 API]** as
    shown in the image below. Then
    click **[Next]**.  

    ![](images/tutorial_html_536925e23d552bb5.png)

6.  Keep the **[Default Plan]** as is.
    Click **[Next]**.  

    ![](images/tutorial_html_333097bd27fa8fa7.png)

7.  Under **[Publish]**, enable **[Publish
    Product]** as shown in the image below.
    Then
    click [**[Next]**[.  ]]

    ![](images/tutorial_html_850499fce1003aa7.png)

8.  The Product is now published successfully with the API base URL
    listed and available for developers from the developer portal. Go
    to [APIC (v10) Dev Jam - Lab 2 - The Developer Portal
    Experience](https://integrationsuperhero.github.io/techcon2020/APICDevJam/Lab2) to
    see how to access this API as a developer.

 Summary
=============================================================

You completed the APIC Dev Jam Lab 1 - Create and Secure an
API. Throughout the tutorial, you explored the key takeaways:

-   Create an API by importing an OpenAPI definition for an existing
    REST service.

-   Configure ClientID/Secret Security, endpoints, and proxy to invoke
    endpoint.

-   Test a REST API in the online developer toolkit.

-   Publish an API for developers.

Continue the APIC Dev Jam! Go to [APIC Dev Jam Lab 2 - The Developer
Portal
Experience](https://integrationsuperhero.github.io/techcon2020/APICDevJam/Lab2) to
learn how to socialize this API and make it available to developers.
