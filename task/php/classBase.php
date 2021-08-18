<?php
    class Base {
        private $_pdo;
        private $_results;
        private $_query;
        private $_error = false;

        public function __construct()
        {
            try{
                $this->_pdo = new PDO("mysql:host=localhost; dbname=task", "root", "");
            }catch(Exception $e){
                die($e->getMessage());
            }
        }
        
        public function query($sql, $params = array())
        {
            $this->_error = false;
            $this->_query = $this->_pdo->prepare($sql);
            if($this->_query )
            {
                $x = 1;
                if(count($params))
                {
                    foreach($params as $param)
                    {
                        $this->_query->bindValue($x, $param);
                        $x++;
                    }
                }
                if($this->_query->execute()){
                    $this->_results = $this->_query->fetchAll(PDO::FETCH_OBJ);
                    $this->_count = $this->_query->rowCount();
                }else{
                    $this->error = true;
                }
            }
            return $this;
        }

        public function selectAll($table)
        {
            $sql = "SELECT * FROM $table";

            if(!$this->query($sql)->getError())
            {
                return $this->_results;
            }
            else return false;
        }

        public function selectRow($table, $email, $column){
            $sql = "SELECT * FROM $table WHERE $column = '$email' ";

            if(!$this->query($sql)->getError())
            {
                return $this->_results;
            }
            else return false;

        }

        public function insert($table, $fields = array())
        {
            if(count($fields))
            {
                $keys = array_keys($fields);
                $values = null;

                $x = 1;
                foreach($fields as $field){
                    $values .= "?";
                    if($x < count($fields)){
                        $values .= ", ";
                    }
                    $x++;
                }
                $sql = "INSERT INTO ".$table." (`".implode('`, `', $keys)."`) VALUES ({$values})";

                if(!$this->query($sql, $fields)->getError()){
                    return true;
                }
                return false;
            }
        }

        public function update($table, $id, $fields, $column)
        {
            $set = "";

            $x=1;
            foreach($fields as $name =>$value){
                $set .= "{$name} = ?";
                if($x<count($fields)){
                    $set .= ", ";
                }
                $x++;
            }
            $sql = "UPDATE {$table} SET {$set} WHERE $column = {$id}";

            if(!$this->query($sql, $fields)->getError()){
                return true;
            }
            return false;
        }

        public function delete($table, $id, $column)
        {
            $sql = "DELETE FROM $table WHERE $column = $id";

            if(!$this->query($sql)->getError()){
                return true;
            }
            return false;
        }

        public function getError()
        {
            return $this->_error;
        }

        public function getCount(){
            return $this->_count;
        }
    }
?>