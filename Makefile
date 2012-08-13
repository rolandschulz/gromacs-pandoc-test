all: g_rms.tex g_rms.html g_rms.man

g_rms.tex:
	pandoc g_rms.md -t latex --template default.latex links_tex.md -o g_rms.tex && pdflatex g_rms.tex

g_rms.html:
	pandoc g_rms.md -t html --template default.html links_html.md -o g_rms.html

g_rms.man:
	pandoc g_rms.md -t man --template default.man -o g_rms.man
