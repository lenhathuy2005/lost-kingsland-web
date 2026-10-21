# Lost Kingsland V27 — Kết nối Game / Admin / Web cùng một DB

## 1. Một DB runtime duy nhất

Dùng:

```text
lost_kingsland_v4_reconciled
```

Final gameplay config:

```text
LK-V4.0-P15-RC-001
```

Cultivation config:

```text
LK-V4.0-PROD-RC1
```

Không import dump `lost_kingsland` gốc đè lên V27.

## 2. Game / Discord Bot

Trong `C:\Project\Lost-Kingsland-game\.env`, runtime URL phải trỏ tới:

```env
DATABASE_URL=jdbc:postgresql://localhost:5432/lost_kingsland_v4_reconciled
ACTIVE_GAMEPLAY_CONFIG=LK-V4.0-P15-RC-001
ACTIVE_CULTIVATION_CONFIG=LK-V4.0-PROD-RC1
```

Giữ username/password thật của máy bạn; không commit `.env`.

## 3. Admin

Folder:

```text
C:\Project\lost-kingsland-admin
```

Trong DBeaver, chọn **lost_kingsland_v4_reconciled** rồi chạy:

```text
sql\20_admin_roles.sql
sql\40_v27_shared_content_media_and_permissions.sql
```

Tạo login Admin riêng nếu chưa có:

```sql
CREATE ROLE lost_kingsland_admin LOGIN PASSWORD 'YOUR_STRONG_PASSWORD';
GRANT lk_admin_config_editor TO lost_kingsland_admin;
```

Copy `.env.example` → `.env` và điền password/token.

Chạy:

```powershell
cd C:\Project\lost-kingsland-admin
.\run_admin.bat
```

URL:

```text
http://127.0.0.1:8787
```

## 4. Web

Folder:

```text
C:\Project\lost-kingsland-web
```

Trong cùng DB chạy:

```text
database\create_web_readonly_role.sql
```

Copy `.env.example` → `.env`, đặt password đúng của `lost_kingsland_web_ro`.

Chạy:

```powershell
cd C:\Project\lost-kingsland-web
.\run.ps1
```

URL:

```text
http://127.0.0.1:8788
```

## 5. Shared artwork

Admin upload file một lần → PostgreSQL:

```text
platform.media_assets
platform.entity_media_links
```

Media roles:

```text
PRIMARY
DISCORD
DETAIL
THUMBNAIL
GALLERY
```

Web đọc PRIMARY trực tiếp từ DB.

Để Bot cũng tự nhận ảnh, copy/integrate:

```text
lost-kingsland-admin\integration\java\ContentMediaJdbcRepository.java
```

vào Game/Bot và gọi resolver khi dựng Discord embed/attachment.

Ưu tiên Bot:

```text
DISCORD → PRIMARY → direct image_asset_key
```

Sau integration một lần, thay ảnh trong Admin không cần copy ảnh vào folder Game.

## 6. Kiểm tra kết nối

Admin:

```text
http://127.0.0.1:8787/api/health
```

Kỳ vọng:

```text
mode = live
gameplay_config = LK-V4.0-P15-RC-001
media_db_ready = true
```

Web:

```text
http://127.0.0.1:8788/api/public/content/summary
```

Kỳ vọng gần như:

```text
production_items = 480
rarity_count = 10
equipment_sets = 20
set_bonuses = 80
characters = 40
bosses = 100
sharedMediaReady = true
```

## 7. Quyền ghi

- Game/Bot: gameplay authority.
- Admin: controlled content/config/media writes.
- Web: DB SELECT only; gameplay actions phải đi Game Core API.
