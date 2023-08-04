# Bai KT 01_2023

Bài làm của em làm được : 
Yêu cầu 1
Yêu cầu 2 
Yêu cầu 3:
Hiển thị danh sách nhân viên theo bản ghi mới nhất 

Trong yêu cầu 3 em bị lỗi 
  Undefined variable $employees (không thể lấy ra $employees là các bản ghi employee 
  và lỗi foreach() argument must be of type array|object, null given  do $employee ko lấy được
  Em đã gặp lỗi này trước đó từ buổi thứ 4 (2/8/2023) nhưng đã làm mọi cách vẫn không sửa được :

Em đã sửa bằng cách thêm class Employee và thêm đoạn kết nối và select bản ghi trước phần duyệt mảng foreach 
               
                $conn = new PDO('mysql:host=localhost;dbname=xproject', 'root', "");
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "SELECT * FROM employees order by id desc";
                $stmt = $conn->prepare($sql);
                $stmt->execute();
                $stmt->setFetchMode(PDO::FETCH_ASSOC);

                $result = $stmt->fetchAll();
                $employees = [];
                foreach ($result as $row) {
                    $employee = new Employee($row['id'], $row['name'], $row['address'], $row['salary']);
                    $employees[] = $employee;
                }
                $conn = null;
Mong thấy thông cảm cho em vì bài làm có thể không đúng ý thầy nhưng kết quả vẫn đúng mong thầy xem xét cho em.
Em cảm ơn thầy ạ.
