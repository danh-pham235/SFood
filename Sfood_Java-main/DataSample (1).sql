USE Sfood;

-- Turn on IDENTITY_INSERT for Users table
SET IDENTITY_INSERT Users ON;

-- Sample data for Users table
INSERT INTO Users (UserId, Name, Email, PasswordHash, Phone, Address, Role)
VALUES
(1, N'Tran Chí Thuận', 'tranchithuanjr@gmail.com', '9fa9682df727bbc3efba7f7731d4485b', '0372342060', N'151 Nam Cao', 'Staff'),
(2, N'Phạm Thế Danh', 'phamdanh0305@gmail.com', 'afa887cc08be6ce8849e64f5b42cecd0', '0344858427', N'456 Đồng Nai', 'Customer'),
(3, N'Nguyễn Quốc Đạt', 'quocdat@gmail.com', '1734c33adf3602e92a32b975b5c035eb', '03448533737', N'78 Dí An', 'Customer');

-- Turn off IDENTITY_INSERT for Users table
SET IDENTITY_INSERT Users OFF;

-- Sample data for Orders table
SET IDENTITY_INSERT Orders ON;

INSERT INTO Orders (OrderId, UserId, OrderDate, Status, Total)
VALUES
(1, 1, '2024-06-01', 1, 25),
(2, 2, '2024-06-02', 1, 30),
(3, 3, '2024-06-04', 1, 31);

SET IDENTITY_INSERT Orders OFF;

-- Sample data for OrderItem table
SET IDENTITY_INSERT OrderItem ON;

