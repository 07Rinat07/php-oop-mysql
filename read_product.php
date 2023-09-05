<?php

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
