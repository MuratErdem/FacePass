import json

data = {}
data['configs'] = []
data['configs'].append({
    'console_print_flag': '1',
    'str_cnxn_URL': 'localhost',
    'str_cnxn_user': 'root',
    'str_cnxn_pass': 'jsrroot',
    'str_cnxn_db': 'face_pass',
    'str_views_dir': 'C:\Bitnami//wampstack-7.1.25-0//apache2//htdocs//face_pass'
})

with open('config.json', 'w') as outfile:
    json.dump(data, outfile)

