<img src="/week-8/imgs/Screenshot 2016-01-26 13.38.36.png">
<img src="/week-8/imgs/Screenshot 2016-01-26 13.46.10.png">

=begin
REFLECTION
What is a one-to-one database?
One-to-one databases are used to organize pieces of data that share either exactly one or no relationships to each other.  In this case, the attribute value for one object must be either one specific value or the value null.  One example given in the text is of capital cities before the late 18th century/early 19th century.  Every country could have only one capital city, and some countries did not yet have a capital city.

When would you use a one-to-one database? (Think generally, not in terms of the example you created).
One-to-one relationships are pretty rare, according to the text, but could be used any time one object instance will point to either one or no instances of another object.

What is a many-to-many database?
A many-to-many database connects tables that point to each other, each with their own foreign ids, often stored in a third join table.  They are used any time an object in a first table could point to more than one in a second while at the same time one object in the second could point to more than one in the first.  Some examples: artists can paint more than painting but also one painting could be a collaboration; authors can write multiple books but books can be written by a duo or team of authors; architects can design more than one building but a building can have more than one architect, etc.

When would you use a many-to-many database? (Think generally, not in terms of the example you created).
Any time an object in a first table could point to more than one in a second while at the same time one object in the second could point to more than one in the first.

What is confusing about database schemas? What makes sense?
I think it's kind of confusing that the schema designer lists column names vertically when in the actual table they would be listed horizontally with attribute values underneath listed vertically.  I know this makes sense for creating a lot of schema at once, especially as they grow complex. but it does add an additional layer of conceptual confusion in actually imagining the tables the schema outline.  Generally, it's also confusing talking about databases in theory without actual examples of the data and/or examples of why and for what the databases would be used.

=END