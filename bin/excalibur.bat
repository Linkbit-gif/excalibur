@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  excalibur startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and EXCALIBUR_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\excalibur-0.1.jar;%APP_HOME%\lib\micronaut-aws-alexa-httpserver-2.4.1.jar;%APP_HOME%\lib\micronaut-jdbc-hikari-3.4.0.jar;%APP_HOME%\lib\micronaut-security-oauth2-2.3.1.jar;%APP_HOME%\lib\micronaut-http-server-tomcat-2.1.2.jar;%APP_HOME%\lib\micronaut-data-jdbc-2.3.1.jar;%APP_HOME%\lib\micronaut-data-spring-2.3.1.jar;%APP_HOME%\lib\micronaut-aws-alexa-2.4.1.jar;%APP_HOME%\lib\micronaut-hibernate-jpa-spring-3.4.0.jar;%APP_HOME%\lib\micronaut-hibernate-jpa-3.4.0.jar;%APP_HOME%\lib\micronaut-jdbc-3.4.0.jar;%APP_HOME%\lib\micronaut-security-2.3.1.jar;%APP_HOME%\lib\micronaut-servlet-engine-2.1.2.jar;%APP_HOME%\lib\micronaut-data-runtime-2.3.1.jar;%APP_HOME%\lib\micronaut-security-annotations-2.3.1.jar;%APP_HOME%\lib\micronaut-servlet-core-2.1.2.jar;%APP_HOME%\lib\micronaut-data-model-2.3.1.jar;%APP_HOME%\lib\micronaut-data-tx-hibernate-2.3.1.jar;%APP_HOME%\lib\micronaut-data-tx-2.3.1.jar;%APP_HOME%\lib\micronaut-http-client-2.4.1.jar;%APP_HOME%\lib\micronaut-http-client-core-2.4.1.jar;%APP_HOME%\lib\micronaut-http-server-2.4.1.jar;%APP_HOME%\lib\micronaut-management-2.4.1.jar;%APP_HOME%\lib\micronaut-runtime-2.4.1.jar;%APP_HOME%\lib\micronaut-kotlin-runtime-2.3.0.jar;%APP_HOME%\lib\swagger-annotations-2.1.6.jar;%APP_HOME%\lib\micronaut-validation-2.4.1.jar;%APP_HOME%\lib\micronaut-http-netty-2.4.1.jar;%APP_HOME%\lib\micronaut-websocket-2.4.1.jar;%APP_HOME%\lib\micronaut-router-2.4.1.jar;%APP_HOME%\lib\micronaut-http-2.4.1.jar;%APP_HOME%\lib\micronaut-context-2.4.1.jar;%APP_HOME%\lib\micronaut-spring-3.1.0.jar;%APP_HOME%\lib\micronaut-aop-2.4.1.jar;%APP_HOME%\lib\micronaut-buffer-netty-2.4.1.jar;%APP_HOME%\lib\micronaut-inject-2.4.1.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.12.2.jar;%APP_HOME%\lib\ask-sdk-core-2.37.1.jar;%APP_HOME%\lib\ask-sdk-runtime-2.37.1.jar;%APP_HOME%\lib\ask-sdk-model-1.34.1.jar;%APP_HOME%\lib\ask-sdk-model-runtime-1.0.2.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.12.2.jar;%APP_HOME%\lib\jackson-databind-2.12.2.jar;%APP_HOME%\lib\jackson-annotations-2.12.2.jar;%APP_HOME%\lib\jackson-core-2.12.2.jar;%APP_HOME%\lib\jackson-module-kotlin-2.12.2.jar;%APP_HOME%\lib\kotlin-reflect-1.4.31.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.4.31.jar;%APP_HOME%\lib\spring-boot-starter-2.4.0.jar;%APP_HOME%\lib\spring-orm-5.3.1.jar;%APP_HOME%\lib\spring-jdbc-5.3.1.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.4.0.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\h2-1.4.199.jar;%APP_HOME%\lib\micronaut-core-reactive-2.4.1.jar;%APP_HOME%\lib\micronaut-core-2.4.1.jar;%APP_HOME%\lib\jakarta.annotation-api-1.3.5.jar;%APP_HOME%\lib\spotbugs-annotations-4.1.4.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\spring-tx-5.3.1.jar;%APP_HOME%\lib\spring-data-commons-2.4.0.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.4.0.jar;%APP_HOME%\lib\spring-boot-2.4.0.jar;%APP_HOME%\lib\spring-context-5.3.1.jar;%APP_HOME%\lib\spring-aop-5.3.1.jar;%APP_HOME%\lib\spring-beans-5.3.1.jar;%APP_HOME%\lib\spring-expression-5.3.1.jar;%APP_HOME%\lib\spring-core-5.3.1.jar;%APP_HOME%\lib\snakeyaml-1.27.jar;%APP_HOME%\lib\HikariCP-3.4.5.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.30.jar;%APP_HOME%\lib\log4j-to-slf4j-2.13.3.jar;%APP_HOME%\lib\log4j-slf4j-impl-2.8.2.jar;%APP_HOME%\lib\slf4j-api-1.7.30.jar;%APP_HOME%\lib\rxjava-2.2.20.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\validation-api-2.0.1.Final.jar;%APP_HOME%\lib\hibernate-core-5.4.24.Final.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.4.31.jar;%APP_HOME%\lib\kotlin-stdlib-1.4.31.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.59.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.59.Final.jar;%APP_HOME%\lib\netty-codec-http2-4.1.59.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.59.Final.jar;%APP_HOME%\lib\netty-handler-4.1.59.Final.jar;%APP_HOME%\lib\netty-codec-4.1.59.Final.jar;%APP_HOME%\lib\netty-transport-4.1.59.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.59.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.59.Final.jar;%APP_HOME%\lib\netty-common-4.1.59.Final.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.4.31.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\config-1.4.1.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\tomcat-embed-core-9.0.38.jar;%APP_HOME%\lib\spring-jcl-5.3.1.jar;%APP_HOME%\lib\tomcat-annotations-api-9.0.38.jar;%APP_HOME%\lib\javax.servlet-api-4.0.1.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\log4j-api-2.13.3.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.1.2.Final.jar;%APP_HOME%\lib\jboss-logging-3.4.1.Final.jar;%APP_HOME%\lib\javax.persistence-api-2.2.jar;%APP_HOME%\lib\byte-buddy-1.10.17.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jboss-transaction-api_1.2_spec-1.1.1.Final.jar;%APP_HOME%\lib\jandex-2.1.3.Final.jar;%APP_HOME%\lib\classmate-1.5.1.jar;%APP_HOME%\lib\jaxb-runtime-2.3.1.jar;%APP_HOME%\lib\jaxb-api-2.3.1.jar;%APP_HOME%\lib\javax.activation-api-1.2.0.jar;%APP_HOME%\lib\dom4j-2.1.3.jar;%APP_HOME%\lib\jakarta.transaction-api-1.3.3.jar;%APP_HOME%\lib\txw2-2.3.1.jar;%APP_HOME%\lib\istack-commons-runtime-3.0.7.jar;%APP_HOME%\lib\stax-ex-1.8.jar;%APP_HOME%\lib\FastInfoset-1.2.15.jar


@rem Execute excalibur
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %EXCALIBUR_OPTS%  -classpath "%CLASSPATH%" higgs.boson.ApplicationKt %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable EXCALIBUR_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%EXCALIBUR_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
