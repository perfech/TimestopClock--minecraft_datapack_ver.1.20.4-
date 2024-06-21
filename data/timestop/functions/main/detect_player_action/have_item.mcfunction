$execute as @a[nbt={"SelectedItem":{"id":"$(id)",tag:$(tag)}}] run $(run_command)
$execute as @a[nbt={Inventory:[{Slot:-106b,"id":"$(id)",tag:$(tag)}]}] run $(run_command)