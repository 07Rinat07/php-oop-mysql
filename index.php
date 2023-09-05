<?php
// страница, указанная в параметре URL, страница по умолчанию - 1
$page = isset($_GET["page"]) ? $_GET["page"] : 1;

// устанавливаем ограничение количества записей на странице
$records_per_page = 5;

// подсчитываем лимит запроса
$from_record_num = ($records_per_page * $page) - $records_per_page;

// включаем соединение с БД и файлы с объектами
include_once "config/database.php";
include_once "objects/product.php";
include_once "objects/category.php";

// создаём экземпляры классов БД и объектов
$database = new Database();
$db = $database->getConnection();

$product = new Product($db);
$category = new Category($db);

// запрос товаров
$stmt = $product->readAll($from_record_num, $records_per_page);
$num = $stmt->rowCount();
// установка заголовка страницы
$page_title = "Вывод товаров";

require_once "layout_header.php";
?>

    <div class="right-button-margin">
        <a href="create_product.php" class="btn btn-default pull-right">Добавить товар</a>
    </div>

<?php // подвал
require_once "layout_footer.php";





