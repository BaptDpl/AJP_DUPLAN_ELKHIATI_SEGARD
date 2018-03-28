# JEEProject

This project is created using:
- Apache Tomcat 9
- Apache Maven 3.5.0 
- JAVA 8
- Eclipse Oxygen version 3
- Hibernate Tool plugin installed in Eclipse
(Drag jboss toll installer in your Eclipse and choose Hibernate Tool at installation https://marketplace.eclipse.org/content/jboss-tools )

In order to import this project in your Eclipse IDE:
- File > Import > Git > Projects from Git
- Next
- Choose Clone URI
- put the clone URI of this repository in the URI field: https://github.com/dianaallam/JEEProject.git
- put your github user and password
- choose the master branch
- select the existing CRUD project in the repository
- Finish

Once the project is imported check the following steps:
- Right click on your project > Properties
- In the Java Build Path, verify that that your have the JRE from JDK 1.8. If not, in the Libraries tab > Add Library > JRE System Library > Alternate JRE > browse the JDK folder > Finish
- In Java Compiler, you should have 1.8 selected
- In Project Facets, check you have Java 1.8 selected

Before running the project on Apache Tomcat Server, you should make a maven build:
- Right click on the project
- Run As > Maven build
