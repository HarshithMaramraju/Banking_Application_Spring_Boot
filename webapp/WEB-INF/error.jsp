<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <!-- <link rel="stylesheet" href="./../css/register.css"> -->
    <title>Error</title>
</head>

<style>

    *{
        box-sizing: border-box;
        font-family: "Trebuchet MS", "Lucida Sans Unicode", "Lucida Grande",
        "Lucida Sans", Arial, sans-serif;
    }

    body{
        height: 100vh;
        background-image: url(https://wallpapercave.com/wp/wp6602995.jpg);
        background-size: cover;
        background-repeat: no-repeat;
    }

    .card{
        box-shadow: 0px 3px 6px rgb(0,14,53);
    }

    .card .card-text{
        font-size: 15px;
    }
</style>

<body class="d-flex align-items-center justify-content-center">
    <div class="card col-4 alert alert-danger border border-danger text-danger">
        <h3 class="card-title">
            <i class="fa fa-window-close"></i>Error
        </h3>
        <hr>
        <div class="card-body">
            <p class="card-text">
                <!-- Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nam eveniet beatae! Ullam fugiat labore perferendis! Tempora nostrum non delectus. -->
           		<div class="alert alert-danger text-center border border-danger">
					<b>${requestScope.error}</b>
				</div>
            </p>
            <hr>
            <a href="/home" class="btn btn-sm btn-danger">
                <i class="fa fa-arrow-alt-circle-left me-1"></i>Back
            </a>
        </div>
    </div>
</body>
</html>
