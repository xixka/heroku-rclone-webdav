# 初始化rclone配置
mkdir -p /.config/rclone
cat << EOF > /.config/rclone/rclone.conf
$rclone
EOF
# 启动rclone
exec /usr/bin/rclone serve webdav ${path} --buffer-size 32M --vfs-cache-mode writes --addr :${PORT}  --user ${user} --pass ${pass}
