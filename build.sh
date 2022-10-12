#/usr/bin/bash

set -e

declare -a documents=(
    "AasxTestCaseSpec"
#    "FrameworkForTesting"
#    "HowToGetAasxCertificate"
#    "ProcessDescription"
)

for i in "${documents[@]}"
do
    echo "Building $i"
    docker run \
        -v $PWD:/documents \
        asciidoctor/docker-asciidoctor \
        asciidoctor-pdf \
        $i/main.adoc \
        -o output/$i.pdf
done

