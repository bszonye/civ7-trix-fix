-- fix Bridhadeeswarar Temple and Machu Pickhu adjacency in Modern age
UPDATE Adjacency_YieldChanges SET Age = NULL WHERE ID = 'BrihadeeswararTempleWildcardNavigableHappiness';
UPDATE Adjacency_YieldChanges SET Age = NULL WHERE ID = 'MachuPikchuWildcardCulture';
UPDATE Adjacency_YieldChanges SET Age = NULL WHERE ID = 'MachuPikchuWildcardGold';
