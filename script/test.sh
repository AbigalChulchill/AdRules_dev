#!/bin/sh
cd script
#rm *.txt
easylist=(
  "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt"
  "https://easylist.to/easylist/fanboy-annoyance.txt"
  "https://easylist-downloads.adblockplus.org/antiadblockfilters.txt"
  "https://easylist-downloads.adblockplus.org/easylistchina+easylistchina_compliance+easylist.txt"
  "https://raw.githubusercontent.com/banbendalao/ADgk/master/ADgk.txt"
  "https://raw.githubusercontent.com/banbendalao/ADgk/master/kill-baidu-ad.txt"
  "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/LegitimateURLShortener.txt"
  "https://raw.githubusercontent.com/xinggsf/Adblock-Plus-Rule/master/mv.txt"
  "https://raw.githubusercontent.com/Noyllopa/NoAppDownload/master/NoAppDownload.txt"
  "https://raw.githubusercontent.com/damengzhu/banad/main/jiekouAD.txt"
  "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/ClearURLs%20for%20uBo/clear_urls_uboified.txt"
  "https://raw.githubusercontent.com/o0HalfLife0o/list/master/ad-pc.txt"
  "https://raw.githubusercontent.com/o0HalfLife0o/list/master/ad-edentw.txt"
)

adguard=(
  "https://filters.adtidy.org/android/filters/2_optimized.txt"
  "https://filters.adtidy.org/android/filters/11_optimized.txt"
  "https://filters.adtidy.org/android/filters/3_optimized.txt"
  "https://filters.adtidy.org/android/filters/224_optimized.txt"
  "https://filters.adtidy.org/android/filters/14_optimized.txt"
  "https://filters.adtidy.org/android/filters/5_optimized.txt"
  "https://filters.adtidy.org/android/filters/4_optimized.txt"
)

allow=(
  "https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt"
  "https://raw.githubusercontent.com/banbendalao/ADgk/master/ADgk.txt"
  "https://raw.githubusercontent.com/o0HalfLife0o/list/master/ad-pc.txt"
  "https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/ChineseFilter/sections/whitelist.txt"
  "https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/GermanFilter/sections/whitelist.txt"
  "https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/TurkishFilter/sections/whitelist.txt"
  "https://raw.githubusercontent.com/AdguardTeam/AdguardFilters/master/SpywareFilter/sections/whitelist.txt"
)

dns=(
  "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt"
  "https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjx-annoyance.txt"
  "https://easylist.to/easylist/fanboy-annoyance.txt"
  "https://raw.githubusercontent.com/reek/anti-adblock-killer/master/anti-adblock-killer-filters.txt"
  "https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjx-annoyance.txt"
  "https://raw.githubusercontent.com/cjx82630/cjxlist/master/cjxlist.txt"
  "https://easylist-downloads.adblockplus.org/antiadblockfilters.txt"
  "https://easylist-downloads.adblockplus.org/easyprivacy.txt"
  "https://easylist-downloads.adblockplus.org/easylistchina+easylistchina_compliance+easylist.txt"
  "https://raw.githubusercontent.com/banbendalao/ADgk/master/ADgk.txt"
  "https://raw.githubusercontent.com/banbendalao/ADgk/master/kill-baidu-ad.txt"
  "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/LegitimateURLShortener.txt"
  "https://raw.githubusercontent.com/xinggsf/Adblock-Plus-Rule/master/mv.txt"
  "https://raw.githubusercontent.com/Noyllopa/NoAppDownload/master/NoAppDownload.txt"
  "https://raw.githubusercontent.com/damengzhu/banad/main/jiekouAD.txt"
  "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/ClearURLs%20for%20uBo/clear_urls_uboified.txt"
  "https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt"
  "https://raw.githubusercontent.com/o0HalfLife0o/list/master/ad-pc.txt"
  "https://adaway.org/hosts.txt"
)

hosts=(
  "https://adaway.org/hosts.txt"
)

ad_damain=(
  "https://raw.githubusercontent.com/damengzhu/banad/main/jiekouAD.txt"
)

allow_damain=(
  "https://raw.githubusercontent.com/privacy-protection-tools/dead-horse/master/anti-ad-white-list.txt"
)

for i in "${!easylist[@]}"
do
  echo "开始下载 easylist${i}..."
  curl --parallel --parallel-immediate -k -L -C - -o "easylist${i}.txt" --connect-timeout 60 -s "${easylist[$i]}"
  # shellcheck disable=SC2181
done

for i in "${!adguard[@]}"
do
  echo "开始下载 easylist${i}..."
  curl --parallel --parallel-immediate -k -L -C - -o "adguard${i}.txt" --connect-timeout 60 -s "${adguard[$i]}"
  # shellcheck disable=SC2181
done

