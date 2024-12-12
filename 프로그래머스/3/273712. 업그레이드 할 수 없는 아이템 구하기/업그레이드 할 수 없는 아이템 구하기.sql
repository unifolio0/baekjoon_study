SELECT 
    I.ITEM_ID, 
    I.ITEM_NAME, 
    I.RARITY
FROM 
    ITEM_INFO I
WHERE 
    I.ITEM_ID NOT IN (SELECT PARENT_ITEM_ID FROM ITEM_TREE WHERE PARENT_ITEM_ID IS NOT NULL)
ORDER BY 
    I.ITEM_ID DESC;
