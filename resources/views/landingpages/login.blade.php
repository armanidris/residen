@extends('landingpages/home')

@section ('stylesheets')
<link href="/assets/css/signin.css" rel="stylesheet">
@endsection

@section('container')

<main class="form-signin w-100 m-auto">
    <form action="/login" method="post" enctype="multipart/form-data">
        @csrf
        <div class="col-sm-12" style="text-align: center">
            <img class="mb-4" src="/images/logo_unhas.png" alt="" width="72" >
        </div>
            
        @if(session()->has('LoginErr'))
        <div class="alert alert-danger" role="alert">
            {{ session('LoginErr') }}
        </div>
        @endif

      <h1 class="h3 mb-3 fw-normal">Please sign in</h1>
  
      <div class="form-floating">
        <input type="email" name="email" class="form-control @error('email') is-invalid @enderror " id="email" placeholder="name@example.com" autofocus required value="{{ old('email') }}">
        <label for="email">Email address</label>
        @error('email')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
        @enderror
      </div>
      <div class="form-floating">
        <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
        <label for="password">Password</label>
      </div>
  
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
      <button class="w-100 btn btn-lg btn-primary" type="submit"><i class="fa fa-sign-in-alt"></i> Login</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2017–2022</p>
    </form>
</main>  
    
@endsection