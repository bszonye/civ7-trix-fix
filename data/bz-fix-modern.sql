-- Bridhadeeswarar Temple and Machu Pickhu: continue adjacency bonuses
UPDATE Adjacency_YieldChanges SET Age = NULL WHERE ID = 'BrihadeeswararTempleWildcardNavigableHappiness';
UPDATE Adjacency_YieldChanges SET Age = NULL WHERE ID = 'MachuPikchuWildcardCulture';
UPDATE Adjacency_YieldChanges SET Age = NULL WHERE ID = 'MachuPikchuWildcardGold';

-- Opera House: add DIPLOMACY tag (for Himiko, High Shaman persona)
INSERT OR REPLACE INTO TypeTags(Type, Tag) VALUES ('BUILDING_OPERA_HOUSE', 'DIPLOMACY');
