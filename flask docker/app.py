from flask import Flask, render_template_string 
app = Flask(__name__) 
HTML_TEMPLATE = """ 
<!DOCTYPE html> 
<html lang="en"> 
<head> 
<meta charset="UTF-8"> 
<title>Flask Docker App</title> 
<style> 
body { 
background: linear-gradient(to right, #00c6ff, #0072ff); 
color: white; 
font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
text-align: center; 
padding-top: 100px; 
}
h1 { 
font-size: 3em; 
margin-bottom: 0.2em; 
} 
p { 
font-size: 1.5em; 
} 
.card { 
background: rgba(255, 255, 255, 0.1); 
padding: 2em; 
border-radius: 20px; 
box-shadow: 0 0 20px rgba(0,0,0,0.3); 
width: 50%; 
margin: auto; 
} 
</style> 
</head> 
<body> 
<div class="card"> 
<h1>�� Welcome to Flask + Docker!</h1> 
<p>This is a vibrant web page running inside a Docker container.</p> <p>Change the code → Rebuild → Restart Docker to see updates!</p> </div> 
</body> 
</html> 
""" 
@app.route('/') 
def home(): 
return render_template_string(HTML_TEMPLATE) 
if __name__ == '__main__': 
app.run(host='0.0.0.0', port=5000) 
