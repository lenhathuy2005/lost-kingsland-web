Lost Kingsland Web V28.2 Gateway Restore Hotfix

Reason:
V28 upgrade added integration files but the user's working root was missing the original gateway source package while tests were still present.
This hotfix restores:
- GameCoreGateway.java
- ActionController.java
- WheelPortalController.java

Install:
1. Stop Web.
2. Extract this ZIP directly over C:\Project\lost-kingsland-web
3. Choose Replace All if prompted.
4. Run:
   mvn clean
   .\run.bat

No .env, database, or gameplay data is modified.
