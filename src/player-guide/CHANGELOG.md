## 2015-05-02 18:01 PDT

### Updating EPUB styling to match the changes made previously

[a4e80a9198edf6c5c749b1f5a95bcd78160c1cce](https://github.com/rwdalpe/two-graves/commit/a4e80a9198edf6c5c749b1f5a95bcd78160c1cce)

Winslow Dalpe <rwdalpe@gmail.com>

2015-05-02T17:44:27-07:00


### Tweaking print styling as well to match style from last commit

[33560975aa5b04f11afdb5def501d4d27a6eba92](https://github.com/rwdalpe/two-graves/commit/33560975aa5b04f11afdb5def501d4d27a6eba92)

Winslow Dalpe <rwdalpe@gmail.com>

2015-05-02T10:40:29-07:00


### Tweaking HTML style quite a bit

[c1c5c1cbccaec73cb119be44dbb603fabefa3ba0](https://github.com/rwdalpe/two-graves/commit/c1c5c1cbccaec73cb119be44dbb603fabefa3ba0)

Winslow Dalpe <rwdalpe@gmail.com>

2015-05-02T10:19:32-07:00

Spending some time experimenting with the HTML style. I think I
like this better. Things that were changed:

- Table of Contents and headers now use Open Sans Condensed font
- Body copy now uses serif fonts
- body copy line height increased
- Color palette changed slightly
- Sidebar notes are no longer gray boxes. Instead are slightly
more integrated with the rest of the page's style

### Adding Regunt law and business university PoI to the PG

[37e2e48f9f0e3c709c35698473e1f3f2db74373e](https://github.com/rwdalpe/two-graves/commit/37e2e48f9f0e3c709c35698473e1f3f2db74373e)

Winslow Dalpe <rwdalpe@gmail.com>

2015-05-01T21:06:28-07:00


### Naming the Stewards of the Knight Library in Regunt

[4ef11458558a8626c6dcfa6a2129df7b2a9291c3](https://github.com/rwdalpe/two-graves/commit/4ef11458558a8626c6dcfa6a2129df7b2a9291c3)

Winslow Dalpe <rwdalpe@gmail.com>

2015-04-30T22:37:47-07:00


### Adding Knight Library PoI description to regunt PG

[ffc85982d63198e27b8beaad768d6f460968b07a](https://github.com/rwdalpe/two-graves/commit/ffc85982d63198e27b8beaad768d6f460968b07a)

Winslow Dalpe <rwdalpe@gmail.com>

2015-04-24T22:46:46-07:00

I'm not particularly happy with this one, but I want to get
something down. I'll come back to it later.

### Adding Mercantile Guildhall PoI description for Regunt in the PG

[5a327ab97e0d89647094324f42e8c2feae0a7443](https://github.com/rwdalpe/two-graves/commit/5a327ab97e0d89647094324f42e8c2feae0a7443)

Winslow Dalpe <rwdalpe@gmail.com>

2015-04-23T21:22:46-07:00


### Adding Praesidium PoI description to regunt section of PG

[054483ac755f3723c979d7a89c17ee1b4092c93f](https://github.com/rwdalpe/two-graves/commit/054483ac755f3723c979d7a89c17ee1b4092c93f)

Winslow Dalpe <rwdalpe@gmail.com>

2015-04-22T23:52:19-07:00


### Adding Imperial Residence PoI description in the players guide

[3e830c0d7f1f878fc0f34c4c248823fa819e5405](https://github.com/rwdalpe/two-graves/commit/3e830c0d7f1f878fc0f34c4c248823fa819e5405)

Winslow Dalpe <rwdalpe@gmail.com>

2015-04-21T21:09:45-07:00


### Adding Regunt Abadar temple PoI text to player's guide

[dfb4ecd21cc85b84c1e95ce9cb7a030cf1367923](https://github.com/rwdalpe/two-graves/commit/dfb4ecd21cc85b84c1e95ce9cb7a030cf1367923)

Winslow Dalpe <rwdalpe@gmail.com>

2015-04-19T23:14:04-07:00


### Adding Regunt Capitol Building PoI text to player's guide

[0de3a42f2df5b4777b97bb13b630eeb328a6a173](https://github.com/rwdalpe/two-graves/commit/0de3a42f2df5b4777b97bb13b630eeb328a6a173)

Winslow Dalpe <rwdalpe@gmail.com>

2015-04-19T18:59:50-07:00


### Starting body content of PG Regunt PoI

[9c94d2775f11a7a568a43407c12eb2a7bdaee1a4](https://github.com/rwdalpe/two-graves/commit/9c94d2775f11a7a568a43407c12eb2a7bdaee1a4)

Winslow Dalpe <rwdalpe@gmail.com>

2015-04-19T15:25:49-07:00

Adding body content for Grand Threshold PoI. Added Regunt district
rough names. Those names will change soon.

### Finalizing titles of Regunt's non-district places of interest

[e25da8173f2230dc300173d20b5d565153d60985](https://github.com/rwdalpe/two-graves/commit/e25da8173f2230dc300173d20b5d565153d60985)

Winslow Dalpe <rwdalpe@gmail.com>

2015-04-18T13:23:48-07:00

No content yet for the places of interest, but their titles are
in place now. Still missing the districts.

### Splitting out XML entities into separate files.

[47341da819c016848a2c9c23877c1a608e98e883](https://github.com/rwdalpe/two-graves/commit/47341da819c016848a2c9c23877c1a608e98e883)

Winslow Dalpe <rwdalpe@gmail.com>

2015-04-18T11:53:53-07:00

Eventually, I would probably like to take the `common/entities`
folder and move it to a separate repository so that any future
scenarios can all reference the same set of entities. At that
time, it will be necessary to have some sort of structure
implicitly defined on those entities.

This is my first attempt at this. The entities are broken down
by major geo-political region. Those are further broken down into
the elements that constitute that region.

### Restyling dl element for epub output

[63e24372729228b8d1ca128ee2434ecea837535f](https://github.com/rwdalpe/two-graves/commit/63e24372729228b8d1ca128ee2434ecea837535f)

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-27T19:09:58-07:00

The floating dt elements weren't looking great in several ereading
programs, so I'm simplifying them a bit so that they won't look so
strange, even if they don't look as nice in the best case.

### Finally simplifying the print stylesheets some.

[b6ae8fd7e56fac18736d077fd872cd1d173695b7](https://github.com/rwdalpe/two-graves/commit/b6ae8fd7e56fac18736d077fd872cd1d173695b7)

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-27T00:30:58-07:00

Looking back of course the styles that were there were terribly
bad code, but now they're more straightforward. Should be nearly
identical visually.

### Adding some custom CSS styling to EPUB output

[3c05ba139eea0e4fe90e39088e57525536d57416](https://github.com/rwdalpe/two-graves/commit/3c05ba139eea0e4fe90e39088e57525536d57416)

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-26T23:14:00-07:00

Bringing over something similar to the HTML print CSS stylesheet
for EPUB styling. That way, if the user device doesn't override it,
we'll get something kind of the like the PDF but without columns
or pictures.

The styles are slightly different because the EPUB HTML comes from
the docbook-xsl-ns stylesheets rather than the xslt20 stylesheets.

### Publishing Players Guide CHANGELOG for latest version

[8a4d03ed969c05a030c00f0cb97624296238d8f4](https://github.com/rwdalpe/two-graves/commit/8a4d03ed969c05a030c00f0cb97624296238d8f4)

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-24T23:12:59-07:00

## 2015-03-24 23:10 PDT

### Adding more missing places of interest section for crent in the PG

[763c3620fb6c904b915bd6fafc27a5f306383477](https://github.com/rwdalpe/two-graves/commit/763c3620fb6c904b915bd6fafc27a5f306383477)

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-24T23:01:54-07:00

Adding Lakeside Harbor, Limen River Customs, and all Crent's city
districts as Places of Interest with details to the player's guide.

### Fixing styling bug when JS is disabled: unnecessary margins

[c80ff7b29bb0a2181f14139c5a07bf967afd67e9](https://github.com/rwdalpe/two-graves/commit/c80ff7b29bb0a2181f14139c5a07bf967afd67e9)

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-24T00:11:56-07:00


### Adding more places of interest to Crent in the player's guide

[3993f7936a5c246b3b66163486f6d7d5fbc9a82e](https://github.com/rwdalpe/two-graves/commit/3993f7936a5c246b3b66163486f6d7d5fbc9a82e)

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-23T21:32:24-07:00

Adding details for the Grand Bazaar, the House of Commerce,
Nascerili, and Khurulag.

### Fixing a minor typo with no meaningful impact

[aed12830891a50cc95a4a3764032068dd0e1a8a8](https://github.com/rwdalpe/two-graves/commit/aed12830891a50cc95a4a3764032068dd0e1a8a8)

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-22T20:19:17-07:00


### Publishing CHANGELOGs for latest version

[d038fb32979a1e066acbd9d13bf10b544553e532](https://github.com/rwdalpe/two-graves/commit/d038fb32979a1e066acbd9d13bf10b544553e532)

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-21T03:18:16-07:00

## 2015-03-21 03:15 PDT

### Removing extraneous 1 character from printhistory

3181a0927eaccd734e930e810bf74bab04428aeb

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-21T03:14:58-07:00


### Switching all books over to printhistory and pubdate elements

7708bbb85bfa46c7106788d6d7103cc4b706b82f

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-21T03:11:15-07:00

Now with pubdate support and the ability to display printhistory
in a book's titlepage, we should utilize that. Unfortunately, to
get a link to each book's respective CHANGELOG.md file, that means
we need a printhistory.xml per-book because the entities used for
the URL couldn't be overridden during XInclude as the document
needs to be parsed first (including entities).

Maybe there's a clever way around that, but I'm not sure of it.

Also restyling print output so that we get all the "bottom-matter"
together at the bottom of the printed titlepage.

### Changing the timestamp format for the pubdate element

caa124ac4b1890b8546d9e2e5d94e47849fd8541

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-21T03:09:31-07:00

To be consistent with the timestamp format that the XSLT 2
customizations will produce, change it for the XSLT 1 stylesheets
as well.

### Renaming release.xml to pubdate.xml

689b4e12bc69c98180ab8509e6dae81dbf402395

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-20T23:04:26-07:00


### Fixing some grammar/wording errors in PG Ch1

ccbb1b174873b5c0a421ccb14d91eefa7522572f

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-19T00:20:59-07:00


### Emergency filling in of some missing details

eac4dcaef26e3a1756fff5e5fd2428cb0dbf7f65

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-18T10:09:19-07:00


### Learning the joys of having to reflow images for PDF output

c6c19bd6a6e2087258bce4ed069884e992108a0d

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-18T00:25:50-07:00

So print output is SO finicky when it comes to images. For now,
I'm choosing to just manually move images in order to reflow print
output that comes from my machine using PrinceXML. Maybe there's a
better way to do it in the future.

My condolences to professional layout editors everywhere.

### Adding image data to the city sections of the PG

7ff61d6512c98c6cf32ac5adbd022c110f6b5f0d

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-17T23:40:53-07:00


### Updating legalese to exclude artwork from OGL open content

3111ced495fa58d606eaab10e0e1ce038a293547

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-17T22:18:31-07:00


### Temporary details and styling in the player's guide

17dfde03b34cb3cd575353075ac1f8dbafe6caed

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-17T22:03:10-07:00

Just filling in some placeholders for places of interest in the
player's guide. Also doing some temporary styling to make the PDFs
not look weird when generated from the HTML until the places of
interest actually have content in them.

### Adding intro paragraph for Regun to player's guide

a43e50b8899963ad6dd292e7fa5fba25dd858f52

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-17T21:42:45-07:00

Adding the "life in the city" section to Regunt in the player's
guide.

### Minor sentence cleanup in players guide crent section

07a91818c46a78843d98b8de390fc42a3221a935

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-16T23:14:35-07:00


### Removing unnecessary note paras from players guide

aaa840939ee4506b730e41f0f26a75f6dab4b1f4

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-16T23:10:40-07:00


### Adding more details to Crent summary in player's guide

23f0365af6d2e116ab1f7e3e0917111841a925e7

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-16T23:09:20-07:00

Adding paragraphs about power structures and general appearance
for Crent in the player's guide.

Added an entity for Labor department.

### Working on Crent summary paragraphs in players guide

88cbe26388fd9789f3c953f89a3146f106777488

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-16T22:33:42-07:00

Starting with a mood of the city paragraph for Crent in the
player's guide.

### Adding shrine myster sidebar to players guide

c31efa9a31859c03bc0c513d89b29c73519d570e

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-16T21:29:44-07:00

Adding a short sidebar for a brief description of the relic shrines
to the players guide.

### Adding more proper names

b1aee5edd238ef5103acc9080fa646ec192062e6

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-13T22:18:24-07:00

Naming oblectant's bridge, the main river that flows through the
cities, the portals, lake, and the crusader's organization.

### Renaming second chapter of players guide

97a0ede1f35a9fd7ad2940bdea37495d4c6bfd51

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-13T21:42:24-07:00


### Adding oblectant "slums" and masters district PoI for the PG

1dab97c94d2b200bc982e3c2a3f38d2ee4c96353

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-13T21:32:52-07:00

Adding district description for the Barrelbottom and Masters
Districts for Oblectant in the Player's Guide.

### Making license appendices not literal preformatted sections

8ae6f8d80098ad62929768bad375aa307a74707c

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-13T01:12:41-07:00

Using paragraph form for the licenses instead of literallayout form
and updating print styling appropriately.

### Trying a more widescreen by default HTML style

28d3971e7975c61cf5883c1837404175ea53e093

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-13T00:41:35-07:00

For the length of the book, reading it in single column in HTML
format could be difficult. To provide more horizontal real estate,
flow to the user's dimensions.

### Removing graphics references for the time being

763a67b435ae1e50d7bfcede857d21d0fd1c9a7b

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-13T00:19:27-07:00


### Moving shared_entites.xml to global.ent file

9b449e183f1994a8a7520542eb16c26916b92683

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-13T00:12:15-07:00

Going to try and separate out the shared entities better.

### Updating source link from bitbucket to github

dcb589003cae0c8fc81c8407c88a9d39e9cb7057

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-12T23:33:05-07:00


### Forgot to remove scratch notes from garden district PoI

42ecd9a9b5660b9027663ba2ad8c901bcd21a777

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-11T21:51:38-07:00


### Adding oblectant garden district PoI to the players guide

c0700f80a0fcc9d34c7a3d1cb88066b471107552

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-11T21:48:56-07:00


### Working more on Oblectant districts in PG

bfc7c92a008c83fd6e65c4d9e0afa78af7b4cbb8

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-11T21:18:56-07:00

Adding Oblectant's college district and plaza district information
to the player's guide.

### Merge remote-tracking branch 'origin/master'

51b6ea9a458016e6f2aaa9cda79ecb577166701a

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-11T19:34:32-07:00

Merging changes made from my other computer. Nothing major.

### Graphic inclusion changes

715a84b00851f4b48b8c5d1f202c42f838679c10

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-11T19:30:13-07:00

Made some changes to the XSLT stylesheets that adjust how graphics
are included in the output. Those changes aren't totally done yet,
but this takes advantage of them.

### Adding oblectant city district PoI to PG

6f31fef32a4c9778fcb81ab93eb8ed3b3170362a

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-10T22:20:27-07:00


### Starting work on the Oblectant government district PoI for the PG

8d0257b8683c943af73e11484d4f6582e7c49c51

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-10T21:19:22-07:00

Starting details on the government district. Still needs a tiny bit
more information.

### Adding CC temple point of interest to PG, modifying bridge PoI

9453e074d921248a5425525ae9f519d63b22662e

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-08T22:54:10-07:00

Redoing some of the wording in the oblectant bridge PoI, and adding
details for the Cayden Cailean temple in Oblectant to the PG.

### Adding oblectant bridge point of interest section to the PG

c4db783367fedf16a679e97f7cae92be07f28f3e

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-08T22:35:26-07:00


### Adding oblectant stadium place of interest section for the PG

07748d5450e3115cd386901b9c2429662ca79c9a

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-08T22:23:18-07:00

Adding details for the Lavender Fields as a place of interest.

Noted that &university; was really an unneeded duplicate of
&arts_college;. Replacing it.

### Trying out some image data. Still some problems.

f2ddbfc77b0b019afaea1389f15c12a7b5c7c810

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-08T21:21:11-07:00

Trying including SVG images with the content. There are some issues
with the stylesheets and getting the relative URLs correct. Will
address those later, so for now I'm not checking in the actual
images themselves.

### Adjusting print styling now that sections heads correct

f90930b6ad117ba4249dc0206dc3414bf60a38da

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-07T23:00:38-08:00

Now that the stylesheets give the correct heading nesting level,
fix the print styling for PDF bookmarks.

### Adding placeholder paragraph to CC temple PG section

470c3bc7cc07d88b7490fe3ef8e8a5b93e95cd83

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-07T23:00:18-08:00


### Adding places of interest section for university to PG

15189bb2ff709d2424b0c08e5c5dab5df9986638

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-07T22:42:42-08:00


### Adding places of interest entry for Coatl's Voice in PG

4fd90b66ec2a653ecffa23192f42c488f90ff301

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-07T22:13:49-08:00


### Enforcing 72 character textual line limit on some files

3f0fa547cb58410b24ea7806c899a01dd39ef5cc

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-04T00:24:02-08:00

Will eventually be instituting a policy of text having a max char
limit of 72. Following my own advice where possible right now.
Need to work out a good automated way of doing this for XML.

### Updating document to reflect new usage of the OGL

01a5bce6a3e059e8b71cc38b49e6ba5c06bbc799

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-03T23:55:22-08:00

Licensing is hard! To properly use the Paizo Community Use policy
the document must be made available under the OGL.

### Adding OGL License

20e68f708ef04bef1aa3ff68707299138066569b

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-03T23:51:47-08:00

To correctly use the Paizo Community Use policy, the document must
be made available under the OGL, not a Creative Commons license.

### Separating chapter 1 content into files

4e9029615feff494aa12161aad878eb4cfb538bb

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-03T22:58:01-08:00

Separating the content of chapter 1 into files like chapter 2 has.

### fixing some whitespace

137a6a6c29d74420273a3e7c83c2d70ef7020f73

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-03T22:50:32-08:00


### Reintroducing a cleric section to the PG

262f79f598e56aa62dacade0d948981c66a99cf3

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-03T22:50:02-08:00

Not totally happy with it at this point, but I think it covers the
major pieces.

### Trying some page border styling

31f770d8394b075a0be1d43ac9a4351c8489e974

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-02T22:57:19-08:00

Trying out some blue borders on the far sides of the pages. May
not keep; we'll see.

### miscalculated one, whoops!

b6651b89a8c477d2fd2b20aa462b0ffcbc965491

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-01T21:30:46-08:00


### CSS header offset to make the fixed navbar links be nicer

bb9e8a2925b98970c422b44129ad90604c8fad6c

Winslow Dalpe <rwdalpe@gmail.com>

2015-03-01T21:25:46-08:00

Formula for calculating is as follows:

padding-top = (ratio of font:header ems)*(height of navbar ems)+1ems
margin-top = -1*((ratio of font:header ems)+1ems)

header ems are in commonhtmlstyle.css, base font ems is 1.

### Print column styling

d419101d31e90148e48e01ab9024188cc21543ec

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-28T18:37:38-08:00

Changing column fill for print media to fill columns sequentially
rather than in a balanced fashion. Downsized legal appendix fonts
and columnized them.

### Better integrating slicknav with more ugly hacks

c536a17ec9e248366f283a7a4176a5555a87c06b

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-28T18:22:41-08:00

We want the menu to expand fully and not close-on-click when the
screen size is larger than a certain amount. Have to make some
additional hacks to slicknav to make this happen. Should maybe
just do major work on slicknav at some point in the future. For
now, this will be good enough. We just need a menu, not good
javascript.

### More HTML and print styling work

431dae888ed66f11204d1e55f296fb4fd82971b1

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-28T12:18:42-08:00

Taking advantage of the changes I just made to the stylesheet
heading generation to do some additional styling to the HTML
output.

### Working on print styling to handle definition lists

6d22248af02a205761c4c2c17a1c132a4233b3a4

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-27T21:31:15-08:00

Adding more styles to handle definition lists. Really need to clean
up the CSS soon...

### Starting on places of interest oblectant PG

7b59860343f2ad0671584cfecf690385f67d8aa7

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-27T21:12:52-08:00

adding details for Dragon's Teeth amphitheater

### More work on the PG Oblectant section

1f8857e9ae6cc8b4cd41bddb9e2882a536fb41b1

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-27T20:31:24-08:00

Adding a brief paragraph about the physical appearance of the city.

### Working on Oblectant intro section

21f7867577a16caa847386e90d43d8063c1aeafb

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-27T20:10:05-08:00

Removing the "Life in the City" section heading and rolling its
content into the toplevel section element. Adding some additional
content.

### Working more on print styles

ba040de1e8309b8499d6c82e58f4e470b2265106

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-26T23:09:04-08:00

Adding more print styling to make PDF output pretty.

### Working on oblectant PG section

bc8f920dc4e30cafa23b19d9901bf0907d4aa8bd

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-26T21:41:44-08:00

Government section seems like it will be too short to be worth
calling out separately. Probably going to roll it into the Life
in the City section.

### Starting work on Oblectant central cities section

dad08ffca8616651e63d7920d354dd8fe8531adc

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-25T21:42:33-08:00

Started working on the government section of oblectant's player's
guide description

### Replacing the intro to the cities titles with the proper xml entities

dd5867398f2315c839ca094b635a27182d2aa635

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-25T21:05:45-08:00

Starting the intro to the central cities section and the common resources
sidebar

### more print styling work

21b4f210590cbd81121c8b7e3a4abe626069761b

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-22T23:46:07-08:00


### working on html print styles. the css stylesheets are a bit of a mess without the need for separate chunking styles. will clean those up later

5e0c95ad32abe734b6897066506e5074a8e15f63

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-22T20:37:20-08:00


### missing tag

93bb4ef68957c44379366d6c5d02fcebc34fd4d8

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-21T19:12:22-08:00


### should probably name-drop the emperor

71109882379e7d98e943d3e6fa539facca34029a

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-21T19:11:44-08:00


### rough draft of the government section

8d773cb68042b9cddcb120700cf2975248db8335

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-21T19:05:34-08:00


### ugly hack in slicknav to account for the fact that the stylesheets add some elements to the TOC. will need to adjust better later

3549e39b17b0d953744f9cfc2bce0456b6228c5f

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-17T23:00:35-08:00


### starting government section. wording is boring, but the first content is there

c7241a751e46a1905cf540b997534f4c743f1b11

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-17T21:58:09-08:00


### moving cleric section to general religion section, because it fits better there

7529d4e5c876a47d8aeb4ad8a88b35f68b3a974a

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-17T21:07:27-08:00


### updating styles and removing part differentiations

cd3374c6661fe27fc3888b4142e3bda2f42382d0

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-16T22:53:04-08:00


### last few minor alterations for tonight

790c52182e36d70797b9a85ee0416b8cb88ce93f

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-16T22:21:13-08:00


### having a rough time tonight with wording. this feels much better

e13faef4239f8c6f169a10493c9e6a1cf2a2fa4b

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-16T22:06:51-08:00


### working on modern life section

c9a05225e42b7a310aabb111b2faaa93ac6b7579

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-16T18:21:09-08:00


### updating scenario name and README/INSTALL documentation

84a6c5223ffcef0df716d32620d8327c70d76913

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-16T16:42:30-08:00


### prepping for just pulling in precompiled release of calabash into libs

6acc4792a3c49ba27b589957dae613021463dd93

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-16T14:46:20-08:00


### adjusting styles a bit

d1538e93c3444397dc3d5f2ca8f1369dabe8c03f

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-16T13:28:32-08:00


### better menu styling and graceful fallback for nojs

df25f0a4b4695f7aa2504be1e2d4b62ba9830bf0

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-16T11:22:59-08:00


### working on an effective navbar. still broken because no libs checked in

b5e412d93ce5e8fee53d954dac01a936a65b4a02

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-16T01:55:20-08:00


### adding more fluff notes

40e17b482dee82e53e45609054ce6854e0a73580

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-13T21:59:16-08:00


### restylizing traits as lists

e85939020159fd802f9d32925b5cbcacc7456791

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-12T21:54:34-08:00


### character traits rough draft

4ead9994857ced98f33c4236039fdfb684d759a0

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-12T21:38:34-08:00


### adding missing proper names

90f6ce647345e5237e6b1866d31d0427b093fc41

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-11T22:48:47-08:00


### adding sorcerer and wizard rough draft

0052c0a9cb30ae83bf10100dab5dd8641559703c

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-11T21:47:19-08:00


### adding rogue rough draft

1f2cefd40d85aa4c689b8192a263b671a592a983

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-09T21:57:48-08:00


### ranger rough draft

c5cda30b2c38628d9c612a749bb9d809fb406612

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-09T21:20:29-08:00


### prepping for ranger work

e4e15832b8a4104700921064fa27142c41998520

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-08T21:20:48-08:00


### adding paladin rough draft

9bac636b4ffedb57945edb13038590cd37dcd847

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-07T23:08:07-08:00


### adding monks and fighters rough draft

5c39f981429dcf0ea0ecd4183576ef24ec5a1c3f

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-07T22:27:44-08:00


### adding druid rough draft

5890cdd31e6223493f94edb9b6e7c2199b970913

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-07T00:14:17-08:00


### cleric rough draft

a86699a7cf8f04f898873488b62b453c59899290

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-06T23:18:45-08:00


### adding bard first draft

ddcfefcb6134020cc21018f631a78d8c62598b81

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-04T22:29:05-08:00


### working on some more html styling stuff. maybe time to get fancy with js?

e6d71f5b6a9f2e206a48850cd84b418068809f69

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-03T19:02:23-08:00


### adding a glossary for future use

8ed8a71b3ba23b5b696fec426bd65a1bc1dc2ae6

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-02T19:06:27-08:00


### some barbarian revisions

3a08d11c33af39744d7fbfa107f2ee58dfd3ccc4

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-01T21:05:01-08:00


### adding more barbarian details

7fa457ba808d6beb65e0aa6b7f91a437db2f55e8

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-01T21:01:22-08:00


### more html styling

15830bab18fbc2856081f5b40aac474ab99e9923

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-01T12:22:37-08:00


### fixing up the mobile viewport

a188a28af47d44e6417c0b0c1c346b1c47c728f7

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-01T11:28:53-08:00


### simplifying the css some

e2d2fd638a12368a933e40dbba271e73f8c31ed7

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-01T10:57:06-08:00


### more single page html styling

e9ee754b37963ff3d5e536ecee8e774e70c373be

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-01T10:46:16-08:00


### adding some additional html styling customizations

cfa9aee129ce0fe1114a434d618fe12014369c9f

Winslow Dalpe <rwdalpe@gmail.com>

2015-02-01T00:44:14-08:00


### fixing up the super rough class text. adding more todo details notes for classes

2bcbfc5dd524accf9d335ccb0f13e2f91b7fec47

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-20T21:03:33-08:00


### working on some html styling just a bit

00d3a995f643d2c5720df942ce428b143a88b6cf

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-19T14:01:05-08:00


### switching player information part with national information part

111957625f7d54e0771a6bfa66c0ef359e171c0a

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-18T22:37:52-08:00


### adding more proper names. finalizing the first draft of the racial details. needs to be spiced up and improved still

94194cd353f9508a4aa1d455f73e7a58248410e6

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-18T22:09:07-08:00


### separating common styles into a commonstyles stylesheet, moving css files to their own directory, updating build accordingly

f5756d848214ea34ad1fd9dd1a3d308bc8bbe9e3

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-18T11:53:17-08:00


### working on some customizations for fo output, added a title to the races callout

27c110a7b008e68dbc408858d79e5934fb4cabfd

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-18T11:34:55-08:00


### adding some more style changes

ab460db28cad6bcdd3527899dc0ab3f0c542af41

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-17T21:10:33-08:00


### adding first round of real wording for elves and gnomes

f1114668bee14c8cd9a1b8f42bb4e1df4df604ab

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-17T19:22:30-08:00


### working on some minor styling

fcbc443a20f239621865103e05f099cf6971fc3d

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-17T19:13:57-08:00


### adding first round of real language for dwarves

12200ada18a7c695764b77841a79e9da24951ab9

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-17T19:02:47-08:00


### modifying some html styles and adding real verbiage for the humans section

eb5bfbc546f31fa1c4c21239a5faf8d8b48ee853

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-17T18:45:24-08:00


### adding the ability to use stylesheets in html output. just single html for now

9d1393d1edf608fe6c9b8e72fc464a3f3aa5a586

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-17T15:40:41-08:00


### reorganizing the players guide parts a bit

1cfaf07abb944f0085712d85b89aa8c02e64466b

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-14T23:15:48-08:00


### working more on geography and nation fluff for players guide

3836b92fdde1fdf4028e8b5bfe1894b413132ad8

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-11T21:07:45-08:00


### adding class scratch notes into the players guide

baff2b6577a291b14c03ca5bbb88f01695654a4b

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-04T18:39:05-08:00


### putting some of the scratch players guide notes into a real document for some layout testing

b40b5599b2b2bf86eebd653a8019cd4522af340f

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-04T17:06:33-08:00


### adjusting some legal information and moving author information to a new file along with release date information

116a52b7958b46fe8c5755bd6d2c77b93cbbed5e

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-04T14:23:10-08:00


### moving legal information to a common file

7371b0a5420956773cabeebd0a904388164dff2f

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-04T10:53:27-08:00


### restructuring build script to allow for multiple main book documents to be built at the same time

a81771d577f887640901dbe0dfd7f772f32e41e2

Winslow Dalpe <rwdalpe@gmail.com>

2015-01-03T21:18:53-08:00

