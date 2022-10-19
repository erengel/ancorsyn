# ANCORsyn

ANCORsyn is a coreference corpus enriched with (morpho-)syntactic and semantic annotations. ANCORsyn builds on data from the ANCOR_Centre corpus (Muzerelle et al. 2013, 2014), to which manual annotations were added for linguistic analyses of reference-tracking in the context of my thesis project at the University of Cologne.

Note that the name was chosen to reflect that this work would not have been possible without the original corpus being made available freely for research purposes (see <a href="license">license requirements</a>). The authors of ANCOR_Centre are not responsible in any way for the result of the <a href="modifications">adaptations</a>.


## Original resource and adapted annotations <a name="modifications"/>

[ANCOR_Centre](https://www.info.univ-tours.fr/~antoine/parole_publique/ANCOR_Centre/index.html) is a 448k-words corpus of transcriptions of spoken French, annotated for coreference. It also contains named entity annotations and some morphosyntactic annotations on referring expressions (basic part-of-speech, gender, number, definiteness, discourse-givenness).

I selected four files (004_-1.xml, 010_C-1.xml, 013_C-1.xml and 026_C-1.xml) from the subcorpus ESLO, which consists of sociolinguistic interviews.
The files were converted from the original XML format (folder *annotation_integree*) to an XML format readable by the [MMAX2 annotation tool](https://github.com/ottiram/MMAX2) (Müller & Strube 2006).

The following sections describe the adaptation of the original data. See also the annotation guidelines in this repository.


### Segmentation and spoken language phenomena

The original resource contains segmentation at the level of the thematic section (corresponding to one interview question) and at the level of turns. 
Overlaps in speech by more than one speaker were segmented in a separate turn in the original annotation. These overlaps were resegmented such that they do not constitute their own turn, but the overlapping speech is reassigned to the preceding or following turn by the same speaker.


Below the level of the turn, a segmentation layer of Elementary Discourse Units (EDUs) was added, building on proposals by Muller et al. (2012) and Stede et al. (2017).


An annotation layer marking up disfluent sequences of speech (filled pauses, e.g. *euh*, reformulations, truncated words) was added.


### Referentiality and entity features

Non-referential expressions were annotated with the reason for considering them non-referential, distinguishing predicative uses (e.g., *il est <ins>professeur</ins>*), interrogatives, expletive pronouns (e.g., *<ins>il</ins> y a*), idiomatic NPs or parts of light-verb constructions (e.g., *appeler <ins>au téléphone</ins>*), negative indefinites (e.g., *rien*). 

Mentions of discourse-participants (e.g., multiple references by a speaker to herself by uttering *je ... je*) are not considered coreferential in ANCOR_Centre, due to the deictic function of these expressions. I also marked those cases as coreferential to allow for tracking of references to self and to the interlocutor.


In ANCOR_Centre, coreferentiality is represented via coreference pointers to the first mention of an entity. I converted these coreference pointers to a representation in terms of coreference sets, i.e. sets of expressions referring to the same entity. 
After conversion, semantic features of the entity (notably, specificity) were checked for conflicting values within the same coreference set and subsequently corrected.
The annotation of named entities was replaced by an annotation of animacy following Zaenen et al. (2004), which was annotated both for named and for non-named entities.


### (Morpho-)syntax

I added an annotation of grammatical person (1st, 2nd, or 3rd). Gender and number annotations were modified to reflect only the grammatical cues of the expression itself (In ANCOR_Centre, gender and number refer back to a prior mention, i.e. *c'* being annotated as singular feminine when referring back to *une place*).

Pronominal and nominal referring expressions were further subclassified by their morphosyntactic type.

I also added an annotation of syntactic role for referring expressions, distinguishing subjects, direct objects, oblique (indirect or prepositional) objects, VP modifiers, noun modifiers, determiners, non-first conjuncts in coordinations, dislocated elements, clefted elements, and vocatives.


## License

This is an adapted work of four files from the ANCOR_Centre corpus (Muzerelle et al. 2013, 2014), v1.1, subcorpus ESLO. 
The original data is distributed under a Creative Commons Attribution-NonCommercial-ShareAlike ([CC-BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0/)) license. The ANCOR_Centre corpus is freely available from the [ORTOLANG repository](https://hdl.handle.net/11403/ortolang-000903/v1) or from the [corpus website](https://www.info.univ-tours.fr/~antoine/parole_publique/ANCOR_Centre/index.html), where it can be downloaded without restrictions.

You can find the full license text here: https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode

The modified work is distributed under that same license (CC-BY-NC-SA).
If you use it, you must give appropriate credit to the original authors by citing the following papers:

> Judith Muzerelle, Anaïs Lefeuvre, Emmanuel Schang, Jean-Yves Antoine, Aurore Pelletier, Denis Maurel, Iris Eshkol & Jeanne Villaneau. 2014. ANCOR_Centre, a large free spoken French coreference corpus: description of the resource and reliability measures. *Proceedings of the Ninth International Conference on Language Resources and Evaluation (LREC'14)*, 843–847, Reykjavik, Iceland. European Language Resources Association (ELRA).

> Judith Muzerelle, Anaïs Lefeuvre, Jean-Yves Antoine, Emmanuel Schang, Denis Maurel, Jeanne Villaneau & Iris Eshkol. 2013. ANCOR : premier corpus de français parlé d'envergure annoté en coréférence et distribué librement. *Actes TALN'2013*, 555-563, Les Sables d'Olonnes, France. Association pour le Traitement Automatique des Langues (ATALA).


## Further references

> Müller, Christoph & Michael Strube. 2006. Multi-level annotation of linguistic data with MMAX2. In Sabine Braun, Kurt Kohn & Joybrato Mukherjee (eds.): *Corpus technology and language pedagogy: New resources, new tools, new methods*, 197-214. Frankfurt a.M.: Peter Lang.

> Muller, Philippe, Marianne Vergez-Couret, Laurent Prévot, Nicholas Asher, Benamara Farah, Myriam Bras, Anne Le Dracoulec & Laure Vieu. 2012. Manuel d’annotation en relations de discours du projet ANNODIS. *Carnets de Grammaire 21*. Institut de recherche en informatique de Toulouse.

> Stede, Manfred, Maite Taboada & Depodam Das. 2017. Annotation Guidelines for Rhetorical Structure. Unpublished manuscript.

> Zaenen, Annie, Jean Carletta, Gregory Garretson, Joan Bresnan, Andrew Koontz-Garboden, Tatiana Nikitina, M. Catherine O’Connor & Tom Wasow. 2004. Animacy encoding in English: Why and how. In *Proceedings of the 2004 ACL workshop on discourse annotation (DiscAnnotation ’04)*, 118–125. Stroudsburg, PA: Association for Computational Linguistics.

