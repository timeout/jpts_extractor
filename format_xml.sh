# for file in $(find . -name "*.xml")
# do
#     xmllint --format $file > $(echo $file | sed -ne 's/.xml/_format.xml/p')
# done

for file in $(find . -name "*_format.xml")
do
    # xmllint --format $file > $(echo $file | sed -ne 's/.xml/_format.xml/p')
    mv -v $file $(echo $file | sed -ne 's/_format//p')
done
