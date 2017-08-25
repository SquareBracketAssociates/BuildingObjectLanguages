MAIN = book
CHAPTERS = \
	Chapters/Proto/Proto \
	Chapters/Proto/ProtoTheory \
	Chapters/ObjV/ObjV \
	Chapters/ObjVTheory/ObjVTheory \
	Chapters/Actalk/Actalk \

OUTPUTDIRECTORY := $(shell ./pillar introspect outputDirectory)
LATEXTEMPLATE := $(shell ./pillar introspect latexTemplate)
LATEXCHAPTERTEMPLATE := $(shell ./pillar introspect latexChapterTemplate)
HTMLTEMPLATE := $(shell ./pillar introspect htmlTemplate)
HTMLCHAPTERTEMPLATE := $(shell ./pillar introspect htmlChapterTemplate)

.DEFAULT_GOAL = help
.phony: all book chapters

all: pdf html ## Build everything in all formats
book: pdfbook htmlbook ## Full book only, all formats
chapters: pdfchapters htmlchapters ## Separate chapters, all formats

include support/makefiles/help.mk
include support/makefiles/prepare.mk

include support/makefiles/pdf.mk
include support/makefiles/html.mk
include support/makefiles/epub.mk
