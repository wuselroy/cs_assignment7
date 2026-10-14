output "instance_floating_ip" {
  description = "Public floating IP address of the web server"
  value       = openstack_networking_floatingip_v2.web.address
}

output "web_url" {
  description = "URL to access the web server"
  value       = "http://${openstack_networking_floatingip_v2.web.address}"
}