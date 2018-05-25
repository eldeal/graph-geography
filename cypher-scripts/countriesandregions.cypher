
CREATE (:`_code` { code:'S92000003' }),
 (:`_code` { code:'N92000002' }),
 (:`_code` { code:'W92000004' }),
 (:`_code` { code:'E92000001' }),
 (:`_code` { code:'E12000003' }),
 (:`_code` { code:'E12000005' }),
 (:`_code` { code:'E12000002' }),
 (:`_code` { code:'E12000004' }),
 (:`_code` { code:'E12000009' }),
 (:`_code` { code:'E12000007' }),
 (:`_code` { code:'E12000001' }),
 (:`_code` { code:'E12000008' }),
 (:`_code` { code:'E12000006' });

MATCH (parent:`_code_list_countries` { code:'CTRY10' })
, (node:`_code` { code:'S92000003' })  WITH parent,node
CREATE (node)-[:usedBy {label:'Scotland', welsh:'Yr Alban', boundary_file:'s3://scotland.zip'} ]->(parent);
MATCH (parent:`_code_list_countries` { code:'CTRY10' })
, (node:`_code` { code:'N92000002' })  WITH parent,node
CREATE (node)-[:usedBy {label:'Northern Ireland', welsh:'Gogledd Iwerddon', boundary_file:'s3://northern-ireland.zip'} ]->(parent);
MATCH (parent:`_code_list_countries` { code:'CTRY10' })
, (node:`_code` { code:'W92000004' })  WITH parent,node
CREATE (node)-[:usedBy {label:'Wales', welsh:'Cymru', boundary_file:'s3://wales.zip'} ]->(parent);
MATCH (parent:`_code_list_countries` { code:'CTRY10' })
, (node:`_code` { code:'E92000001' })  WITH parent,node
CREATE (node)-[:usedBy {label:'England', welsh:'Lloegr', boundary_file:'s3://england.zip'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR10' })
, (node:`_code` { code:'E12000003' })  WITH parent,node
CREATE (node)-[:usedBy {label:'Yorkshire and The Humber'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR10' })
, (node:`_code` { code:'E12000005' })  WITH parent,node
CREATE (node)-[:usedBy {label:'West Midlands'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR10' })
, (node:`_code` { code:'E12000002' })  WITH parent,node
CREATE (node)-[:usedBy {label:'North West'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR10' })
, (node:`_code` { code:'E12000004' })  WITH parent,node
CREATE (node)-[:usedBy {label:'East Midlands'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR10' })
, (node:`_code` { code:'E12000009' })  WITH parent,node
CREATE (node)-[:usedBy {label:'South West'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR10' })
, (node:`_code` { code:'E12000007' })  WITH parent,node
CREATE (node)-[:usedBy {label:'London'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR10' })
, (node:`_code` { code:'E12000001' })  WITH parent,node
CREATE (node)-[:usedBy {label:'North East'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR10' })
, (node:`_code` { code:'E12000008' })  WITH parent,node
CREATE (node)-[:usedBy {label:'South East'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR10' })
, (node:`_code` { code:'E12000006' })  WITH parent,node
CREATE (node)-[:usedBy {label:'East of England'} ]->(parent);


MATCH (parent:`_code_list_countries` { code:'CTRY05' })
, (node:`_code` { code:'S92000003' })  WITH parent,node
CREATE (node)-[:usedBy {label:'Scotland/Yr Alban', boundary_file:'s3://scotland.zip'} ]->(parent);
MATCH (parent:`_code_list_countries` { code:'CTRY05' })
, (node:`_code` { code:'N92000002' })  WITH parent,node
CREATE (node)-[:usedBy {label:'Northern Ireland/Gogledd Iwerddon', boundary_file:'s3://northern-ireland.zip'} ]->(parent);
MATCH (parent:`_code_list_countries` { code:'CTRY05' })
, (node:`_code` { code:'W92000004' })  WITH parent,node
CREATE (node)-[:usedBy {label:'Wales/Cymru', boundary_file:'s3://wales.zip'} ]->(parent);
MATCH (parent:`_code_list_countries` { code:'CTRY05' })
, (node:`_code` { code:'E92000001' })  WITH parent,node
CREATE (node)-[:usedBy {label:'England/Lloegr', boundary_file:'s3://england.zip'} ]->(parent);

MATCH (parent:`_code_list_regions` { code:'GOR05' })
, (node:`_code` { code:'E12000003' })  WITH parent,node
CREATE (node)-[:usedBy {label:'Yorkshire and The Humber'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR05' })
, (node:`_code` { code:'E12000005' })  WITH parent,node
CREATE (node)-[:usedBy {label:'West Midlands'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR05' })
, (node:`_code` { code:'E12000002' })  WITH parent,node
CREATE (node)-[:usedBy {label:'North West'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR05' })
, (node:`_code` { code:'E12000004' })  WITH parent,node
CREATE (node)-[:usedBy {label:'East Midlands'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR05' })
, (node:`_code` { code:'E12000009' })  WITH parent,node
CREATE (node)-[:usedBy {label:'South West'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR05' })
, (node:`_code` { code:'E12000007' })  WITH parent,node
CREATE (node)-[:usedBy {label:'London'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR05' })
, (node:`_code` { code:'E12000001' })  WITH parent,node
CREATE (node)-[:usedBy {label:'North East'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR05' })
, (node:`_code` { code:'E12000008' })  WITH parent,node
CREATE (node)-[:usedBy {label:'South East'} ]->(parent);
MATCH (parent:`_code_list_regions` { code:'GOR05' })
, (node:`_code` { code:'E12000006' })  WITH parent,node
CREATE (node)-[:usedBy {label:'East of England'} ]->(parent);


MATCH (parent:`_code` { code:'E92000001' }), (node:`_code` { code:'E12000003'})
WITH parent,node CREATE (node)-[:hasParent]->(parent);
MATCH (parent:`_code` { code:'E92000001' }), (node:`_code` { code:'E12000005'})
WITH parent,node CREATE (node)-[:hasParent]->(parent);
MATCH (parent:`_code` { code:'E92000001' }), (node:`_code` { code:'E12000002'})
WITH parent,node CREATE (node)-[:hasParent]->(parent);
MATCH (parent:`_code` { code:'E92000001' }), (node:`_code` { code:'E12000004'})
WITH parent,node CREATE (node)-[:hasParent]->(parent);
MATCH (parent:`_code` { code:'E92000001' }), (node:`_code` { code:'E12000009'})
WITH parent,node CREATE (node)-[:hasParent]->(parent);
MATCH (parent:`_code` { code:'E92000001' }), (node:`_code` { code:'E12000007'})
WITH parent,node CREATE (node)-[:hasParent]->(parent);
MATCH (parent:`_code` { code:'E92000001' }), (node:`_code` { code:'E12000001'})
WITH parent,node CREATE (node)-[:hasParent]->(parent);
MATCH (parent:`_code` { code:'E92000001' }), (node:`_code` { code:'E12000008'})
WITH parent,node CREATE (node)-[:hasParent]->(parent);
MATCH (parent:`_code` { code:'E92000001' }), (node:`_code` { code:'E12000006'})
WITH parent,node CREATE (node)-[:hasParent]->(parent);
