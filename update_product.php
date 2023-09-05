<?php

// получаем ID редактируемого товара
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

// устанавливаем свойство ID товара для редактирования
$product->id = $id;

// получаем информацию о редактируемом товаре
$product->readOne();

// установка заголовка страницы
$page_title = "Обновление товара";

include_once "layout_header.php";
?>

    <div class="right-button-margin">
        <a href="index.php" class="btn btn-default pull-right">Просмотр всех товаров</a>
    </div>

    <!-- здесь будет форма обновления товара -->

<?php // подвал
require_once "layout_footer.php";
