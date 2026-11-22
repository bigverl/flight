# Flight

Flight is a small spacecraft telemetry and command handler written from scratch in C++17. It
accepts CCSDS Space Packet commands and reports its status in a housekeeping telemetry packet.

The toolchain lives in a dev container defined in `.devcontainer/`. Open the repository in VS Code
and run `Dev Containers: Reopen in Container`, then build and test with
`cmake --workflow --preset host-debug`.
