
# test specific class
mvn test -Dtest=classname

# install skipping tests
mvn install -Dmaven.test.skip=true

# remove dependencies
mvn dependency:purge-local-repository

# exclude modules (comma separated)
mvn compile -pl '!examples'
