@echo off
echo 正在设置Java环境变量
pause
wmic ENVIRONMENT create name="JAVA_HOME",username="<system>",VariableValue="D:\Java\jdk1.6.0_100"
wmic ENVIRONMENT create name="CLASSPATH",username="<system>",VariableValue=".;%%JAVA_HOME%%\lib;%%JAVA_HOME%%\lib\tools.jar"
wmic ENVIRONMENT where "name='PATH' and username='<system>'" set VariableValue="%path%;%%JAVA_HOME%%\bin;%%JAVA_HOME%%\jre\bin;"
echo 设置完成
pause