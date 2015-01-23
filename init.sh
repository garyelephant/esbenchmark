
template_name=esbench

curl -XPUT $1/_template/${template_name} --data-binary @index_template.json
echo ""
echo "create index template"
curl $1/_template/${template_name}?pretty
