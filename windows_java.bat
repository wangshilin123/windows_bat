@echo off
echo ��������Java��������
pause
wmic ENVIRONMENT create name="JAVA_HOME",username="<system>",VariableValue="C:\Program Files (x86)\Java\jdk1.7.0_79"
wmic ENVIRONMENT create name="CLASSPATH",username="<system>",VariableValue=".;%%JAVA_HOME%%\lib;%%JAVA_HOME%%\lib\tools.jar"
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%path%;%%JAVA_HOME%%\bin;%%JAVA_HOME%%\jre\bin;"
echo �������
pause