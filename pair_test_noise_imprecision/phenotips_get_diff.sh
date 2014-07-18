for f in First* Second*; do
    echo $f
    arg="https://playground.phenotips.org/bin/get/PhenoTips/DiffDiagnosisService?format=html&q=`sed 's/:/%3A/g;s/,/%20/g' $f` --data `sed 's/:/%3A/g;s/H/symptom=H/g;s/,/\&/g' $f`"
    echo $arg
    curl -k -o output_phenotips_diff/"$f".results $arg
    sleep 1
done
