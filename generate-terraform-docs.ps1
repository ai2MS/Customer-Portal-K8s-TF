$root = "$PWD\src"

$modules = Get-ChildItem -Path $root -Directory -Recurse |
		Where-Object {
			$_.FullName -notmatch '\.run|\.idea|\.terraform|examples'
		} |
		ForEach-Object {
			$_.FullName.Substring($root.Path.Length + 1)
		}

foreach ($module in $modules)
{
	$terraform = "$module\main.tf"

	if (Test-Path $terraform -PathType Leaf)
	{
		Write-Host "** ** ** ** ** ** ** ** ** **"
		Write-Host "generating terraform-docs for: $module"
		terraform-docs ".\$module" --output-file ../README.md
		Write-Host ""
	}
}