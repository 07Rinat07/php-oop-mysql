<?php

class Category
{
    // подключение к базе данных и имя таблицы
    private $conn;
    private $table_name = "categories";

    // свойства объекта
    public $id;
    public $name;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    // данный метод используется в раскрывающемся списке
    function read()
    {
        // запрос MySQL: выбираем столбцы в таблице «categories»
        $query = "SELECT
                    id, name
                FROM
                    " . $this->table_name . "
                ORDER BY
                    name";

        $stmt = $this->conn->prepare($query);
        $stmt->execute();

        return $stmt;
    }
}
