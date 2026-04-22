import subprocess

def main():
    # This runs the file exactly as if you typed 'python script.py' in the terminal
    subprocess.run(["python", "scripts/script_01.py"], check=True)

if __name__ == "__main__":
    main()