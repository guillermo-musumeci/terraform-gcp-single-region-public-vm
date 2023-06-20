# Virtual machine output | vm-output.tf

output "vm-name" {
  value = google_compute_instance.vm_instance_public.name
}

output "vm-external-ip" {
  value = google_compute_instance.vm_instance_public.network_interface.0.access_config.0.nat_ip
}

output "vm-internal-ip" {
  value = google_compute_instance.vm_instance_public.network_interface.0.network_ip
}
output "z_gcloud-compute-ssh-command" {
  value = <<EOF

Connect to the VM using following command:
gcloud compute ssh --zone '${google_compute_instance.vm_instance_public.zone}' '${google_compute_instance.vm_instance_public.name}' --project '${google_compute_instance.vm_instance_public.project}'
EOF
}
