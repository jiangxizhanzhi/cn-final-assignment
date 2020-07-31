FROM nat-harbor.daocloud.io/library/openjdk:8u232-jre-debian
ADD ./target/cn.jar /app/cn.jar
ADD runboot.sh /app/
WORKDIR /app
RUN chmod a+x runboot.sh
CMD /app/runboot.sh