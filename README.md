# graph-geography

Investigation into storing ONS geography in Neo4j and tying to CMD heirarchies.

Install NEO4j: http://brewformulas.org/Neo4j

1. Go to http://127.0.0.1:7474/browser/
        Paste contents of [codelists.cypher](/cypher-scripts/codelists.cypher)

2. On command line: `cypher-shell <  hierarchy.cypher`

3. On command line: `cypher-shell <  relationships.cypher`


Test queries

List of all regions `match(n:`_geography_group_` {code:'GOR10'})-[:usedBy]-(m:`_geography_location_`) return m`