## Customize Makefile settings for pbpko
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile


$(COMPONENTSDIR)/vocab.owl: $(TEMPLATEDIR)/vocab_updated.tsv

	if [ $(COMP) = true ] ; then $(ROBOT) template \
		--merge-after --input $(SRC) --add-prefixes config/context.json \
		--template $< --output $@; fi