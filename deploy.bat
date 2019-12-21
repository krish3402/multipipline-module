SET NODE1=maven-simple
SET NODE2=module-1
SET NODE3=module-2
SET VERSION=1.0
SET TOMCAT_HOME=c:\xampp\tomcat\webapps

d:
cd D:\tmp
C:\wget.exe http://3.82.215.163:8080/nexus-latest/service/local/repositories/releases/content/com/mlesniak/jacoco/%NODE1%/%VERSION%/%NODE1%-%VERSION%.jar
timeout 20
C:\wget.exe http://3.82.215.163:8080/nexus-latest/service/local/repositories/releases/content/com/mlesniak/jacoco/%NODE2%/%VERSION%/%NODE2%-%VERSION%.jar
timeout 20 
C:\wget.exe http://3.82.215.163:8080/nexus-latest/service/local/repositories/releases/content/com/mlesniak/jacoco/%NODE3%/%VERSION%/%NODE3%-%VERSION%.jar
timeout 20

mkdir %TOMCAT_HOME%\node1
mkdir %TOMCAT_HOME%\node2
mkdir %TOMCAT_HOME%\node3

copy %NODE1%-%VERSION%.jar %TOMCAT_HOME%\node1\%NODE1%.jar
copy %NODE2%-%VERSION%.jar %TOMCAT_HOME%\node2\%NODE2%.jar
copy %NODE3%-%VERSION%.jar %TOMCAT_HOME%\node3\%NODE3%.jar

move /y %NODE1%-%VERSION%.jar %NODE1%-%VERSION%.jar_bkp
move /y %NODE2%-%VERSION%.jar %NODE2%-%VERSION%.jar_bkp
move /y %NODE3%-%VERSION%.jar %NODE3%-%VERSION%.jar_bkp
