-- Ottru UU: add UNIT_CLASS_NAVAL for compatibility with naval bonuses
INSERT OR REPLACE INTO TypeTags(Type, Tag) VALUES ('UNIT_OTTRU', 'UNIT_CLASS_NAVAL');
-- Himiko, High Shaman: add missing Happiness and Influence types
INSERT OR REPLACE INTO TypeTags(Type, Tag) VALUES ('BUILDING_GUILDHALL', 'DIPLOMACY');
INSERT OR REPLACE INTO TypeTags(Type, Tag) VALUES ('BUILDING_TAVERN', 'HAPPINESS');
