# oc-projet2
Intégration d'une maquette Figma en HTML/CSS pour le site « booki »

## Goals/Buts
Une maquette HTML/CSS responsive, affichable de 300 à + de 1400 pixels. 
Utilisant la sémantique HTML au travers des tags :
* `<header>`
* `<article >`
* `<section>`
* `<h1 to h3>`
* `<picture>`
* `<figure>`
* `<figcaption>`
* `<footer>`

## Traitement des images
### Largeur maximale dans le document HTML final (rendu dans un navigateur)
* 718px en version mobile, pour les images des sections « hosting-in » et « activity ».

### Taille des images des dossiers « 4_small »
#### Hébergements :
##### Hosting-in section :

750×500 marcus-loke-WQJvWU_HZFo-unsplash.jpg

684×456 fred-kleber-gTbaxaVLvsg-unsplash.jpg

750×500 reisetopia-B8WIgxA_PFU-unsplash.jpg

500×467 annie-spratt-Eg1qcIitAuA-unsplash.jpg

652×367 nicate-lee-kT-ZyaiwBe0-unsplash.jpg

486×729 febrian-zakaria-M6S1WvfW68A-unsplash.jpg

##### Most-popular section:
504×378 aw-creative-VGs8z60yT2c-unsplash.jpg

532×355 emile-guillemot-Bj_rcSC5XfE-unsplash.jpg

500×750 febrian-zakaria-sjvU0THccQA-unsplash.jpg

#### Activity :

589×383 florian-wehde-xW9e8gdotxI-unsplash.jpg

606×402 kilyan-sockalingum-NR8-cBCN3aI-unsplash.jpg

356×534 paul-hermann-QFTrLdQIRhI-unsplash.jpg

702×468 reno-laithienne-QUgJhdY5Fyk-unsplash.jpg

### Taille des images des dossiers « 3_medium »
#### Hébergements :
##### Hosting-in section :

1000×934 annie-spratt-Eg1qcIitAuA-unsplash.jpg

972×1458 febrian-zakaria-M6S1WvfW68A-unsplash.jpg

1368×912 fred-kleber-gTbaxaVLvsg-unsplash.jpg

1499×1000 marcus-loke-WQJvWU_HZFo-unsplash.jpg

1303×733 nicate-lee-kT-ZyaiwBe0-unsplash.jpg

1500×1000 reisetopia-B8WIgxA_PFU-unsplash.jpg
#### Most-popular section:
1008×756 aw-creative-VGs8z60yT2c-unsplash.jpg

1063×709 emile-guillemot-Bj_rcSC5XfE-unsplash.jpg

1000×1500 febrian-zakaria-sjvU0THccQA-unsplash.jpg

### Activity :
1178×766 florian-wehde-xW9e8gdotxI-unsplash.jpg

1212×803 kilyan-sockalingum-NR8-cBCN3aI-unsplash.jpg

711×1068 paul-hermann-QFTrLdQIRhI-unsplash.jpg

1404×936 reno-laithienne-QUgJhdY5Fyk-unsplash.jpg

## Conclusion
Les images issues des répertoires « 4_small » ne suffisent pas à couvrir nativement la largeur qu'elles ont dans le rendu navigateur. En conséquence, j'ai utilisé les images des répertoires « 3_medium » pour les sections « hosting-in » et « activity » dans la version mobile (viewport ≤ 768px). Le choix s'effectue dans `index.html` en utilisant l'attribut `srcset` de la balise `<source>` incluse dans la balise `<picture>`.


## Progression
### Done:
* HTML document
* Fonts and icons
* Text
* Anchors
* Images sizes in HTML
* Sizing all boxes
* Spacing all boxes
* Responsive design

### Todo:
* Check for unused CSS
* Review and clean code

### Docs specifically used
* html responsive images https://developer.mozilla.org/fr/docs/Learn/HTML/Multimedia_and_embedding/Responsive_images
* https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link
* https://www.w3schools.com/tags/tag_source.asp
* https://www.w3schools.com/TAGS/tag_picture.asp
* https://www.w3schools.com/tags/tag_figure.asp
* https://developer.mozilla.org/fr/docs/Web/HTML/Element/figure

### From Specs
#### Sizing
* margin, padding : px
* width : %
* height : px
* fonts : px

* The size of images are set in index.html as recommended by W3C as in: https://www.w3schools.com/tags/att_img_width.asp
* Margin and padding are sized in pixels for having the same size on different devices.
* Fonts are sized in pixels rather than in em/rem for being the closest possible to the PNG model.
* Width are sized in % for being coherently responsive at any viewport width.

