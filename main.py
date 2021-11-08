import papermill
import sys


if __name__ == "__main__":
    
    s3_path = "s3://dm-demo-data/papermill/notebooks"
    input_notebook = sys.argv[2]
    output_notebook = sys.argv[4]
    papermill.execute_notebook(f"{s3_path}/{input_notebook}", f"{s3_path}/{output_notebook}",parameters=dict(value=101))