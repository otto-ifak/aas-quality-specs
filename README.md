# Asset Administration Shell - Quality Specifications

In this repository you find the specifications for quality management of AASs.

## Convert from docx to asciidoc

docker run -it -v $PWD:/data  pandoc/minimal --from=docx --to=asciidoc --extract-media=. FrameWorkForTestingV05_220708.docx -o output.adoc

## Convert from asciidoc to pdf

docker run -it -v $PWD:/documents asciidoctor/docker-asciidoctor asciidoctor-pdf main.adoc
