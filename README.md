# phoenix-hello-daisyui

An example repo that shows how to add daisyUI to a Phoenix project with just a few easy steps.

List of instructions (see the [commit history](https://github.com/arcanemachine/phoenix-hello-daisyui/commits/master) for more info):

- Create project: `mix phx.new phoenix_hello_daisyui`
- Create npm project (run this from the `assets/` directory): `npm init -y`
- Add npm dependency `daisyui` (run this from the `assets/` directory): `npm i -D daisyui@latest`
- Add daisyUI to Tailwind plugins (in `assets/tailwind.config.js`): `require(daisyui)`
- daisyUI is now installed!
- Let's add an example daisyUI component to the home template (`lib/phoenix_hello_daisyui_web/controllers/page_html/home.html.heex`):
  - `<div class="btn btn-primary">Hello daisyUI!</div>`

## Instructions

To start your Phoenix server:

- Run `mix setup` to install and setup dependencies
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix
