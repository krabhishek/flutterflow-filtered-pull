# FlutterFlow Filtered Pull 

A quick solution for ensuring that local changes made during development does not get overwritten when using the Flutterflow CLI. 

Control the files or directories you do not wish to overrwrite when you pull code with the [CLI tool](https://pub.dev/packages/flutterflow_cli).

# Usage

```
./flutterflow-filtered-pull --project-id <FlutterFlow Project ID> --flutterflow-token <FlutterFlow CLI Token> [--no-include-assets] [--branch <Branch Name>]
```

Download this project and put the `flutterflow-filtered-pull` file in the base of your local FlutterFlow project directory.

Before the first usage, you will need to make the file executable by running `chmod +x flutterflow-filtered-pull` in a Terminal. 

Add a `.flutterflowignore` file in the root of your project and treat it just like `.gitignore` file.

Any file or folder in `.flutterflowignore` will not be overwritten when you run `flutterflow-filtered-pull`.

By default, the `--include-assets` and `--no-parent-folder` flags of the CLI tool are included in this operation, so files will be fetched directly into the current directory.

## Dependencies

Requires [`rsync`](https://linuxize.com/post/how-to-use-rsync-for-local-and-remote-data-transfer-and-synchronization/) and [`flutterflow_cli`](https://pub.dev/packages/flutterflow_cli) to be installed on your machine and available in your path.

If you use `gitbash`, you can refer to `install-rsync.sh` to setup rsync on GitBash.
