CREATE DATABASE QuanLyNhanSu;
USE QuanLyNhanSu;

CREATE TABLE PhongBan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_phong_ban VARCHAR(100) NOT NULL
);

CREATE TABLE NhanVien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    ngay_vao_lam DATE,
    phong_ban_id INT
);

ALTER TABLE NhanVien
ADD CONSTRAINT fk_phongban
FOREIGN KEY (phong_ban_id) REFERENCES PhongBan(id);

INSERT INTO PhongBan (ten_phong_ban)
VALUES
('Nhân sự'),
('Kế toán'),
('IT');

INSERT INTO NhanVien (ho_ten, email, ngay_vao_lam, phong_ban_id)
VALUES
('Nguyen Van Thanh', 'thanh.nguyen@email.com', '2023-09-01', 1),
('Tran Thi Ha', 'Ha.tran@email.com', '2023-10-05', 3);

SELECT nv.*
FROM NhanVien nv
JOIN PhongBan pb ON nv.phong_ban_id = pb.id
WHERE pb.ten_phong_ban = 'IT';

UPDATE NhanVien nv
JOIN PhongBan pb_new ON pb_new.ten_phong_ban = 'Nhân sự'
SET nv.phong_ban_id = pb_new.id
WHERE nv.ho_ten = 'Trần Văn An';

DELETE FROM NhanVien
WHERE ho_ten = 'Lê Thị Bích';