-- fix Shipbuilding II navy bugs
UPDATE Modifiers SET SubjectRequirementSetId='MOD_BZ_DOMAIN_LAND_REQS' WHERE ModifierId='MOD_TECH_OCEAN_TRAVEL_EMBARKED';
INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
('MOD_BZ_DOMAIN_LAND_REQS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
('MOD_BZ_DOMAIN_LAND_REQS', 'MOD_BZ_DOMAIN_LAND_REQ');
INSERT INTO Requirements(RequirementId, RequirementType) VALUES
('MOD_BZ_DOMAIN_LAND_REQ', 'REQUIREMENT_UNIT_DOMAIN_MATCHES');
INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
('MOD_BZ_DOMAIN_LAND_REQ', 'UnitDomain', 'DOMAIN_LAND');

-- Ottru UU: add UNIT_CLASS_NAVAL (in addition to UNIT_CLASS_OTTRU)
-- for compatibility with bonuses like the Hermione Class memento
INSERT OR REPLACE INTO TypeTags(Type, Tag) VALUES ('UNIT_OTTRU', 'UNIT_CLASS_NAVAL');

-- Guildhall: add DIPLOMACY tag (for Himiko, High Shaman persona)
INSERT OR REPLACE INTO TypeTags(Type, Tag) VALUES ('BUILDING_GUILDHALL', 'DIPLOMACY');
