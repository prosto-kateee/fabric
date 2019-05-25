<?php
/* создан метод getForm в классе FormGet, которому передан тип формы. Он возвращает объект переданного типа. Создан интерфейс Forms с пока единственным заголовком метода getFormFields. Созданы 2 класса для 2 типов форм с методом getFormFields, которые возвращают поля для выбранной формы из бд */
class FormGet {

	public function getForm($type){

		switch($type){
			case "feedback": return new feedback;
			case "review": return new review;
			default: throw new Exception("Error type");
		}
	}
}

interface Forms {
	public function getFormFields();
};

class feedback implements Forms {
	
	public function getFormFields() {
		$db = mysqli_connect('localhost', 'root', '')
			or die('Не удалось соединиться: ' . mysql_error());
		mysqli_select_db($db, 'site') or die('Не удалось выбрать базу данных');
		
		$dbValue = $db->query("SELECT FIELD, NAME_FIELD, TYPE FROM form_fields WHERE FORM = 'feedback'");
		return $arFields = mysqli_fetch_all($dbValue);
	}
}

class review implements Forms {
	
	public function getFormFields ( ){
		$db = mysqli_connect('localhost', 'root', '')
			or die('Не удалось соединиться: ' . mysql_error());
		mysqli_select_db($db, 'site') or die('Не удалось выбрать базу данных');
		
		$dbValue = $db->query("SELECT FIELD, NAME_FIELD, TYPE FROM form_fields WHERE FORM = 'review'");
		return $arFields = mysqli_fetch_all($dbValue);
		
	}
}

$factory = new FormGet;
$form = $factory->getForm('feedback');
$arFieldsForm = $form->getFormFields();

echo "<pre>";
var_dump($arFieldsForm);
echo "</pre>";
