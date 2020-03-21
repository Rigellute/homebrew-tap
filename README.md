# Store homebrew formulae here.

## spotify-tui

On your machine

```bash
cd spotify-tui
```

Generate a release build

```bash
cargo build --release
```

Now create a tar for that new release binary

```bash
cd target/release
tar -czf spotify-tui-v0.3.0.tar.gz spt
```

Ensure that version number matches exactly the Github release you will create AND the version number in this repo `Formula/spotify-tui.rb` - in this case `v0.3.0`.

Upload that tar to a new Github release.

Now generate a `sha` from the `tar` and add the `sha` to `Formula/spotify-tui.rb`.

```bash
shasum -a 256 spotify-tui-v0.3.0.tar.gz
```

You will now finally be able to install a new version using

```bash
brew install Rigellute/tap/spotify-tui
```

### Automated

The binaries and sha256s are generated from Github Actions. Run the following script to fetch the latest sha256s and update `Formula/spotify-tui.rb`.

```
sh scripts/spotify-tui.sh
```