for i in "${!allow[@]}"
do
  echo "开始下载 allow${i}..."
  curl --parallel --parallel-immediate -k -L -C - -o "allow${i}.txt" --connect-timeout 60 -s "${allow[$i]}"
  # shellcheck disable=SC2181
done

for i in "${!dns[@]}"
do
  echo "开始下载 dns${i}..."
  curl --parallel --parallel-immediate -k -L -C - -o "dns${i}.txt" --connect-timeout 60 -s "${dns[$i]}"
  # shellcheck disable=SC2181
done

for i in "${!hosts[@]}"
do
  echo "开始下载 dns${i}..."
  curl --parallel --parallel-immediate -k -L -C - -o "hosts${i}.txt" --connect-timeout 60 -s "${hosts[$i]}"
  # shellcheck disable=SC2181
done

for i in "${!ad_damain[@]}"
do
  echo "开始下载 dns${i}..."
  curl --parallel --parallel-immediate -k -L -C - -o "ad-damain${i}.txt" --connect-timeout 60 -s "${ad_damain[$i]}"
  # shellcheck disable=SC2181
done

for i in "${!allow_damain[@]}"
do
  echo "开始下载 dns${i}..."
  curl --parallel --parallel-immediate -k -L -C - -o "allow-damain${i}.txt" --connect-timeout 60 -s "${allow_damain[$i]}"
  # shellcheck disable=SC2181
done

# Pre Fix rules
cat hosts*.txt| grep -Ev '#|\$|@|!|/|\\|\*'| sed 's/127.0.0.1 //' | sed 's/0.0.0.0 //' |sed "s/^/||&/g" |sed "s/$/&^/g"| sed '/^$/d'| grep -v '^#' | grep -v 'local' | sort -n | uniq | awk '!a[$0]++' > abp-hosts.txt 
cat allow-damain*.txt | sed "s/^/@@||&/g" | sed "s/$/&^/g" >> pre-allow.txt
# Start Merge and Duplicate Removal
cat easylist*.txt | grep -v '^!' | grep -v '^！' | grep -v '^# ' | grep -v '^# ' | grep -v '^\[' | grep -v '^\【' | grep -v 'local.adguard.org' | sort -n | uniq | awk '!a[$0]++' > tmp-adblock.txt
cat adguard*.txt | grep -v '^!' | grep -v '^！' | grep -v '^# ' | grep -v '^# ' | grep -v '^\[' | grep -v '^\【' | sort -n | uniq | awk '!a[$0]++' > tmp-adguard.txt
cat dns*.txt abp-hosts.txt | grep '|\|@' | grep -v '^!' | grep -v '^！' | grep -v '^# ' | grep -v '^# ' | grep -v '^\[' | grep -v '^\【' | sort -n | uniq | awk '!a[$0]++' > tmp-dns.txt
cat dns*.txt abp-hosts.txt | grep '^|' | grep -v '\*'| grep -Ev "([0-9]{1,3}.){3}[0-9]{1,3}" |sed 's/||/0.0.0.0 /' | sed 's/\^//' | grep -v "^|" | sort -n | uniq | awk '!a[$0]++' > tmp-hosts.txt
cat tmp-hosts.txt | sed 's/0.0.0.0 //' | sort -n | uniq | awk '!a[$0]++' > ad-damian.txt
cat *allow*.txt | grep '^@' | sort -n | uniq | awk '!a[$0]++' > tmp-allow.txt

# Start Count Rules
adblock-num=`cat tmp-adblock.txt | wc -l`
adguard-num=`cat tmp-adguard.txt | wc -l`
dns-num=`cat tmp-dns.txt | wc -l`
hosts-num=`cat tmp-hosts.txt | wc -l`
ad-damain-num=`cat ad-damian.txt | wc -l`
allow-num=`cat tmp-allow.txt | wc -l`

# Start Add title and date
echo "! Version: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M:%S')（北京时间） " >> tpdate.txt
echo "! Total count: $adblock-num" >> adblock-tpdate.txt
echo "! Total count: $adguard-num" >> adguard-tpdate.txt
echo "! Total count: $dns-num" >> dns-tpdate.txt
echo "! Total count: $hosts-num" >> hosts-tpdate.txt
echo "! Total count: $allow-num" >> allow-tpdate.txt
echo "! Total count: $ad-damain-num" >> ad-damain-tpdate.txt
cat adblock-tpdate.txt tmp-adblock.txt > adblock-final.txt
cat adguard-tpdate.txt tmp-adguard.txt > adguard-final.txt
cat dns-tpdate.txt tmp-dns.txt > dns-final.txt
cat hosts-tpdate.txt tmp-hosts.txt > hosts-final.txt
cat allow-tpdate.txt tmp-allow.txt > allow-final.txt
cat ad-damain-tpdate.txt ad-damain.txt > ad-damain-final.txt
