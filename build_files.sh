echo "BUILD START"
python3 pip install -r requirements.txt
python3 manage.py collectstatic --noinput
echo "BUILD END"
