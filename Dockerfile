FROM microsoft/mssql-server-linux

LABEL maintainer="fengying0347@163.com" 

RUN cd /opt/mssql/bin/ && mv sqlservr sqlservr.old 
COPY crack.py /opt/mssql/bin/
WorkDir /opt/mssql/bin/
RUN ls && python /opt/mssql/bin/crack.py && chmod -R 777 /opt/mssql/bin/sqlservr
