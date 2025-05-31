-- Himiko, High Shaman: add missing Happiness and Influence types
INSERT OR REPLACE INTO TypeTags(Type, Tag) VALUES ('BUILDING_OPERA_HOUSE', 'DIPLOMACY');
-- Bridhadeeswarar Temple and Machu Pikchu: ageless adjacency bonuses
UPDATE Adjacency_YieldChanges SET Age = NULL WHERE ID = 'BrihadeeswararTempleWildcardNavigableHappiness';
UPDATE Adjacency_YieldChanges SET Age = NULL WHERE ID = 'MachuPikchuWildcardCulture';
UPDATE Adjacency_YieldChanges SET Age = NULL WHERE ID = 'MachuPikchuWildcardGold';
