use Mix.Config

version =
  Path.join(__DIR__, "VERSION")
  |> File.read!
  |> String.strip

config :nerves_system_rpi, :nerves_env,
  type: :system,
  version: version,
  mirrors: [
    "http://udo.formrausch.com.s3.amazonaws.com/tom/nerves_system_rpi.fw"
  build_platform: Nerves.System.Platforms.BR,
  build_config: [
    defconfig: "nerves_defconfig",
    package_files: [
      "rootfs-additions"
    ]
  ]
