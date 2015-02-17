# Build

The books are written as [Docbook][1] V5.0 XML documents. This project includes
an Ant build script which you can use to automatically validate the documents and built HTML, PDF
and EPUB output. You will need [Apache Ant][3] to take advantage of the automatic build process.

The build target `build.all` will produce all possible outputs. `build.html.single` will produce a
single page HTML version of each books. `build.epub` will produce an epub for each book. The outputs
of these build targets can be found in the `output` directory.

# Customization

## Building a subset of the books

Edit the `build.properties` file and change the `src.toplevel-books` property to be a comma 
separated list of all the books in the `src` directory that you want to build. For example, building
just the player's handbook would be `player-guide` while building it and the first scenario would be
`player-guide,scenario`. 

OTHER NOTES STILL TODO

# Misc. Technical Notes

This project utilizes the following tools. Their respective licenses are preserved within the `lib`
folder.

 - [Ant-Contrib][4] for additional tasks in the Ant environment
 - [Jing][5] for RELAXNG schema validation
 - [Calabash][7] for XProc and XSLT 2.0 functionality
 - [DocBook XSLT 2.0 Stylesheets with modifications by Robert Winslow Dalpe][8] for HTML output 
 - [DocBook XSL Stylesheets][2] for DocBook transformations into PDF and EPUB output
 - [FOP][6] for transforming XSL-FO into PDFs

[1]: http://www.docbook.org/
[2]: http://docbook.sourceforge.net/
[3]: http://ant.apache.org/
[4]: http://ant-contrib.sourceforge.net/
[5]: https://code.google.com/p/jing-trang/
[6]: http://xmlgraphics.apache.org/fop/
[7]: http://xmlcalabash.com/
[8]: https://github.com/rwdalpe/xslt20-stylesheets 