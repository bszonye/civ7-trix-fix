-- fix Shipbuilding II navy bugs
UPDATE Modifiers SET SubjectRequirementSetId='MOD_SLTH_BUGFIX_ISNT_NAVY_REQS' WHERE ModifierId='MOD_TECH_OCEAN_TRAVEL_EMBARKED';
INSERT INTO RequirementSets(RequirementSetId, RequirementSetType) VALUES
('MOD_SLTH_BUGFIX_ISNT_NAVY_REQS', 'REQUIREMENTSET_TEST_ALL');
INSERT INTO RequirementSetRequirements(RequirementSetId, RequirementId) VALUES
('MOD_SLTH_BUGFIX_ISNT_NAVY_REQS', 'MOD_SLTH_BUGFIX_ISNT_NAVY_REQS');
INSERT INTO Requirements(RequirementId, RequirementType, Inverse) VALUES
('MOD_SLTH_BUGFIX_ISNT_NAVY_REQS', 'REQUIREMENT_UNIT_TAG_MATCHES', 1);
INSERT INTO RequirementArguments(RequirementId, Name, Value) VALUES
('MOD_SLTH_BUGFIX_ISNT_NAVY_REQS', 'Tag', 'UNIT_CLASS_NAVAL');

-- fix Ottru not having naval class type (needed for above fix)
-- Also means they get the Hermione model memento bonus
INSERT OR REPLACE INTO TypeTags(Type, Tag) VALUES ('UNIT_OTTRU', 'UNIT_CLASS_NAVAL');

-- Fix Incense bonus to producing Missionaries
INSERT OR REPLACE INTO  ModifierArguments(ModifierId, Name, "Value") VALUES
('MOD_INCENSE_CITY_MISSIONARY_PRODUCTION', 'Percent', '100');
