<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Residen Bedah</title>
    <link rel="icon" type="image/x-icon" href="/images/favicon.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    
    <link href="/assets/css/all.css" rel="stylesheet" type="text/css">
    @yield ('stylesheets')

  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-danger">
        <div class="container">
          <a class="navbar-brand" href="/"><img height="24" src="/images/logo_unhas_sm.png" alt="Logo Unhas"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/residen">Residen</a>
              </li>

            </ul>
            <ul class="navbar-nav ms-auto">
            @auth
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                 Hello, {{ auth()->user()->name }}
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="/dashboard"><i class="fa fa-tachometer-alt"></i> Dashboard</a></li>
                  <li><hr class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="/logout"><i class="fa fa-sign-out-alt"></i> Logout</a></li>
                </ul>
              </li>
              @else    
              <a href="/login"><button class="btn btn-primary" type="submit">Login</button></a>
              @endauth
            </ul>
          </div>
        </div>
      </nav>    

    @yield('container')
        

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  </body>
</html>