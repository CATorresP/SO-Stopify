from flask import Flask, request,jsonify, render_template
import mysql.connector
from mysql.connector import Error
import json

app = Flask(__name__)

def db_connection():
	connection = None
	try:
		connection = mysql.connector.connect(
			host='database-proyecto.cr5eoved3rep.us-east-1.rds.amazonaws.com',
			database='Stopify',
			user='admin',
			password='1Rksg0cv7A01A4tvIgpo')
	except Error as e:
		print("Error while connecting to MySQL", e)

	if connection.is_connected():
		return connection
	return None

@app.route('/album/<string:nombre>', methods=["GET"])
def student(nombre):
	conn = db_connection()
	cursor = conn.cursor()
	album = None
	if request.method == "GET":
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
		if album is not None:
			return jsonify(album), 200
		else:
			return "Something went wrong", 404

if __name__ == '__main__':
   app.run(host='0.0.0.0', port=8000, debug=False)
