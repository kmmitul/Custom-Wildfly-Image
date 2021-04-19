# Custom-Wildfly-Image
If you want directly pull this cusom image: docker push kmmitul/wildfly_custom:tagname

Extension of official Wildfly image with

- a management user to access the administration console
- PostgreSql driver
- datasource using the PostgreSql module
- addtion of a sample war file


Runtime Environment variables: The connection url , username and password for the Postgres Datasource can be modified using environment variables, like:

docker run --name="MyWildfly" -d \
-p 8080:8080 -p 9990:9990 \
-e POSTGRES_CONNECTION=jdbc:postgresql://x.x.x.x:xxxx/mydb \
-e POSTGRES_USER="db_user" \
-e POSTGRES_PASSWORD=db_pass" \
kmmitul/wildfly_custom
