param($networkPrefix, $dnsServer)

for ($ = 1; $i -le 254; $i++) {
  $ip = "$networkPrefix.$i"
  $ouput = Resolve-DnsName -DnsOnly "$ip" -Server $dnsServer -ErorrAction Ignore

  if ($output) {
    $nameHiost = $output.NameHost
    Write-Host "ip - $nameHost"
  }
}
