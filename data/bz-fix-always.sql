-- Shawnee: fix unlock rewards typo
UPDATE UnlockRewards SET UnlockRewardKind="KIND_CIVILIZATION" WHERE UnlockRewardKind = 'KIND_CIVLIZATION';
