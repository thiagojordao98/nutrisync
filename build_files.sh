echo "BUILD START"
python3.10  -m pip install -r requirements.txt
# python3.9 manage.py makemigrations
# python3.9 manage.py migrate
python3.10 manage.py collectstatic
echo "BUILD END"