
Workflow based on Webpack & CirruScript
----

Scaffold for personal projects.

### Bash Alias

```bash
# webpack-workflow
export wf=/Users/chen/repo/mvc-works/webpack-workflow/
alias workflow="
cp $wf/gulpfile.* .;
cp $wf/package.json .;
cp $wf/README.md .;
cp $wf/.gitignore .;
cp $wf/.npmignore .;
cp -r $wf/src .;
cp -r $wf/tasks .;
git init;
"
```

### Usage

* Development

```bash
npm i
gulp dev
```

For a server, also [try this][server]:

[server]: https://github.com/jlongster/backend-with-webpack/blob/master/gulpfile.js

```bash
gulp webpack-server
node build/bundle.js
```

* Production

```bash
gulp build
gulp rsync
```

### License

MIT
