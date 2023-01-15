SELECT U.USER_ID, U.FIRST_NAME, U.LAST_NAME
FROM jiaqni.PUBLIC_Users U
WHERE NOT EXISTS (SELECT * FROM jiaqni.PUBLIC_Friends F WHERE U.USER_ID = F.USER1_ID OR U.USER_ID = F.USER2_ID)
ORDER BY U.USER_ID ASC;