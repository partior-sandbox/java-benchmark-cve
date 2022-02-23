# source "scripts/verifyBenchmarkPluginAvailable.sh" - Don't have .bat version of this (yet)
# The buildtime elements when invoking the findbugs-maven-plugin leverage the buildtime extension specified in: .mvn/extensions.xml
CALL mvn compile pmd:pmd -Dbuildtime.output.csv=true -Dbuildtime.output.csv.file=../data/out.csv
CALL mvn org.owasp:benchmarkutils-maven-plugin:append-time -DtoolName=pmd

