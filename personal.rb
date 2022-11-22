"ruby.rubocop.executePath": "/home/marta/.rbenv/shims/",
"ruby.rubocop.configFilePath": "/home/marta/MT/Karol/learn_ruby/.rubocop.yml",
"ruby.rubocop.onSave": true,

"ruby.lint": {
  "ruby": {
    "unicode": true //Runs ruby -wc -Ku
  },
  "reek": true,
  "rubocop": {
    "lint": true,
    "rails": true
  },
  "fasterer": true,
  "debride": {
    "rails": true //Add some rails call conversions.
  },
  "ruby-lint": true
},
"ruby.locate": {
  "include": "**/*.rb",
  "exclude": "{**/@(test|spec|tmp|.*),**/@(test|spec|tmp|.*)/**,**/*_spec.rb}"
}