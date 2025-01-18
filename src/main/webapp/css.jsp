<style>
@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@200;300;400;500;600;700&display=swap');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

body {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #4070f4 !important;
  padding: 0 10px;
}

ul {
  gap: 15%;
  white-space: nowrap;
}

nav {
  background-color: black !important;
}

.btn1, .btn2 {
  margin: 10px;
}

.btn1:hover, .btn2:hover {
  box-shadow: 0px 8px 16px rgba(255, 255, 255, 0.8);
  background-color: white;
}

.wrapper {
  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  text-align: center;
}

.wrapper h2 {
  font-size: 22px;
  font-weight: 600;
  color: #333;
  margin-bottom: 20px;
}

.wrapper h2:hover {
  color: #1bd95a;
}

.wrapper form {
  margin-top: 30px;
}

.wrapper .input-box {
  height: 52px;
  margin: 18px 0;
}

.wrapper .input-box input {
  width: 100%;
  height: 100%;
  padding: 0 15px;
  font-size: 17px;
  border: 1.5px solid #C7BEBE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}

.wrapper .input-box input:focus,
.wrapper .input-box input:valid {
  border-color: #4070f4;
}

.wrapper .input-box.button input {
  background: #4070f4;
  color: #fff;
  border: none;
  cursor: pointer;
  border-radius: 3px;
  padding: 12px 20px;
  font-size: 16px;
  transition: background 0.3s ease;
}

.wrapper .input-box.button input:hover {
  background: #0e4bf1 !important;
}

.wrapper a {
  color: #4070f4;
  text-decoration: none;
}

.wrapper a:hover {
  text-decoration: underline;
}
</style>
