use Rack::Static, :urls => ["/images", "/js", "/css"], :root => "public"

use Rack::Static, :urls => [""], :root => 'public', :index => 'index.html'

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/home.html', File::RDONLY)
  ]
}