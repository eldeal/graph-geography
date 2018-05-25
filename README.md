graph-geography
================

Investigation into storing ONS geography in Neo4j and tying to CMD heirarchies.

## Setup

Install NEO4j: http://brewformulas.org/Neo4j

## Loading the dummy data
This is split into 3 steps to remind me what these steps are and allow one to be consistent with CMD.

1. Go to http://127.0.0.1:7474/browser/
        Paste contents of [codelists.cypher](/cypher-scripts/codelists.cypher)

2. On command line: `cypher-shell <  countriesandregions.cypher`


##Test queries

List of all regions across tim ``match(n:`_code_list`:`_regions`)-[:usedBy]-(m:`_code`) return m``
List of all regions for a specific year ``match(n:`_code_list`:`_regions` {code:'GOR10'})-[:usedBy]-(m:`_code`) return m``

Return all related hierarchies for a given code (e.g. a specific region) ``match(n:`_code` {code:'E12000004'})-[:usedBy*]-(m:`_hierarchy`) return m limit 10``
  - This will return a list, I would expect attributes on each hierarchy to define which year they relate to,
    and programatically we should be able to find the latest when that is what's required.
Return with wildcard:
  - Return the codes which matches that label: ``match(n:`_code_list`:`_regions` {code:'GOR10'})-[r:usedBy]-(m:`_code`) WHERE r.label =~ 'North.*' return m``
  - To find which code has ever had a certain label within a code list type - remove `{code:'GOR10'}` from above
  - To find which code has ever matched a label across lists also remove ':`_regions`' from above (so Northern Ireland as well as North East and North West)
  - To find all details for the codes which match the label: `return n, r, m`

Return lists created before a specific year (2015) ```match(n:`_code_list`) where n.year < 2015 return n```

##Notes

``WD16_LAD16_CTY16_OTH_UK_LU.csv`` is example of hierarchy file provided by ONS Geography team
