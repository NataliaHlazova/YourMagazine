# Specialized web application for TheMagazineSubscription Store
![Image alt](https://github.com/NataliaHlazova/image/raw/main/hello.jpg)

This project was generated with Maven Project, Java8, Spring Boot(2.5.6), MySQL.

### Reference Documentation
For further reference, please consider the following sections:

* [Eclipse IDE](https://www.eclipse.org/downloads/)
* [Java](https://www.oracle.com/java/technologies/downloads/)
* [MySQL](https://dev.mysql.com/downloads/installer/)
* [Official Apache Maven documentation](https://maven.apache.org/guides/index.html)
* [Spring Boot Maven Plugin Reference Guide](https://docs.spring.io/spring-boot/docs/2.5.6/maven-plugin/reference/html/)
* [Spring Boot DevTools](https://docs.spring.io/spring-boot/docs/2.5.6/reference/htmlsingle/#using-boot-devtools)
* [Spring Web](https://docs.spring.io/spring-boot/docs/2.5.6/reference/htmlsingle/#boot-features-developing-web-applications)
* [Spring Data JPA](https://docs.spring.io/spring-boot/docs/2.5.6/reference/htmlsingle/#boot-features-jpa-and-spring-data)

# Getting Started
* [Setup Eclipse IDE For Java Development + install Java JDK](https://www.youtube.com/watch?v=i8rjkre_RYw)
* [Install Maven on Eclipse](https://www.youtube.com/watch?v=2UilpPZi9hQ) OR [How to install JAVA + MAVEN + ECLIPSE on Windows 10](https://www.youtube.com/watch?v=9A425SE59SQ)
* [Setup Spring Tools 4 for Eclipse](https://www.youtube.com/watch?v=DKW6IlUrxG8)
* [Install MySQL 8.0.22 Server and Workbench](https://www.youtube.com/watch?v=OM4aZJW_Ojs)
* After that you can [import an existing Java Project in Eclipse](https://www.youtube.com/watch?v=R3k8S28pr1c)
* You have to [create only DB](https://www.youtube.com/watch?v=OnXB3ZRrOW0) "online_shop"(without tables) in MySQL:
```bash
  drop database if exists online_shop;
  create database online_shop char set utf8;
  use online_shop;
```
* In file: ["application.properties"](https://github.com/NataliaHlazova/cstd-hlazovanm-2122/blob/develop/project/src/main/resources/application.properties) you should [change username and password](https://www.youtube.com/watch?v=8mlM9s--xfw)(3:14):
```bash
   spring.datasource.username = your
   spring.datasource.password = your
```

* [Run Application.java](https://www.youtube.com/watch?v=LkZP74GKfvA) (8:20) or [Run Application.java](https://www.youtube.com/watch?v=8mlM9s--xfw)(6:30)
* For JUnit test you should open file: ["ApplicationTests.java"](https://github.com/NataliaHlazova/cstd-hlazovanm-2122/blob/develop/project/src/test/java/project/ApplicationTests.java) in Eclipse IDE and [run it](https://www.youtube.com/watch?v=tkzJsP7NP54)(8:42)

### Guides
The following guides illustrate how to use some features concretely:

* [Building a RESTful Web Service](https://spring.io/guides/gs/rest-service/)
* [Serving Web Content with Spring MVC](https://spring.io/guides/gs/serving-web-content/)
* [Building REST services with Spring](https://spring.io/guides/tutorials/bookmarks/)
* [Accessing Data with JPA](https://spring.io/guides/gs/accessing-data-jpa/)
* [Accessing data with MySQL](https://spring.io/guides/gs/accessing-data-mysql/)



## Contacts
You can contact me at 
nataskaglazova@gmail.com 