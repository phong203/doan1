<?php
use Illuminate\Support\Facades\Hash;
Route::get('password', function() {
    return Hash::make("123456");
});

Route::group(['prefix' => '/'], function () {
    Route::get('/', 'Frontend\HomeController@index');
    Route::get('/category/{id}', 'Frontend\HomeController@category');
    Route::get('/product/{id}', 'Frontend\HomeController@product');
    Route::get('/contact','Frontend\HomeController@contact');
    Route::post('/contact','Frontend\FeedbackController@create');

    Route::group(['prefix' => '/', 'middleware' => ['GuestAuthencate']], function () {
        Route::get('/login', 'Frontend\LoginController@index');
        Route::post('/login', 'Frontend\LoginController@login');
        Route::get('/register', 'Frontend\RegisterController@index');
        Route::post('/register', 'Frontend\RegisterController@register');
        Route::get('/activate/{userid}/{token}/{code}', 'Frontend\RegisterController@activate');
    });
    Route::get('/checkout', 'Frontend\HomeController@checkout');
    Route::get('/logout', 'Frontend\LoginController@logout');
});

Route::group(['prefix' => 'admin'], function () {
    Route::get('/login', 'Backend\BackendController@loginIndex');
    Route::post('/login', 'Backend\BackendController@login');
    Route::get('/logout', 'Backend\BackendController@logout');
    
    Route::group(['prefix' => '', 'middleware' => ['AdminAuthencate']], function () {
        Route::get('/', 'Backend\BackendController@index');
        Route::group(['prefix' => 'product'], function () {
            Route::get('/', 'Backend\ProductController@index');
            Route::get('/edit/{id}', 'Backend\ProductController@edit');
            Route::post('/edit/{id}', 'Backend\ProductController@update');
            Route::get('/delete/{id}', 'Backend\ProductController@destroy');

            Route::get('/add', 'Backend\ProductController@addIndex');
            Route::post('/add', 'Backend\ProductController@add');
        });
        Route::get('/feedback','Backend\FeedbackController@index');
        Route::group(['prefix' => 'category'], function () {
            Route::get('/', 'Backend\CategoryController@index');
            Route::get('/edit/{id}', 'Backend\CategoryController@edit');
            Route::post('/edit/{id}', 'Backend\CategoryController@update');
            Route::get('/delete/{id}', 'Backend\CategoryController@destroy');

            Route::get('/add', 'Backend\CategoryController@addIndex');
            Route::post('/add', 'Backend\CategoryController@add');
        });

        Route::group(['prefix' => 'kind'], function () {
            Route::get('/delete/{id}', 'Backend\CategoryController@destroyKind');
        });
        
        
    });
});