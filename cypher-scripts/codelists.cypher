CREATE (HIERAG:`_hierarchy_admin_geo` {code: 'HIERAG16', label: 'Administrative geography'})
CREATE (WD16:`_code_list_wards` {code: 'WD16', label: 'Wards', last_updated:'Jan 1 2016', year: '2016'})
CREATE (LAD16:`_code_list_local_authority` {code: 'LAD16', label: 'Local Authority Districts', last_updated: 'Jan 1 2016', year: '2016'})
CREATE (CTY16:`_code_list_counties` {code: 'CTY16', label: 'Counties', last_updated: 'Jan 1 2016', year: '2016'})
CREATE (GOR10:`_code_list_regions` {code: 'GOR10', label: 'Regions', last_updated: 'Jan 1 2010', year: '2010'})
CREATE (CTRY10:`_code_list_countries` {code: 'CTRY10', label: 'Countries', last_updated: 'Jan 1 2010', year: '2010'})
CREATE
(WD16)-[:usedBy]->(HIERAG),
(LAD16)-[:usedBy]->(HIERAG),
(CTY16)-[:usedBy]->(HIERAG),
(GOR10)-[:usedBy]->(HIERAG),
(CTRY10)-[:usedBy]->(HIERAG),

CREATE (HIERAG12:`_hierarchy_admin_geo` {code: 'HIERAG12', label: 'Administrative geography', description: 'Hierarchy for 2012'})
CREATE (WD09:`_code_list_wards` {code: 'WD09', label: 'Wards', last_updated:'Jan 1 2009', year: '2009'})
CREATE (LAD11:`_code_list_local_authority` {code: 'LAD11', label: 'Local Authority Districts', last_updated: 'Jan 1 2011', year: '2011'})
CREATE (CTY12:`_code_list_counties` {code: 'CTY12', label: 'Counties', last_updated: 'Jan 1 2012', year: '2012'})
CREATE
(WD09)-[:usedBy]->(HIERAG12),
(LAD11)-[:usedBy]->(HIERAG12),
(CTY12)-[:usedBy]->(HIERAG12),
(GOR10)-[:usedBy]->(HIERAG12),
(CTRY10)-[:usedBy]->(HIERAG12),

CREATE (HIERAG05:`_hierarchy_admin_geo` {code: 'HIERAG05', label: 'Administrative geography', description: 'Hierarchy for 2005'})
CREATE (WD05:`_code_list_wards` {code: 'WD05', label: 'Wards', last_updated:'Jan 1 2005', year: '2005'})
CREATE (LAD05:`_code_list_local_authority` {code: 'LAD05', label: 'Local Authority Districts', last_updated: 'Jan 1 2005', year: '2005'})
CREATE (CTY05:`_code_list_counties` {code: 'CTY05', label: 'Counties', last_updated: 'Jan 1 2005', year: '2005'})
CREATE (GOR05:`_code_list_regions` {code: 'GOR05', label: 'Regions', last_updated: 'Jan 1 2005', year: '2005'})
CREATE (CTRY05:`_code_list_countries` {code: 'CTRY05', label: 'Countries', last_updated: 'Jan 1 2005', year: '2005'})

CREATE
(WD05)-[:usedBy]->(HIERAG05),
(LAD05)-[:usedBy]->(HIERAG05),
(CTY05)-[:usedBy]->(HIERAG05),
(GOR05)-[:usedBy]->(HIERAG05),
(CTRY05)-[:usedBy]->(HIERAG05),
