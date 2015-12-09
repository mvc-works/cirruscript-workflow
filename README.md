
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

```text
npm i
gulp dev
```

* Production

```text
gulp build
gulp rsync
```

### License

MIT
