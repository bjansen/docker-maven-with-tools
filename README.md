# docker-maven-with-tools

Maven 3 with OpenJDK 11 (on Debian "slim") + :
* Graphviz (to generate diagram in maven build step)
* Git (to do some release steps if needed)
* socat (to test docker socket if needed)
* node.js (to build Web projet with frontend-maven-plugin)
* npm (to build Web projet with frontend-maven-plugin)
* yarn (to build Web projet with frontend-maven-plugin)
* chromium (to run Karma.js tests on CI environments)
