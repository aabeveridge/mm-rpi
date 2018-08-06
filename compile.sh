#!/bin/bash

#home page
pandoc ./files/overview.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output index.html \
--smart \
--title-prefix="Introduction"
# --include-after-body ./files/footer.html \

#comparison page
pandoc ./files/comparison.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output comparison.html \
--smart \
--title-prefix="Comparison"
# --toc \
# --toc-depth=2 \
# --include-after-body ./files/footer.html \

#raspberry pi page
pandoc ./files/raspberry_pi_server.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output raspberry_pi_server.html \
--smart \
--title-prefix="Raspberry Pi Server"
# --include-after-body ./files/footer.html \

#using massmine page
pandoc ./files/using_massmine.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output using_massmine.html \
--smart \
--title-prefix="Using MassMine"
# --include-after-body ./files/footer.html \

#conclusion page
# pandoc ./files/conclusion.md \
# --css ./css/pandoc.css \
# --include-before-body ./files/nav.html \
# --include-after-body ./files/footer.html \
# --output conclusion.html \
# --smart \
# --title-prefix="Conclusion"

#references page
pandoc ./files/references.md \
--css ./css/pandoc.css \
--include-before-body ./files/nav.html \
--output references.html \
--smart \
--title-prefix="References"
# --include-after-body ./files/footer.html \
