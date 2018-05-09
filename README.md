graph-geography
================

Investigation into storing ONS geography in Neo4j and tying to CMD heirarchies.

## Setup

Install NEO4j: http://brewformulas.org/Neo4j

## Loading the dummy data
This is split into 3 steps to remind me what these steps are and allow one to be consistent with CMD.

1. Go to http://127.0.0.1:7474/browser/
        Paste contents of [codelists.cypher](/cypher-scripts/codelists.cypher)

2. On command line: `cypher-shell <  hierarchy.cypher`

3. On command line: `cypher-shell <  relationships.cypher`


##Test queries

List of all regions ``match(n:`_geography_group_` {code:'GOR10'})-[:usedBy]-(m:`_geography_location_`) return m``
Return heirarchy for a given region ``match(n:`_geography_location_` {code:'E10000031'})-[:usedBy*]-(m:`_geography_hierarchy_`) return m``
Return with wildcard ``match(n:`_geography_group_` {code:'GOR10'})-[:usedBy]-(m:`_geography_location_`) where m.label =~ 'North.*' return m``
Return groups created before a specific year (2015) ```match(n:`_geography_group_`) where n.year < 2015 return n```

##Notes

``WD16_LAD16_CTY16_OTH_UK_LU.csv`` is example of heirarchy file provided by ONS Geography team

