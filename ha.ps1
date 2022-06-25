function ha {
		[CmdletBinding()]
		param(
		[Parameter(ValueFromRemainingArguments=$true)][String[]]$Parameter
    )
hass-cli --token eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJhZDFkMTc3YjJiMDI0ZDNkYTdhNTk5N2NkZmZlNmZlZSIsImlhdCI6MTY1NjE3MjM5MSwiZXhwIjoxOTcxNTMyMzkxfQ.2iDGwYJvsEI_AGqQ4gaAYl2EM0TYMZ0aQ_NyoJzQdWc -s http://10.0.0.10:8123 $Parameter
}

