-- fix Bridhadeeswarar Temple and Machu Pickhu adjacency
-- (updates bonus for Modern age)
UPDATE Adjacency_YieldChanges SET Age = 'AGE_MODERN' WHERE ID = 'BrihadeeswararTempleWildcardNavigableHappiness';
UPDATE Adjacency_YieldChanges SET Age = 'AGE_MODERN' WHERE ID = 'MachuPikchuWildcardCulture';
UPDATE Adjacency_YieldChanges SET Age = 'AGE_MODERN' WHERE ID = 'MachuPikchuWildcardGold';

-- Opera House: add DIPLOMACY tag (for Himiko, High Shaman persona)
INSERT OR REPLACE INTO TypeTags(Type, Tag) VALUES ('BUILDING_OPERA_HOUSE', 'DIPLOMACY');
