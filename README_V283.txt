Lost Kingsland Web V28.3 - Gateway Fix Installer

Why this patch exists:
The Maven errors "cannot find symbol GameCoreGateway / ActionController / WheelPortalController" mean the 3 production Java files are still missing from the Maven source tree.

Use:
1. Extract this ZIP into C:\Project\lost-kingsland-web
2. Run APPLY_V283_FIX.bat
3. Run mvn clean test
4. If PASS, run .\run.bat

The installer detects whether it was accidentally extracted one folder too deep and can target the parent project when pom.xml is there.

Temporary emergency start only:
RUN_WEB_TEMP_SKIP_TEST_COMPILE.bat
This skips test-source compilation, so it is not the permanent repair.
