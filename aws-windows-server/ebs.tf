resource "aws_ebs_volume" "ebs" {
  availability_zone = "af-south-1a"
  size              = 128
  encrypted         = true

  tags = merge({ Name = "EBS Volume" }, local.common_tags)
}

resource "aws_volume_attachment" "ebsAttach" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.ebs.id
  instance_id = aws_instance.server.id
}