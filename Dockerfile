# Creating a docker image for a simple RESTful server, which provides 
# the functionality of JSON objects persistence, starting with a base image
# (gilhari) that already has jdxnode_rest_server installed
# and the appropriate environment varaibles (JX_HOME, NODE_PATH) set.

FROM dperiwal/st_repo:gilhari
#FROM gilhari:0.8
WORKDIR /opt/revfwd

ADD bin ./bin
ADD config ./config
ADD gilhari5_mysql_local.config .

EXPOSE 8081 
CMD node /node/node_modules/gilhari_rest_server/gilhari_rest_server.js gilhari5_mysql_local.config
