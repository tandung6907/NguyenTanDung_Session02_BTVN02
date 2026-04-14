use homework;

-- INITIAL TABLE
create table customers(
	customer_id int primary key,
    full_name varchar(100),
    email nvarchar(100),
    age int
);

-- LỖI:
-- thiếu ràng buộc cho email - người dùng có thể để trống email, email cũng chỉ cần ký tử ASCII nên thay nvarchar thành varchar
-- thiếu ràng buộc cho tên và tuổi không trống, tuổi chưa có check để thiết lập tuổi không âm

-- SỬA:
create table new_customers(
	customer_id int primary key,
    full_name varchar(100) not null,
    email varchar(100) not null,
    age int not null
    check (age > 0)
);