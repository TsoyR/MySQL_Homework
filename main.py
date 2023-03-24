from getpass import getpass
import pymysql 

try:

    connection = pymysql.connect(
        host = "localhost",
        user = input("Введите имя пользователя: "),
        password = getpass("Введите пароль: "),
        database = "mymobiledb",
        cursorclass = pymysql.cursors.DictCursor
    )
    print("successfully conected...")
    print("#"*20)

    try:
    # создание таблицы
    #    with connection.cursor() as cursor:
    #         create_table_query = "CREATE TABLE `users`(id INT AUTO_INCREMENT, name VARCHAR(32),password VARCHAR(32), email VARCHAR(32),PRIMARY KEY(id));" 
    #         cursor.execute(create_table_query)
    #         print("table created ok")
    # добавление записи
    #    with connection.cursor() as cursor:
    #         insert_query = "INSERT INTO `users`(name,password,email) VALUES ('Roma','qwerty','roma@gmail.com');"
    #         cursor.execute(insert_query)
    #         connection.commit()
    # update данных
        # with connection.cursor() as cursor:
        #     update_query = "UPDATE `users` SET password = 'sdfsfsf' WHERE name='Roma';"
        #     cursor.execute(update_query)
        #     connection.commit()
    
    # удаление данных
        with connection.cursor() as cursor:
            delete_query = "DELETE FROM `users` WHERE id = 1;"
            cursor.execute(delete_query)
            connection.commit()

    # выборка данных 
        with connection.cursor() as cursor:
            select_all_rows = "SELECT * FROM `users`"
            cursor.execute(select_all_rows)
            rows = cursor.fetchall()
            for row in rows:
                print(row)
            print("#"*20)
            
        

    finally:
        connection.close()


except Exception as ex:
    print("Conection refused...")
    print(ex)


