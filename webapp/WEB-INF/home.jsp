<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/index.css" />
    <title>index</title>
  </head>
  
  	<style>
		* {
  box-sizing: border-box;
}

/* main body styling */
body {
  height: 100vh;
  background-image: url(https://wallpapercave.com/wp/wp6602995.jpg);
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}
/* card: sample text  */
#sample-text-card {
  margin: 0px 100px;
  font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
    "Lucida Sans", Arial, sans-serif;
  color: white;
}

#sample-text-card h1 {
  font-size: 65px;
}

#sample-text-card p {
  font-size: 18px;
}

.button-wrapper a {
  padding: 12px;
  width: 200px;
  color: white;
  box-shadow: 0px 3px 6px rgb(0, 14, 53);
}

.register {
  margin-right: 7px;
  /* background: #ff4e00; */
  background-color: #ff4e00;
  border: 1px solid #8b2b00;
}

.register:hover {
  margin-right: 7px;
  /* background: #ff4e00; */
  background-color: #ff4e00;
  border: 1px solid #8b2b00;
  box-shadow: 0px 3px 6px rgb(0,14,53);
  color: black;
}


.login {
  background-color: #ffb114;
  border: 1px solid #543800;
}

.login:hover {
  background-color: #ffb114;
  border: 1px solid #543800;
  color: black;
  box-shadow: 0px 3px 6px rgb(0,14,53);
}
	</style>
  
  <body class="d-flex align-items-center">
    <!-- card: sample text -->
    <div class="card col-8 bg-transparent border-0" id="sample-text-card">
      <!-- card body -->
      <div class="card-body">
        <!-- card header -->
        <h1 class="mb-3">Easy-Banking</h1>
        <!-- card header end -->

        <!-- card title -->
        <h5 class="card-tittle">Online Banking Application</h5>
        <!-- card-title -->

        <!-- card text -->
        <p>
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi
          eius nobis maiores animi blanditiis! Beatae excepturi quidem,
          quibusdam temporibus neque soluta, deleniti quos perferendis ex
          doloribus consequatur, quo nostrum a.
        </p>
        <!-- end card text -->
      </div>
      <!-- end of card -->

      <!-- button wraper -->
      <div class="button-wrapper d-flex align-items-center">
        <a href="/registerPage" class="btn btn-md register" role="button">Register</a>
        <a href="/log" class="btn btn-md login" role="button">Login</a>
      </div>
      <!-- end button wrapper -->
    </div>
    <!-- end of card: sample text -->
  </body>
</html>
