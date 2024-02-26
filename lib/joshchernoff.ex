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
        <img src="/assets/images/hero.jpg" alt=""
          class="absolute inset-0 -z-10 h-full w-full object-top object-cover opacity-[.15] h-screen" />
        <div class="mx-auto max-w-3xl pt-8 pt-64">
          <div class="text-center">
            <h1 class="text-3xl font-bold tracking-tight sm:text-4xl">
              A cultural wasteland for my narcissism
            </h1>
          </div>
        </div>
      </div>

      <!-- Blog section -->
      <div class="py-24 sm:py-42 mb-52">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
          <div class="mx-auto max-w-2xl text-center">
            <h2 class="text-3xl font-bold tracking-tight sm:text-4xl">Latest Rants</h2>
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

  def blog(assigns) do
    ~H"""
    <.layout pages_nav={@pages_nav} wrapper_class={@wrapper_class} title="Blog">

      <!-- Blog section -->
      <div class="py-24 sm:py-42 mb-52">
        <div class="mx-auto max-w-7xl px-6 lg:px-8">
          <div class="mx-auto max-w-2xl text-center">
            <h2 class="text-3xl font-bold tracking-tight sm:text-4xl">Latest Rants</h2>
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
        <link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon">
        <title><%= @title || "Home Page" %> | Josh Chernoff</title>
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
                  <span class="sr-only">Josh Chernoff</span>
                  <img class="w-20 rounded-full mr-2 inline" src="/assets/images/avatar.jpeg" alt="" /><span>Чернов</span>
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
                <details id="theme-change" class="dropdown details-reset details-overlay details-overlay-dark z-10 mr-4">
                  <summary class="btn btn-primary">
                    Theme
                  </summary>
                  <ul tabindex="0" class="dropdown-menu absolute right-0 w-56 p-2 mt-2 text-gray-800 dark:text-white animate-slide-in-down rounded-lg shadow-md">
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="light">
                        🌞️ Light Mode
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="dark">
                       🔥 Dark Mode
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="cupcake">
                        🍰 Cupcake
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="bumblebee">
                       🐝 Bumblebee
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="emerald">
                        ✨ Emerald
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="corporate">
                        🏢 Corporate
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="synthwave">
                        🎸 Synthwave
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="retro">
                        👴 Retro

                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="cyberpunk">
                       🤖 Cyberpunk
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="valentine">
                        💕 Valentine
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="halloween">
                        🎃 Halloween
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="garden">
                        🌻 Garden
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="forest">
                        🌲 Forest
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="aqua">
                        🐳 Aqua
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="lofi">
                        📺 LoFi
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="pastel">
                        🧁 Pastel
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="fantasy">
                        🧚‍♀️ Fantasy
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="wireframe">
                        📈 Wireframe
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="black">
                        🏠 Black
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="luxury">
                        💼 Luxury
                      </a>
                    </li>
                    <li>
                      <a href="#" class="theme-change__option flex items-center gap-2 hover:bg-gray-200 py-2 px-3 block whitespace-nowrap" data-theme="dracula">
                        🧛‍♂️ Dracula
                      </a>
                    </li>
                  </ul>
                </details>
                <%!-- <div class="dropdown hidden md:block">
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
                </div> --%>
                <label class="flex cursor-pointer gap-2 ml-4 mr-8">
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
              </div>
            </div>

            <div class={@wrapper_class}>
              <%= render_slot(@inner_block) %>
            </div>

            <footer class="footer footer-center p-10 bg-base-200 text-base-content rounded">
              <aside>
                <p>© 2024 Josh Chernoff </p>
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
                    <a href="#"
                      class="-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-white hover:bg-gray-800">Contact</a>
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
