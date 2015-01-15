# Barbarian Module

This is a module for a variety of tabletop roleplaying game systems. At this time the module 
has specific support for the following systems:

- Pathfinder

However, the world in which the story is set and the general plotline itself can of course be lifted
to fit any fantasy system.

READ AT YOUR OWN RISK FOR SPOILERS!

## Summary

Players embark on a tale of vengeance and mystery in a pseudo-utopian nation with sinister
underpinnings.

## Technical Notes

The books are written as [Docbook][1] V5.0 XML documents. This project includes
an Ant build script which you can use to automatically validate the documents and built HTML, PDF
and EPUB output. You will need [Apache Ant][3] to take advantage of the automatic build process.

For those wishing to build the project manually, the [DocBook XSL Stylesheets][2] are recommended
for those transformations.

This project utilizes the following tools. Their respective licenses are preserved within the `lib`
folder when they are downloaded and extracted.

 - [Ant-Contrib][4] for additional tasks in the Ant environment
 - [Jing][5] for RELAXNG schema validation
 - [DocBook XSL Stylesheets][2] for DocBook transformations into output formats
 - [FOP][6] for transforming XSL-FO into PDFs

[1]: http://www.docbook.org/
[2]: http://docbook.sourceforge.net/
[3]: http://ant.apache.org/
[4]: http://ant-contrib.sourceforge.net/
[5]: https://code.google.com/p/jing-trang/
[6]: http://xmlgraphics.apache.org/fop/