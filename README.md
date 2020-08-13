# TechCon 2020 Labs

## Joining the labs
Proctored labs will be available August 11-13 from 11 AM EST to 4 PM EST. Labs will be first come first serve. Please check back each day during the labs as the links for our lab rooms will change. 

Please join the virtual lab room associated track that the lab is in. All passwords are the same: TechCon2020. Once in the room please ask one of the lab hosts for an access to an environment to work on the labs. We do request that you stay connected to our virtual room during the course of working on the lab so we can provide assistance. Please let a proctor know when you have completed your lab so we can free up the environment for other customers.

When logging in please use your work email and provide at least first name and last initial. Links for August 13th:
  
* [API](https://ibm.webex.com/ibm/k2/e.php?MTID=tf26db5029cd7f06e56539533ae8485ea)	
* [Application Integration, Blockchain, Messaging & Events](https://ibm.webex.com/ibm/k2/e.php?MTID=te6aa87ff4e3e0eefbee757b276f2b5ee)
* [Application Platform](https://ibm.webex.com/ibm/k2/e.php?MTID=t9b9eb167b31c4728867798097d38cbea)	
* [Management (Multicloud Management and Edge)](https://ibm.webex.com/ibm/k2/e.php?MTID=t56b9d04e8cb0ab2e61ddaa4dff93ecf5)

All passwords are the same: TechCon2020



## Lab Abstracts

| Track           | Lab & Guide                                                                                                                         | Abstract                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
|-------------------------|------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| API                     | [APIC Dev Jam Lab 1 \- Create and Secure an API](APICDevJam/Lab1)                                                                                     | In this lab, you will get a chance to use the online APIC Developer Toolkit and its intuitive interface to create a new API using the OpenAPI definition \(YAML\) of the existing product inventory RESTful web\-service\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| API                     | [APIC Dev Jam \- Lab 2 \- The Developer Portal Experience](APICDevJam/Lab2)                                                                           | In this lab, we will take the API created in Lab 1 and publish it to a Developer Portal, ready for consumption by app developers\. We will begin by creating a new catalog and configuring the developer portal for our Inventory product\. We will then define a new plan in the product and publish to our new developer portal\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| API                     | [APIC Dev Jam Lab 3 \- Add OAuth Security to your API](APICDevJam/Lab3)                                                                              | In this lab, you will secure the Inventory API to protect the resources exposed by ThinkIBM\. Consumers of your API will be required to obtain and provide a valid OAuth token before they can invoke the Inventory API\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| API                     | [APIC Dev Jam Lab 4 \- Use Lifecycle Controls to Version your API](APICDevJam/Lab4)                                                                    | In the previous lab, you created a new version of the inventory API which is secured with an OAuth 2\.0 provider\. At this stage, however, the changes are still in draft mode\. In order for the changes to take effect, you must publish the APIs to the developer portal and make them available for the API Consumers\. Recall though that the inventory 1\.0\.0 version is already running and has active subscribers\.                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| API                     | [APIC Dev Jam Lab 5 \- Advanced API Assembly](APICDevJam/Lab5)                                                                                         | In the previous labs, you have been working with an API that acts as a pass\-through to a microservice application\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| API                     | [APIC Dev Jam \- Lab 6 \- Working with API Products](APICDevJam/Lab6)                                                                                | Your work as an Application Developer and API Designer is now complete\. It's time to switch roles and become an API Product Manager\. The role of the API Product Manager is to take the developed assets and bundle them together using a go\-to\-market strategy\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| API                     | [APIC Dev Jam \- Lab 7 \- The Consumer Experience](APICDevJam/Lab7)                                                                                    | In this lab, we will take the API created in Lab 1 and publish it to a Developer Portal, ready for consumption by app developers\. We will begin by creating a new catalog and configuring the developer portal for our Inventory product\. We will then define a new plan in the product and publish to our new developer portal\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| API                     | [APIC Dev Jam \- Lab 8 \- Creating GraphQL Proxy API](APICDevJam/Lab8)                                                                                 | In this lab, you will explore the how to define GraphQL APIs that proxy to a backend GraphQL server\. GraphQL is a query language for APIs that gives an application client greater control over what data it retrieves in an API request when compared with a REST API request\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| Application Integration | [Deploy an App integration and expose it securely as APIs](ApplicationIntegration/BuildandDeployAPIs.pdf)                                                                           | Extending access via APIs to your back\-end integrations empower your partners and developer community to create new business value, technical value, and customer experiences for your products and offerings\. Spur innovations where a number of technologies are combined to create something new, for example, extending the ability apply for loan pre\-approvals that can be utilized within apps that search for cars or real estate\. To do this, you must first create the back\-end integrations, which combine data from existing core systems, disparate assets, or SaaS services with the ability to send critical data between systems reliably\. Second, you need to provide APIs to your back\-end integrations that secure access and apply rate limits\.\.                                                                                                        |
| Application Integration | [Connect an App Integration with Message Queue using Cloud Pak for Integration](ApplicationIntegration/AccessBackendSystems.pdf)                                                      | Modern applications and APIs all need the ability to communicate data reliably between mission critical systems across internal/external data sources, networks, and regions\. In mission critical environments your messaging infrastructure must be robust, reliable, and secure with the ability to integrate into your applications and APIs at pace and scale\. In this tutorial, you will create a message queue that will receive order data from an API call to a retail ordering system\. The red box in the diagram shows what you will be creating and where it fits in the overall architecture of a mobile retail buying application\.                                                                                                                                                                                                                                  |
| Messaging & Events      | [Connect IBM MQ with IBM Event Streams using the Kafka source connector](Messaging-Events/DriveDigitalTransformation.pdf)                                                             | The most interesting and impactful new applications in an enterprise are the applications that provide new ways of interacting with existing systems by reacting in real\-time to mission\-critical data\. Leverage your existing investments, skills and even existing data, and use event\-driven techniques to offer more\-responsive and more\-personalized experiences\. IBM Event Streams has supported connectivity to the systems you’re already using\. By combining the capabilities of IBM Event Streams event streams and message queues, you can combine your transaction data with real\-time events to create applications and processes\. These applications  and processes will  allow you to react to situations quickly and provide a greater personalized experience\.                                                                                           |
| Messaging & Events      | [Try IBM Event Streams in a demo environment](Messaging-Events/GettingStartedwithIBMEventStreams.pdf)                                                                                       | IBM Event Stream implements an Apache Kafka deployment that maximizes the spread of Kafka brokers across worker nodes in your Kubernetes cluster\. This creates a highly\-available configuration making the deployment resilient to many classes of failure with automatic restart of brokers included                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Messaging & Events      | [Integrate Kafka with business Applications to create new responsive experiences](Messaging-Events/RespondtoEvents.pdf)                                                    | The most interesting and impactful new applications in an enterprise are those that provide interactive experiences by reacting to existing systems carrying out a business function\. In this tutorial, we'll be taking a look at an example from the retail industry\. Starting with an existing API orchestrating the business function to "place an order"\. Let's say that when a customer places an order, we want to provide a real\-time response \-\- reward the customer with points in customer loyalty app or a gamification experience, or sign them up for a certain email nurture program\. To do that, we need each order to emit an event\. The Cloud Pak for Integration combines integration capabilities with Kafka based event streaming to make the data available for cloud\-native applications to subscribe to and use for a variety of business purposes\. |
| Messaging & Events      | [MQ Uniform Clusters and Application Rebalancing](Messaging-Events/UniformClusters.pdf)                                                          | Experience the latest enhancement to IBM MQ\. Uniform clusters are a specific pattern of an IBM MQ cluster that provides a highly available and horizontally scaled small collection of queue managers\. These queue managers are configured almost identically, so that an application can interact with them as a single group\. This makes it easier to ensure each queue manager in the cluster is being used, by automatically ensuring application instances are spread evenly across the queue managers\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Blockchain              | [IBM Blockchain Platform Hands\-On: An overview to the IBM VS Code Extension for Blockchian](Blockchain/BlockchainLab-IDTC-16-IntroLab.pdf)                                           | This lab is a technical introduction to blockchain, specifically smart contract development using the Linux Foundation’s Hyperledger Fabric v1\.4 and shows you how the IBM Blockchain Platform can accelerate your pace of development\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| Blockchain              | [Build a Network on the IBM Blockchain Platform](Blockchain/BlockchainLab-IDTC-18- BuildNetwork.pdf)                                                                                    | This lab will take you through the process of creating a blockchain network using the IBM Blockchain Platform\.   You will be able to leverage the easy to use console to build, configure and connect Hyperledger Fabric components and finally deploy and invoke smart contracts on the blockchain network\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Application Platform    | [L01\-Getting Started with Docker](ApplicationModernization/L01_v1.1_ICP4A-Docker_TechCon.pdf)                                                                                                  | The goal of this lab is to provide background when working with Docker images and containers running a IBM WebSphere®Liberty application\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Application Platform    | [L02\-Explore Red Hat OpenShift Container Platform](ApplicationModernization/L02_v1.3_Explore-OpenShift_TechCon.pdf)                                                                                  | The goal of this lab is to provide a quick introduction to Red Hat OpenShift Container Platform \(RHOCP\) which is the Kubernetes implementation used in IBM Cloud Pak for Applications \(CP4Apps\)\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Application Platform    | [L03\-Getting Started with Kubernetes](ApplicationModernization/L03_v1.2_CP4Apps-Kubernetes_TechCon.pdf)                                                                                              | This lab is intended primarily for system administrator/infrastructure professionals who manage the Kubernetes cluster\. This lab explains Kubernetes principles and the internal working of the cluster\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Application Platform    | [L04\-Liberty Application Deployment with Operators](ApplicationModernization/L04_v1.2_CP4Apps-Operators_TechCon.pdf)                                                                                | This lab is intended primarily for developers to deploy applications to OpenShift with Operators which are the preferred mechanism in RHOCP for application packaging, deployment and management\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Application Platform    | [L05\-Application Modernization Using Transformation Advisor](ApplicationModernization/L05_v1.0_CP4Apps-Application-Modernization_TechCon.pdf)                                                                          | This lab is intended primarily for developers to analyze an application with Transformation Advisor and deploy it to an OpenShift cluster\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| Application Platform    | [L06\-Application Modernization with Java EE Microservices and Liberty](ApplicationModernization/L06_v1.1_CP4Apps-Application-Modernization-with-Microservices_TechCon.pdf)                                                                | This lab is intended primarily for developers to use the refactor modernization option for exisitng Java EE apps                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| Application Platform    | [L07\-Using Tekton Pipelines for CI/CD of Microservices on OpenShift Container Platform](ApplicationModernization/L07_v1.4_CICD-Tekton-Pipelines-OSCP_TechCon.pdf)                                               | This lab is intended primarily for developers using Cloud Native tools to create microservices and to deploy it throug the CI/CD pipeline to a OpenShift cluster\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Multi\-cloud Management | [Application Management using IBM Cloud Pak for Multicloud Management](Multicloud Management/App Management HoL 1.3 08-20.pdf)                                                             | Learn how to deploy and manage applications across clusters by using Cloud Pak for Multicloud Management                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| Multi\-cloud Management | [Event Management and Runbook Automation with IBM Cloud Pak for Multicloud Management Hands\-on Lab]()                                 | Event Management and Runbook Automation with IBM Cloud Pak for Multicloud Management                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
| Multi\-cloud Management | [IBM Cloud Pak for Multicloud Management \- Using SRE "Golden Signals" Hands on Lab](Multicloud Management%2FUsing SRE %22Golden Signals%22 Hands on Lab.pdf)                                                 | Effectively monitor complex, cloud native applications deployed on Kubernetes by using Golden Signals                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| Multi\-cloud Management | [Multicluster Management with IBM Cloud Pak for Multicloud Management](Multicloud Management/Cluster Management HoL 08-20.pdf)                                                               | Learn how to manage multiple Kubernetes clusters using Cloud Pak for Multicloud Management\.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Multi\-cloud Management | [Security and Compliance Management with IBM Cloud Pak for Multicloud Management](Multicloud Management/Policy Management HoL 08-20.pdf)                                                    | Use the Governance and risk dashboard to view and manage security risks and policy violations in your clusters and applications                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| Multi\-cloud Management | [IBM Edge Application Manager tutorial with ML Model Updates](Edge Application Manager)                                                                        | Install an agent on an edge device then manage the device by policy and deploy an application                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
