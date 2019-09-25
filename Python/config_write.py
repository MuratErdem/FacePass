import json

data = {}
data['configs'] = []
data['configs'].append({
    
    'str_cnxn_URL': 'localhost',
    'str_cnxn_user': 'root',
    'str_cnxn_pass': 'jsrroot',
    'str_cnxn_db': 'face_pass',
    'str_views_dir': 'path to view dir '
})

with open('config.json', 'w') as outfile:
    json.dump(data, outfile)


