# 初始化rclone配置
mkdir -p /.config/rclone
cat << EOF > /.config/rclone/rclone.conf
$rclone
EOF
# 启动rclone
exec /usr/bin/rclone serve webdav ${start}  --addr :${PORT}  --user ${user} --pass ${pass}
