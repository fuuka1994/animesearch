READ ME FIRST

- Project sử dụng IDE là eclipse.
- Project có kèm resource là ảnh, hiện tại app chỉ có thể chạy khi có ảnh nên cần down về và giải nén 2 file sau vào thư mục src/animesearch/view
	https://mega.co.nz/#!PoYSgKIA!rH8GN8azZPdwonbAxTlw1Qfpqv45NK0sqS4pXVWrSpI
	https://mega.co.nz/#!zpAGWRhL!WxlvEbxsNa8DPEZQMm40N-QrgBqLU2zcooPlS1UWaKI
- Dùng pgAdmin tạo database tên là animedb, sau đó restore file pgAdmin_animedb.backup vào.
(hoặc không có pgAdmin thì import file data.sql vào database. Database đó cần được đặt tên là "animedb")
	(Cả 2 file có trong thư mục /REPORT_README/)
- Trong quá trình build project sẽ tốn khá nhiều thời gian vì eclipse build workspace và copy resource vào output folder, xin
hãy kiên nhẫn đợi.
- Ở lần chạy đầu tiên, chương trình sẽ prompt 1 dialog yêu cầu nhập username và password của postgres, xin hãy nhập username và
password của bạn.
