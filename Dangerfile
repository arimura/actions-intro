android_lint.skip_gradle_task = true
android_lint.filtering = true

Dir.glob("**/lint-results.xml").each do |xml|
  puts xml
  android_lint.report_file = xml
  android_lint.lint(inline_mode: true)
end
