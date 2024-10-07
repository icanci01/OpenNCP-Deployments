echo off
SETLOCAL

set OPENNCP_VERSION=7.1.0
set PORTAL_VERSION=1.1.0

@REM Ask user for the docker registry to be used
SET /P REGISTRY="Enter the docker registry to be used: "

echo The registry you entered is: %REGISTRY%

@REM Ask user if the registry is correct
SET /P IS_CORRECT="Is this correct? (Y/N): "

IF /I "%IS_CORRECT%" NEQ "Y" (
    echo The registry you entered is not correct. Exiting...
    EXIT /B 1
)

cd ..

@REM cd openncp-configuration-utility
@REM docker build -t %REGISTRY%/openncp-configuration-utility:%OPENNCP_VERSION% .
@REM docker push %REGISTRY%/openncp-configuration-utility:%OPENNCP_VERSION%
@REM cd ..

@REM cd epsos-configuration
@REM docker build -t %REGISTRY%/openncp-epsos-configuration:%OPENNCP_VERSION% .
@REM docker push %REGISTRY%/openncp-epsos-configuration:%OPENNCP_VERSION%
@REM cd ..

@REM cd openncp-server
@REM docker build -t %REGISTRY%/openncp-server:%OPENNCP_VERSION% .
@REM docker push %REGISTRY%/openncp-server:%OPENNCP_VERSION%
@REM cd ..

cd openncp-client
docker build -t %REGISTRY%/openncp-client:%OPENNCP_VERSION% .
docker push %REGISTRY%/openncp-client:%OPENNCP_VERSION%
cd ..

@REM cd ehealth-portal-backend
@REM docker build -t %REGISTRY%/ehealth-portal-backend:%PORTAL_VERSION% .
@REM docker push %REGISTRY%/ehealth-portal-backend:%PORTAL_VERSION%
@REM cd ..

@REM cd ehealth-portal-frontend
@REM docker build -t %REGISTRY%/ehealth-portal-frontend:%PORTAL_VERSION% .
@REM docker push %REGISTRY%/ehealth-portal-frontend:%PORTAL_VERSION%
@REM cd ..

@REM cd openncp-trc-sts
@REM docker build -t %REGISTRY%/openncp-trc-sts:%OPENNCP_VERSION% .
@REM docker push %REGISTRY%/openncp-trc-sts:%OPENNCP_VERSION%
@REM cd ..

@REM cd openncp-gateway-backend
@REM docker build -t %REGISTRY%/openncp-gateway-backend:%OPENNCP_VERSION% .
@REM docker push %REGISTRY%/openncp-gateway-backend:%OPENNCP_VERSION%
@REM cd ..

@REM cd openncp-gateway-frontend
@REM docker build -t %REGISTRY%/openncp-gateway-frontend:%OPENNCP_VERSION% .
@REM docker push %REGISTRY%/openncp-gateway-frontend:%OPENNCP_VERSION%
@REM cd ..

@REM cd openncp-openatna
@REM docker build -t %REGISTRY%/openncp-openatna:%OPENNCP_VERSION% .
@REM docker push %REGISTRY%/openncp-openatna:%OPENNCP_VERSION%
@REM cd ..

@REM cd openncp-tsam-sync
@REM docker build -t %REGISTRY%/openncp-tsam-sync:%OPENNCP_VERSION% .
@REM docker push %REGISTRY%/openncp-tsam-sync:%OPENNCP_VERSION%
@REM cd ..

@REM cd openncp-tsam-exporter
@REM docker build -t %REGISTRY%/openncp-tsam-exporter:%OPENNCP_VERSION% .
@REM docker push %REGISTRY%/openncp-tsam-exporter:%OPENNCP_VERSION%
@REM cd ..

ENDLOCAL
echo on