INSERT INTO OrderItem (ItemId, ItemName, Price, Image, Type)
VALUES
(1, N'Bánh mì', 18.9, 'https://images.unsplash.com/photo-1599719455360-ff0be7c4dd06?q=80&w=2049&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Food'),
(2, N'Phở', 30.5, 'https://images.unsplash.com/photo-1533787761082-492a5b83e614?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Food'),
(3, N'Cơm Tấm', 35.9,  'https://images.unsplash.com/photo-1597311280719-b6bb2ca37f62?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Food'),
(4, N'Chả giò chay', 35.9, 'https://images.pexels.com/photos/4985525/pexels-photo-4985525.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'Food'),
(5, N'Mì xào nấm chay', 35.99,  'https://images.pexels.com/photos/5848494/pexels-photo-5848494.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'Food'),
(6, N'Nem chay', 35.2,  'https://media.istockphoto.com/id/1070157550/vi/anh/ch%E1%BA%A3-gi%C3%B2-chi%C3%AAn-gi%C3%B2n.jpg?s=2048x2048&w=is&k=20&c=zczjd_UF4qN3NvnoerrAq00JKoMw6O4qgx4Mibc0i_E=', 'Food'),
(7, N'Milk Coffee',20.9,'https://images.pexels.com/photos/20064330/pexels-photo-20064330/free-photo-of-may-nh-u-ng-ly-c-c.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','Drink'),
(8, N'Coffee Caramel',45.0,'https://plus.unsplash.com/premium_photo-1673545518947-ddf3240090b1?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Drink'),
(9, N'Cacao Sữa',25.9,'https://images.unsplash.com/photo-1554045687-794557ec6907?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Drink'),
(10, N'Cam ép',22.5,'https://plus.unsplash.com/premium_photo-1675667390417-d9d23160f4a6?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Drink'),
(11, N'Soda Blue',25,'https://plus.unsplash.com/premium_photo-1661539091438-35cd95011635?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','Drink');


SET IDENTITY_INSERT OrderItem OFF;

-- Sample data for Recipe table
-- Cho phép chèn giá trị vào cột nhận diện trong bảng Recipe
SET IDENTITY_INSERT Recipe ON;

INSERT INTO Recipe (RecipeID, ItemId, Name, Ingredients)
VALUES
(1, 1, N'Bánh mì', N'Bánh mì, Thịt heo, Pâté, Rau củ ngâm, Ngò, Ớt, Mayonnaise'),
(2, 2, N'Phở ', N'Xương bò, Bánh phở, Hồi, Quế, Gừng, Nước mắm, Hành, Ngò, Chanh, Giá đỗ'),
(3, 3, N'Cơm Tấm ', N'Cơm tấm, Thịt nướng, Rau củ ngâm, Trứng chiên, Mỡ hành, Nước mắm'),
(4, 4, N'Chả giò chay ', N'Bánh tráng, Đậu hũ, Cà rốt, Nấm, Bún, Bắp cải, Nước tương, Tỏi'),
(5, 5, N'Mì xào nấm chay ', N'Mì vàng, Nấm, Cải thìa, Cà rốt, Nước tương, Tỏi, Dầu mè'),
(6, 6, N'Nem chay ', N'Bánh tráng, Đậu hũ, Cà rốt, Nấm, Miến, Rau sống, Nước sốt đậu phộng'),
(7, 7, N'Milk Coffee ', N'Cà phê, Sữa đặc, Đá'),
(8, 8, N'Coffee Caramel ', N'Cà phê, Siro caramel, Sữa, Đá'),
(9, 9, N'Cacao Sữa ', N'Bột ca cao, Sữa, Đường, Đá'),
(10, 10, N'Cam ép ', N'Cam tươi, Đá'),
(11, 11, N'Soda Blue ', N'Nước chanh có ga, Siro Blue Curacao, Đá');

-- Tắt chế độ chèn giá trị vào cột nhận diện trong bảng Recipe
SET IDENTITY_INSERT Recipe OFF;

-- Sample data for WeeklyMenu table

SET IDENTITY_INSERT WeeklyMenu ON;

INSERT INTO WeeklyMenu (PlanID, Name, DayName, Week, Description, Type)
VALUES
(1, N'Món ăn gia đình', 'Monday', 'Week1', N'Món ăn gia đình không chỉ ngon mà còn chứa đựng tình yêu thương. Mỗi bữa cơm, từ canh chua cá lóc đến thịt kho tàu, đều gợi nhớ kỷ niệm và gắn kết mọi người.', 'vegetarian');

SET IDENTITY_INSERT WeeklyMenu OFF;

-- Sample data for WeeklyMenuitem table

SET IDENTITY_INSERT WeeklyMenuItems ON;

INSERT INTO WeeklyMenuItems(MenuItemID,PlanID,ItemId)
VALUES
(1,1,1);

SET IDENTITY_INSERT WeeklyMenuItems OFF;

-- Sample data for OrderDetail table
SET IDENTITY_INSERT OrderDetail ON;

INSERT INTO OrderDetail (DetailId, OrderId, ItemId, Quantity)
VALUES
(1, 1, 4, 1),
(2, 2, 5, 1),
(3, 3, 6, 1);

SET IDENTITY_INSERT OrderDetail OFF;
-- Sample data for DescriptionPage table
SET IDENTITY_INSERT DescriptionPage ON;

INSERT INTO DescriptionPage (DescriptionPageID, DescriptionName, ImageDescription)
VALUES
(1, N'Món ăn Chay', 'https://images.pexels.com/photos/992820/pexels-photo-992820.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(2, N'Món ăn Gia đình', 'https://images.pexels.com/photos/5779170/pexels-photo-5779170.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(3, N'Món ăn Truyền Thống', 'https://images.pexels.com/photos/7363743/pexels-photo-7363743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(4, N'Món ăn Giảm Cân', 'https://images.pexels.com/photos/17692196/pexels-photo-17692196/free-photo-of-rau-xa-lach-b-a-an-th-t-t-i.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
(5, N'Món ăn Tăng Cân', 'https://images.pexels.com/photos/2725744/pexels-photo-2725744.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1');

SET IDENTITY_INSERT DescriptionPage OFF;


-- Sample data for DescriptionPageDetail table
SET IDENTITY_INSERT DescriptionPageDetail ON;

-- Sample data for DescriptionPageDetail table
INSERT INTO DescriptionPageDetail (DescriptionPageDetailID,DescriptionPageID, DescriptionNameDetail)
VALUES
(1,1, N'Món ăn chay là lựa chọn ăn uống có lợi cho sức khỏe nhờ vào các thành phần chủ yếu từ rau củ, đậu phụ và các loại ngũ cốc.'),
(2, 2,N'Món ăn gia đình thường là những món ăn được nấu trong gia đình, mang hương vị thân thuộc và là nét đặc trưng của văn hóa ẩm thực gia đình.'),
(3, 3,N'Món ăn truyền thống là những món ăn mang tính di sản văn hóa, thường được chế biến theo những cách nấu truyền thống và có giá trị lịch sử đặc biệt.'),
(4, 4,N'Món ăn giảm cân là những món ăn có chế độ dinh dưỡng thấp calo, giúp hỗ trợ quá trình giảm cân và duy trì cân nặng lý tưởng.'),
(5, 5,N'Món ăn tăng cân là những món ăn giàu dinh dưỡng và calo, được thiết kế để tăng cân và cung cấp năng lượng cho cơ thể.');

SET IDENTITY_INSERT DescriptionPageDetail OFF;


INSERT INTO FeedBack (FullName, Email, Phone, Require)
VALUES 
    ('John Doe', 'john.doe@example.com', '123-456-7890', 'Technical support'),
    ('Jane Smith', 'jane.smith@example.com', '987-654-3210', 'Product inquiry'),
    ('Michael Brown', 'michael.brown@example.com', '456-789-0123', 'General feedback');

