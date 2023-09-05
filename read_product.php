<?php
// получаем ID товара
$id = isset($_GET["id"]) ? $_GET["id"] : die("ERROR: отсутствует ID.");

// подключаем файлы для работы с базой данных и файлы с объектами
include_once "config/database.php";
include_once "objects/product.php";
include_once "objects/category.php";

// получаем соединение с базой данных
$database = new Database();
$db = $database->getConnection();

// подготавливаем объекты
$product = new Product($db);
$category = new Category($db);

// устанавливаем свойство ID товара для чтения
$product->id = $id;

// получаем информацию о товаре
$product->readOne();
// установка заголовка страницы
$page_title = "Страница товара (чтение одного товара)";

require_once "layout_header.php";
?>

    <!-- ссылка на все товары -->
    <div class="right-button-margin">
        <a href="index.php" class="btn btn-primary pull-right">
            <span class="glyphicon glyphicon-list"></span> Просмотр всех товаров
        </a>
    </div>

<?php // подвал
require_once "layout_footer.php";
