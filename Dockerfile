FROM maven:3.6.3-jdk-8-slim

COPY pom.xml /pom.xml
COPY data/test_data.tsv /usr/src/dataworks-pdm/data/
RUN mvn install && rm -rf target

ENTRYPOINT [ "mvn", "test" ]


