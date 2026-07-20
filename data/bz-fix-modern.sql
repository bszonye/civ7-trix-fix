-- align Tier 3 unique units with Battleship stats
UPDATE Unit_Stats SET Range=3 where UnitType="UNIT_MIKASA_2";
UPDATE Unit_Stats SET Range=3 where UnitType="UNIT_REVENGE_2";
-- fix "Kanpaku" narrative story rewards
UPDATE ModifierArguments SET Value = "ATTRIBUTE_MILITARISTIC"
WHERE ModifierId = "10168B_NARRATIVE_MODIFIER" AND Name = "AttributeType";
UPDATE ModifierArguments SET Value = "1"
WHERE ModifierId = "10168B_NARRATIVE_MODIFIER" AND Name = "Amount";
UPDATE NarrativeRewardIcons SET RewardIconType = "ATTRIBUTE_MILITARISTIC"
WHERE NarrativeStoryType = "10168B";
