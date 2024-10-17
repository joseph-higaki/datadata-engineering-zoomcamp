# Docker Concepts Refresher

| Concept | Definition |
| --- | --- |
| Docker | Is a set of PaaS products that are used to deliver software packages in Containers. The software that hosts the Containers is **Docker Engine**   |
| Container | Standard unit of software that packages code and dependencies so that an application runs quickly and reliably. This is a OS level of virtualization, meaning that containers are isolated to one another but they still use a single OS Kernel ![containers](../../_resources/01%20containers.png) |
| Image | Container template. It usually contains a set of tool(s) installed. Usually [official docker images](https://hub.docker.com/search?image_filter=official) are available from software tools like [mysql](https://hub.docker.com/_/mysql), [rabbitmq](https://hub.docker.com/_/rabbitmq), etc  |
| Dockerfile | Set of declarative instructions on how to build a docker image, usually based from another image |
