resource "null_resource" "lesson_3" {
  provisioner "local-exec" {
    command = "record_name='Oleg'; echo Record $record_name done. > lesson_3.txt"
    interpreter = ["bash", "-c"]
  }
}

