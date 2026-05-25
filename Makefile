OUTDIR = build

LATEXMK = latexmk -xelatex \
	-interaction=nonstopmode \
	-halt-on-error \
	-file-line-error \
	-synctex=1

.PHONY: all report presentation clean watch-report watch-presentation

all: report presentation

# --- REPORT ---
report:
	$(LATEXMK) \
		-outdir=$(OUTDIR)/report \
		report/main.tex

# --- PRESENTATION ---
presentation:
	$(LATEXMK) \
		-outdir=$(OUTDIR)/presentation \
		presentation/main.tex

# --- WATCH (live rebuild) ---
watch-report:
	$(LATEXMK) -pvc \
		-outdir=$(OUTDIR)/report \
		report/main.tex

watch-presentation:
	$(LATEXMK) -pvc \
		-outdir=$(OUTDIR)/presentation \
		presentation/main.tex

# --- CLEAN ---
clean:
	latexmk -C
	rm -rf $(OUTDIR)