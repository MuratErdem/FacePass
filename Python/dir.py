import json

class configs:
    def __init__(self):
        self.str_cnxn_URL = ""
        self.str_cnxn_db = ""
        self.str_cnxn_pass = ""
        self.str_cnxn_user = ""
        self.str_views_dir = ""
        self.console_print_flag = ""
        self.is_gpu = ""
        self.str_views_copy_dir_dst = ""
        self.str_abs_path = ""
        self.tolerance = ""
        self.show_detection = ""
        with open('config.json') as json_file:
            data = json.load(json_file)
            for p in data['configs']:
                self.console_print_flag = str(p['console_print_flag'])
                self.str_cnxn_URL = str(p['str_cnxn_URL'])
                self.str_cnxn_user = str(p['str_cnxn_user'])
                self.str_cnxn_db = str(p['str_cnxn_db'])
                self.str_cnxn_pass = str(p['str_cnxn_pass'])
                self.str_views_dir = str(p['str_views_dir'])
