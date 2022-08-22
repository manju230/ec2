resource "aws_ebs_volume" "ebsvolume1" {
  availability_zone = "ap-south-1a"
  size              = "2"
  type = "gp2"
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_ebs_volume" "ebsvolume2" {
  availability_zone = "ap-south-1a"
  size              = "3"
  type = "gp2"
  tags = {
    Name = "HelloWorld2"
  }
}

  resource "aws_ebs_volume" "ebsvolume3" {
  availability_zone = "ap-south-1a"
  size              = "3"
  type = "gp2"
  tags = {
    Name = "HelloWorld3"
  }
}



resource "aws_volume_attachment" "ebsvolume1" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.ebsvolume1.id
  instance_id = aws_instance.webapp.id
}

resource "aws_volume_attachment" "ebsvolume2" {
  device_name = "/dev/xvdf"
  volume_id   = aws_ebs_volume.ebsvolume2.id
  instance_id = aws_instance.webapp.id
}

resource "aws_volume_attachment" "ebsvolume3" {
  device_name = "/dev/xvdj"
  volume_id   = aws_ebs_volume.ebsvolume3.id
  instance_id = aws_instance.webapp.id
}
