defmodule Joshchernoff do
  use Phoenix.Component
  import Phoenix.HTML

  def post(assigns) do
    ~H"""
    <.layout pages_nav={@pages_nav} wrapper_class={@wrapper_class} title={@post.title}>
      <%= raw @post.body %>
    </.layout>
    """
  end

  def page(assigns) do
    ~H"""
    <.layout pages_nav={@pages_nav} wrapper_class={@wrapper_class} title={@page.title}>
      <%= raw @page.body %>
    </.layout>
    """
  end

  def index(assigns) do
    ~H"""
    <.layout pages_nav={@pages_nav} wrapper_class={@wrapper_class} title="Home Page">
      <!-- Hero content -->
      <div class="relative isolate overflow-hidden h-screen">
        <img src="/images/hero.jpg" alt=""
          class="absolute inset-0 -z-10 h-full w-full object-top object-cover opacity-10" />
        <div class="mx-auto max-w-3xl pt-8 md:pt-20 lg:pt-64">
          <div class="m-2 md:m-10">
            <div role="alert" class="alert alert shadow-lg">
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" class="w-6 h-6">
                <path stroke-linecap="round" stroke-linejoin="round"
                  d="M20.25 14.15v4.25c0 1.094-.787 2.036-1.872 2.18-2.087.277-4.216.42-6.378.42s-4.291-.143-6.378-.42c-1.085-.144-1.872-1.086-1.872-2.18v-4.25m16.5 0a2.18 2.18 0 0 0 .75-1.661V8.706c0-1.081-.768-2.015-1.837-2.175a48.114 48.114 0 0 0-3.413-.387m4.5 8.006c-.194.165-.42.295-.673.38A23.978 23.978 0 0 1 12 15.75c-2.648 0-5.195-.429-7.577-1.22a2.016 2.016 0 0 1-.673-.38m0 0A2.18 2.18 0 0 1 3 12.489V8.706c0-1.081.768-2.015 1.837-2.175a48.111 48.111 0 0 1 3.413-.387m7.5 0V5.25A2.25 2.25 0 0 0 13.5 3h-3a2.25 2.25 0 0 0-2.25 2.25v.894m7.5 0a48.667 48.667 0 0 0-7.5 0M12 12.75h.008v.008H12v-.008Z" />
              </svg>
              <span> We are hiring! </span> <a href="/employment.html">Join our team <span aria-hidden="true">&rarr;</span></a>
            </div>
          </div>
          <div class="text-center">
            <h1 class="text-3xl font-bold tracking-tight sm:text-4xl">
              Autistic Community Activity Program
            </h1>
            <p class="text-base-content mt-6 text-lg text-bold leading-8">
              Education through recreation
            </p>
            <div class="mt-10 flex items-center justify-center gap-x-6">
              <a href="https://forms.gle/abQ6k6ECmyFmqiat5" class="btn btn-primary px-3.5 py-2.5 text-sm font-semibold shadow-sm">Signup for 2024 Joshchernoff Camp ⛺</a>
              <a href="/about/summer.html" class="btn btn-accent text-accent-content text-sm font-semibold leading-6">Learn more <span aria-hidden="true">→</span></a>
            </div>
          </div>
        </div>
      </div>

      <!-- Carrosel Slide-->
      <div class="mx-auto md:w-2/3 md:pt-20 ">
        <div class="carousel w-full bg-white">
          <div id="slide1" class="carousel-item relative w-full">
            <a href="/about/summer.html"><img src="/images/camper_2024.png" class="w-full" /></a>
            <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
              <a href="#slide3" class="md:flex hidden  btn btn-circle">❮</a>
              <a href="#slide2" class="md:flex hidden btn btn-circle">❯</a>
            </div>
          </div>
          <div id="slide2" class="carousel-item relative w-full">
            <a href="/employment.html"><img src="/images/employee_2024.png" class="w-full" /></a>
            <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
              <a href="#slide1" class="btn btn-circle">❮</a>
              <a href="#slide3" class="btn btn-circle">❯</a>
            </div>
          </div>
          <div id="slide3" class="carousel-item relative w-full">
            <a href="/support/fundraise.html"><img src="/images/flockafriend.jpg" class="w-full" /></a>
            <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
              <a href="#slide2" class="btn btn-circle">❮</a>
              <a href="#slide1" class="btn btn-circle">❯</a>
            </div>
          </div>
        </div>
      </div>

      <!-- Content section -->
      <div class="py-24 sm:py-32">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
          <div class="mx-auto max-w-2xl text-center">
            <h2 class="text-3xl font-bold tracking-tight sm:text-4xl">About Our Programs</h2>
          </div>
          <div class="mx-auto mt-16 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-20 lg:mx-0 lg:max-w-none lg:grid-cols-3">
            <article class="flex flex-col items-start">
              <div class="relative w-full">
                <img src="/images/home-summer.jpg" alt=""
                  class="w-full rounded-2xl object-cover">
                <div class="absolute inset-0 rounded-2xl"></div>
              </div>
              <div class="max-w-xl">
                <div class="group relative">
                  <h3 class="mt-3 text-lg font-semibold leading-6 group-hover:text-base-300">
                    <a href="#">
                      <span class="absolute inset-0"></span>
                      Summer Program
                    </a>
                  </h3>
                  <p class="mt-5 line-clamp-3 text-sm leading-6 ">The Autistic Community Activity Program (Joshchernoff) has
                    served people with autism spectrum disorder (ASD) since 1987. Our eight week summer camp program
                    provides structure in a vareity of onsite and community settings while teaching vital and much
                    neglected skills. </p>
                </div>
              </div>
            </article>
            <article class="flex flex-col items-start">
              <div class="relative w-full">
                <img src="/images/home-projects.jpg" alt=""
                  class="w-full rounded-2xl object-cover">
                <div class="absolute inset-0 rounded-2xl"></div>
              </div>
              <div class="max-w-xl">
                <div class="group relative">
                  <h3 class="mt-3 text-lg font-semibold leading-6">
                    <a href="#">
                      <span class="absolute inset-0"></span>
                      PROJECTS Program
                    </a>
                  </h3>
                  <p class="mt-5 line-clamp-3 text-sm leading-6">The year-round PROJECTS Program grew from Joshchernoff's
                    previous, summer-camp-only, Mentor Program. Collaborating with our partner organization, Community
                    Workshop, young adults research and explore activities and ideas they are most passionate about. With
                    one-to-one guidance, they develop long-term projects as well as participate in community activities,
                    all focused on continued development of creative, social, and professional skills.</p>
                </div>
              </div>
            </article>
            <article class="flex flex-col items-start">
              <div class="relative w-full">
                <img src="/images/home-history.png?r=2" alt=""
                  class="w-full rounded-2xl object-cover">
                <div class="absolute inset-0 rounded-2xl"></div>
              </div>
              <div class="max-w-xl">
                <div class="group relative">
                  <h3 class="mt-3 text-lg font-semibold leading-6">
                    <a href="#">
                      <span class="absolute inset-0"></span>
                      Joshchernoff History
                    </a>
                  </h3>
                  <p class="mt-5 line-clamp-3 text-sm leading-6">The Autistic Community Activity Program began in 1987 as
                    a grassroots effort by parents and supportive professionals seeking to fill an unmet need. They were
                    searching for a summer community activities program and day camp for their children with autism, but
                    found none.</p>
                </div>
              </div>
            </article>
          </div>
        </div>
      </div>

      <!-- Blog section -->
      <div class="py-24 sm:py-42 mb-52">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
          <div class="mx-auto max-w-2xl text-center">
            <h2 class="text-3xl font-bold tracking-tight sm:text-4xl">Latest News</h2>
          </div>
          <div class="mx-auto mt-16 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-20 lg:mx-0 lg:max-w-none lg:grid-cols-3">

            <%= for post <- @posts do %>
            <article class="flex flex-col items-start">
              <div class="max-w-xl">
                <div class="group relative">
                  <h3 class="mt-3 text-lg font-semibold leading-6 group-hover:text-base-300">
                    <a href={post.path}>
                      <%= post.title %>
                    </a>
                  </h3>
                  <div><span>Published:</span> <time datetime={ post.date }><%= post.date %></time></div>
                  <p class="mt-5 line-clamp-3 text-sm leading-6 "><%= post.description %></p>
                </div>
              </div>
            </article>
            <% end %>

          </div>
        </div>
      </div>

      <!-- testimonials -->
      <div class="mb-20">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
          <div class="mx-auto max-w-2xl text-center">
            <h2 class="text-3xl font-bold tracking-tight sm:text-4xl">Joshchernoff Stories</h2>
          </div>

          <div class="mx-auto">
            <figure class="mt-10">
            <blockquote class="text-center text-xl font-semibold leading-8 sm:text-2xl sm:leading-9">
              <p>"Overall, I believe Joshchernoff is the perfect place where kids on the spectrum are accepted for exactly who they are and where they are, while at the same time, being gently pushed past their comfort zones to experience the next steps towards the growth they need to become more self-sufficient."</p>
            </blockquote>
            </figure>

            <figure class="mt-10">
            <blockquote class="text-center text-xl font-semibold leading-8 sm:text-2xl sm:leading-9">
              <p>"[Our child] had a wonderful summer, thanks to your program. You kept him plenty busy, out of the house, away from his games and the computer and on his feet, which he so desperately needs."</p>
            </blockquote>
            </figure>

            <figure class="mt-10">
            <blockquote class="text-center text-xl font-semibold leading-8 sm:text-2xl sm:leading-9">
              <p>"We would especially like to compliment your staff on the excellent support they provide for their campers with autism. The daily visual schedules, their ability to adapt and work with our daughter's communication system, and the staff's overall enthusiasm for the campers and each other helped our daughter participate to her fullest potential. She is now visibly excited whenever she sees a Tri-Met bus because of all the fun places she got to go with your program this summer."</p>
            </blockquote>
            </figure>
          </div>
        </div>
      </div>


      <!-- temp button for drawer -->
      <%!-- <label for="mobile-drawer" class="btn btn-primary drawer-button">Open drawer</label> --%>
    </.layout>
    """
  end

  def blog(assigns) do
    ~H"""
    <.layout pages_nav={@pages_nav} wrapper_class={@wrapper_class} title="Blog">

      <!-- Blog section -->
      <div class="py-24 sm:py-42 mb-52">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
          <div class="mx-auto max-w-2xl text-center">
            <h2 class="text-3xl font-bold tracking-tight sm:text-4xl">Latest News</h2>
          </div>
          <div class="mx-auto mt-16 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-20 lg:mx-0 lg:max-w-none lg:grid-cols-3">

            <%= for post <- @posts do %>
            <article class="flex flex-col items-start">
              <div class="max-w-xl">
                <div class="group relative">
                  <h3 class="mt-3 text-lg font-semibold leading-6 group-hover:text-base-300">
                    <a href={post.path}>
                      <%= post.title %>
                    </a>
                  </h3>
                  <div><span>Published:</span> <time datetime={ post.date }><%= post.date %></time></div>
                  <p class="mt-5 line-clamp-3 text-sm leading-6 "><%= post.description %></p>
                </div>
              </div>
            </article>
            <% end %>

          </div>
        </div>
      </div>

      <!-- temp button for drawer -->
      <%!-- <label for="mobile-drawer" class="btn btn-primary drawer-button">Open drawer</label> --%>
    </.layout>
    """
  end

  def layout(assigns) do
    ~H"""
    <!doctype html>
    <html data-theme="light">
      <head>

      <meta charset="utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="shortcut icon" href="/images/JoshchernoffLogo.png" type="image/x-icon">
        <title><%= @title || "Home Page" %> | Joshchernoff</title>
        <link rel="stylesheet" href="/assets/app.css" />
        <script type="text/javascript" src="/assets/app.js"></script>
      </head>

      <body>
        <div class="drawer">
          <input id="mobile-drawer" type="checkbox" class="drawer-toggle" />
          <div class="drawer-content">
            <!-- Main Nav -->
            <div class="navbar bg-base-100 z-100">
              <div class="navbar-start">
                <div class="dropdown">
                  <div tabindex="0" role="button" class="btn btn-ghost lg:hidden">
                    <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24"
                      stroke="currentColor">
                      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h8m-8 6h16" />
                    </svg>
                  </div>
                  <ul tabindex="0" class="menu menu-sm dropdown-content mt-3 z-[1] p-2 shadow bg-base-100 rounded-box w-52">
                   <%= for sec <- @pages_nav do %>
                      <%= raw(render_sub_or_link_mobile(sec)) %>
                   <% end %>
                  </ul>
                </div>
                <a href="/" class="-m-1.5 p-1.5">
                  <span class="sr-only">Autistic Community Activity Program</span>
                  <img class="hidden md:inline w-[350px] mr-2" src="/images/JoshchernoffHeadImg.jpg" alt="" />
                  <img class="inline md:hidden h-8 w-auto mr-2" src="/images/JoshchernoffLogo.png" alt="" />
                </a>
              </div>

              <div class="navbar-center hidden lg:flex">
                <ul class="menu menu-horizontal px-1 z-10">
                  <%= for sec <- @pages_nav do %>
                    <%= raw(render_sub_or_link(sec)) %>
                  <% end %>
                </ul>
              </div>
              <div class="navbar-end">
                <div class="dropdown hidden md:block">
                  <div tabindex="0" role="button" class="btn m-1">
                    Theme
                    <svg width="12px" height="12px" class="h-2 w-2 fill-current opacity-60 inline-block"
                      xmlns="http://www.w3.org/2000/svg" viewBox="0 0 2048 2048">
                      <path d="M1799 349l242 241-1017 1017L7 590l242-241 775 775 775-775z"></path>
                    </svg>
                  </div>
                  <ul tabindex="0" class="dropdown-content z-[1] p-2 shadow-2xl bg-base-300 rounded-box w-52">
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Light"
                        value="light" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Dark" value="dark" />
                    </li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Cupcake"
                        value="cupcake" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Bumblebee"
                        value="bumblebee" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Emerald"
                        value="emerald" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Corporate"
                        value="corporate" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Synthwave"
                        value="synthwave" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Retro"
                        value="retro" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Cyberpunk"
                        value="cyberpunk" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Valentine"
                        value="valentine" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Halloween"
                        value="halloween" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Garden"
                        value="garden" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Forest"
                        value="forest" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Aqua" value="aqua" />
                    </li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="LoFi" value="lofi" />
                    </li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Pastel"
                        value="pastel" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Fantasy"
                        value="fantasy" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="WireFrame"
                        value="wireframe" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Black"
                        value="black" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Luxury"
                        value="luxury" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Dracula"
                        value="dracula" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="CMYK" value="cmyk" />
                    </li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Autumn"
                        value="autumn" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="Business"
                        value="business" /></li>
                    <li><input type="radio" name="theme-dropdown"
                        class="theme-controller btn btn-sm btn-block btn-ghost justify-start" aria-label="aqua" value="light" />
                    </li>
                  </ul>
                </div>
                <label class="flex cursor-pointer gap-2 mr-8">
                  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
                    stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <circle cx="12" cy="12" r="5" />
                    <path
                      d="M12 1v2M12 21v2M4.2 4.2l1.4 1.4M18.4 18.4l1.4 1.4M1 12h2M21 12h2M4.2 19.8l1.4-1.4M18.4 5.6l1.4-1.4" />
                  </svg>
                  <input type="checkbox" value="dark" class="toggle theme-controller" />
                  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
                    stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path>
                  </svg>
                </label>
                <a class="btn btn-outline btn-primary">Donate 🙏</a>
              </div>
            </div>
            <div role="alert" class="alert alert-error">
              <svg xmlns="http://www.w3.org/2000/svg" class="stroke-current shrink-0 h-6 w-6" fill="none" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" /></svg>
              <span>Not the official site. Please go to <a href="https://www.Joshchernoffpdx.org/">https://www.Joshchernoffpdx.org/</a> if you are looking for the official site.</span>
            </div>

            <div class={@wrapper_class}>
              <%= render_slot(@inner_block) %>
            </div>

            <footer class="footer footer-center p-10 bg-base-200 text-base-content rounded">

              <nav class="hidden md:grid grid-flow-col gap-4">
                <a href="contact.html" class="link link-hover">Contact Us</a>
                <a class="link link-hover">(503) 649-2066</a>
                <a class="link link-hover">programinfo@JoshchernoffPDX.org</a>
                <a class="link link-hover">P.O. Box 4606, Portland OR 97208</a>
              </nav>

              <div class="block md:hidden">
                <a href="contact.html" class="block link link-hover">Contact Us</a>
                <a class="block link link-hover">(503) 649-2066</a>
                <a class="block link link-hover">programinfo@JoshchernoffPDX.org</a>
                <a class="block link link-hover">P.O. Box 4606, Portland OR 97208</a>
              </div>
              <nav>
                <div class="grid grid-flow-col gap-4">
                  <a href="https://twitter.com/Joshchernoffportland"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="fill-current"><path d="M24 4.557c-.883.392-1.832.656-2.828.775 1.017-.609 1.798-1.574 2.165-2.724-.951.564-2.005.974-3.127 1.195-.897-.957-2.178-1.555-3.594-1.555-3.179 0-5.515 2.966-4.797 6.045-4.091-.205-7.719-2.165-10.148-5.144-1.29 2.213-.669 5.108 1.523 6.574-.806-.026-1.566-.247-2.229-.616-.054 2.281 1.581 4.415 3.949 4.89-.693.188-1.452.232-2.224.084.626 1.956 2.444 3.379 4.6 3.419-2.07 1.623-4.678 2.348-7.29 2.04 2.179 1.397 4.768 2.212 7.548 2.212 9.142 0 14.307-7.721 13.995-14.646.962-.695 1.797-1.562 2.457-2.549z"></path></svg></a>
                  <a href="https://www.facebook.com/Joshchernoffpdx"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" class="fill-current"><path d="M9 8h-3v4h3v12h5v-12h3.642l.358-4h-4v-1.667c0-.955.192-1.333 1.115-1.333h2.885v-5h-3.808c-3.596 0-5.192 1.583-5.192 4.615v3.385z"></path></svg></a>
                  <a href="https://www.instagram.com/Joshchernoffpdx/"><svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"><path fill-rule="evenodd" d="M12.315 2c2.43 0 2.784.013 3.808.06 1.064.049 1.791.218 2.427.465a4.902 4.902 0 011.772 1.153 4.902 4.902 0 011.153 1.772c.247.636.416 1.363.465 2.427.048 1.067.06 1.407.06 4.123v.08c0 2.643-.012 2.987-.06 4.043-.049 1.064-.218 1.791-.465 2.427a4.902 4.902 0 01-1.153 1.772 4.902 4.902 0 01-1.772 1.153c-.636.247-1.363.416-2.427.465-1.067.048-1.407.06-4.123.06h-.08c-2.643 0-2.987-.012-4.043-.06-1.064-.049-1.791-.218-2.427-.465a4.902 4.902 0 01-1.772-1.153 4.902 4.902 0 01-1.153-1.772c-.247-.636-.416-1.363-.465-2.427-.047-1.024-.06-1.379-.06-3.808v-.63c0-2.43.013-2.784.06-3.808.049-1.064.218-1.791.465-2.427a4.902 4.902 0 011.153-1.772A4.902 4.902 0 015.45 2.525c.636-.247 1.363-.416 2.427-.465C8.901 2.013 9.256 2 11.685 2h.63zm-.081 1.802h-.468c-2.456 0-2.784.011-3.807.058-.975.045-1.504.207-1.857.344-.467.182-.8.398-1.15.748-.35.35-.566.683-.748 1.15-.137.353-.3.882-.344 1.857-.047 1.023-.058 1.351-.058 3.807v.468c0 2.456.011 2.784.058 3.807.045.975.207 1.504.344 1.857.182.466.399.8.748 1.15.35.35.683.566 1.15.748.353.137.882.3 1.857.344 1.054.048 1.37.058 4.041.058h.08c2.597 0 2.917-.01 3.96-.058.976-.045 1.505-.207 1.858-.344.466-.182.8-.398 1.15-.748.35-.35.566-.683.748-1.15.137-.353.3-.882.344-1.857.048-1.055.058-1.37.058-4.041v-.08c0-2.597-.01-2.917-.058-3.96-.045-.976-.207-1.505-.344-1.858a3.097 3.097 0 00-.748-1.15 3.098 3.098 0 00-1.15-.748c-.353-.137-.882-.3-1.857-.344-1.023-.047-1.351-.058-3.807-.058zM12 6.865a5.135 5.135 0 110 10.27 5.135 5.135 0 010-10.27zm0 1.802a3.333 3.333 0 100 6.666 3.333 3.333 0 000-6.666zm5.338-3.205a1.2 1.2 0 110 2.4 1.2 1.2 0 010-2.4z" clip-rule="evenodd" /></svg></a>
                </div>
              </nav>
              <aside>
                <p>© 2024 Autistic Community Activity Program </p>
              </aside>
            </footer>
          </div>
          <!-- Hidden drawer slider out section -->
          <div class="drawer-side z-50" role="dialog" aria-modal="true">
            <label for="mobile-drawer" aria-label="close sidebar" class="drawer-overlay"></label>
            <!-- Background backdrop, show/hide based on slide-over state. -->
            <div class="h-screen z-50 w-full overflow-y-auto bg-gray-900 px-6 py-6 sm:max-w-sm sm:ring-1 sm:ring-white/10">
              <div class="flex items-center justify-between">
                <a href="#" class="-m-1.5 p-1.5">
                  <span class="sr-only">Joshchernoff</span>
                  <img class="h-8 w-auto" src="/images" alt="" />
                </a>
                <label class="-m-2.5 rounded-md p-2.5 text-gray-700" for="mobile-drawer" aria-label="close sidebar">
                  <span class="sr-only">Close menu</span>
                  <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
                    aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                  </svg>
                </label>
              </div>
              <div class="mt-6 flow-root">
                <div class="-my-6 divide-y divide-gray-500/25">
                  <div class="space-y-2 py-6">
                    <div class="dropdown dropdown-hover block">
                      <div tabindex="0" role="button"
                        class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-white hover:bg-gray-800">
                        About
                      </div>
                      <div tabindex="0" class="dropdown-content z-[1]">
                        <ul class="menu mt-4 shadow bg-base-100 rounded-box w-52">
                          <li><a>Summer Program</a></li>
                          <li><a>PROJECTS Program</a></li>
                          <li><a>Our History</a></li>
                        </ul>
                      </div>
                    </div>
                    <div class="dropdown dropdown-hover block">
                      <div tabindex="0" role="button"
                        class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-white hover:bg-gray-800">
                        Staff
                      </div>
                      <div tabindex="0" class="dropdown-content z-[1]">
                        <ul class="menu mt-4 shadow bg-base-100 rounded-box w-52">
                          <li><a>2024 Staff Directory</a></li>
                          <li><a>Board Members</a></li>
                          <li><a>Info for Current Staff</a></li>
                        </ul>
                      </div>
                    </div>
                    <a href="#"
                      class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-white hover:bg-gray-800">For
                      Parents</a>
                    <a href="#"
                      class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-white hover:bg-gray-800">Employment</a>
                    <a href="#"
                      class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-white hover:bg-gray-800">Contact</a>
                    <div class="dropdown dropdown-hover">
                      <div tabindex="0" role="button"
                        class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-white hover:bg-gray-800">
                        Support Joshchernoff
                      </div>
                      <div tabindex="0" class="dropdown-content z-[1]">
                        <ul class="menu mt-4 shadow bg-base-100 rounded-box w-52">
                          <li><a>Donations</a></li>
                          <li><a>fundraise</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </body>
    </html>
    """
  end

  @output_dir "./output"
  File.mkdir_p!(@output_dir)

  def build() do
    posts = Joshchernoff.Blog.all_posts()
    pages = Joshchernoff.Pages.all_pages()
    pages_nav = Joshchernoff.Pages.full_nav()

    render_file(
      "index.html",
      index(%{posts: posts, pages: pages, pages_nav: pages_nav, wrapper_class: nil})
    )

    render_file(
      "blog.html",
      blog(%{posts: posts, pages: pages, pages_nav: pages_nav, wrapper_class: nil})
    )

    for post <- posts do
      dir = Path.dirname(post.path)

      if dir != "." do
        File.mkdir_p!(Path.join([@output_dir, dir]))
      end

      render_file(
        post.path,
        post(%{
          post: post,
          pages_nav: pages_nav,
          wrapper_class: Map.get(post, :wrapper_class, nil)
        })
      )
    end

    for page <- pages do
      dir = Path.dirname(page.path)

      if dir != "." do
        File.mkdir_p!(Path.join([@output_dir, dir]))
      end

      render_file(
        page.path,
        page(%{
          page: page,
          pages_nav: pages_nav,
          wrapper_class: Map.get(page, :wrapper_class, nil)
        })
      )
    end

    :ok
  end

  @spec render_file(
          binary()
          | maybe_improper_list(
              binary() | maybe_improper_list(any(), binary() | []) | char(),
              binary() | []
            ),
          any()
        ) :: :ok
  def render_file(path, rendered) do
    safe = Phoenix.HTML.Safe.to_iodata(rendered)
    output = Path.join([@output_dir, path])
    File.write!(output, safe)
  end

  defp render_sub_or_link(%{"url" => url, "label" => label}) do
    "<li><a href='#{url}'>#{label}</a></li>"
  end

  defp render_sub_or_link(%{"children" => children, "label" => label}) do
    """
    <li class="dropdown dropdown-hover mt-[2px]">
      <div tabindex="0" role="button" class="btn btn-ghost rounded-btn btn-sm">#{label}</div>
      <ul tabindex="0" class="dropdown-content bg-base-100 p-3 pt-4">
        #{for %{"url" => _url} = link <- children do
      render_sub_or_link(link)
    end}
      </ul>
    </li>
    """
  end

  defp render_sub_or_link_mobile(%{"url" => url, "label" => label}) do
    "<li><a href='#{url}'>#{label}</a></li>"
  end

  defp render_sub_or_link_mobile(%{"children" => children, "label" => label}) do
    """
    <li>
      <a>#{label}</a>
      <ul class="p-2">
        #{for %{"url" => _url} = link <- children do
      render_sub_or_link_mobile(link)
    end}
      </ul>
    </li>
    """
  end
end
