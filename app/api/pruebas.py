import mysql.connector
from mysql.connector import Error
import json
try:
    connection = mysql.connector.connect(
        host='database-proyecto.cr5eoved3rep.us-east-1.rds.amazonaws.com',
        database='Stopify',
        user='admin',
        password='1Rksg0cv7A01A4tvIgpo')
    if connection.is_connected():
        db_Info = connection.get_server_info()
        print("Connected to MySQL Server version ", db_Info)
        cursor = connection.cursor()
        #cursor.execute("select database();")
        #record = cursor.fetchone()
        #print("You're connected to database: ", record)
        cursor.callproc('searchAlbum', ['Discovery', ])
        album_sqlresult = cursor.stored_results()
        album = []
        for album_search in album_sqlresult:
            for album_data in album_search:
                album.append(dict(
                    id = album_data[0],
                    nombre = album_data[1],
                    cancion = list()
                    )
                )
                cursor.callproc('albumCntTbl', [album_data[0], ])
                for canciones_album in cursor.stored_results():
                    for cancion_data in canciones_album:
                        album[-1]['cancion'].append(dict(
                            orden = cancion_data[0],
                            nombre = cancion_data[2],
                            min = cancion_data[3],
                            seg = cancion_data[4],
                            artist = cancion_data[5],
                            genero = cancion_data[6]
                            )
                        )
        print(json.dumps(album, indent=4))
except Error as e:
    print("Error while connecting to MySQL", e)
finally:
    if connection.is_connected():           
        cursor.close()
        connection.close()
        print("MySQL connection is closed")
