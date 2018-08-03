#!/bin/bash

#home page
pandoc ./files/introduction.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output index.html \
--smart \
--title-prefix="Introduction"

#comparison page
pandoc ./files/comparison.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output comparison.html \
--smart \
--title-prefix="Comparison"

#raspberry pi page
pandoc ./files/raspberry_pi_server.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output raspberry_pi_server.html \
--smart \
--title-prefix="Raspberry Pi Server"

#using massmine page
pandoc ./files/using_massmine.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output using_massmine.html \
--smart \
--title-prefix="Using MassMine"

#conclusion page
pandoc ./files/conclusion.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output conclusion.html \
--smart \
--title-prefix="Conclusion"

#references page
pandoc ./files/references.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output references.html \
--smart \
--title-prefix="References"
