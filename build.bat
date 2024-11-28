@echo off
set RUST_BACKTRACE=1
REM set PATH=%PATH%;"C:\Program Files\7-Zip"
set RUSTFLAGS=-Zlocation-detail=none -Zfmt-debug=none -Ctarget-feature=+crt-static -Cdebuginfo=none
cargo +nightly build -Z build-std=std,panic_abort -Z build-std-features="optimize_for_size,panic_immediate_abort" --release