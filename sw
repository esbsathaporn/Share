Building configuration...

Current configuration : 7785 bytes
!
! Last configuration change at 14:59:05 BKK Fri Nov 6 2026 by networx
! NVRAM config last updated at 14:59:27 BKK Fri Nov 6 2026 by networx
!
version 15.2
no service pad
service timestamps debug datetime msec localtime
service timestamps log datetime msec localtime
no service password-encryption
!
hostname SW-A1-1
!
boot-start-marker
boot-end-marker
!
enable password 7 0518570E2C5F59
!
username networx secret 5 $1$Vofv$fqeAkFmEdyDk5hXe/ATvq.
aaa new-model
!
!
aaa authentication login ESB group tacacs+ local
!
!
!
!
!
!
aaa session-id common
clock timezone BKK 7 0
switch 1 provision ws-c2960x-48fpd-l
!
!
vtp domain SiamA&C
vtp mode off
!
!
!
!
!
!
!
!
!
spanning-tree mode pvst
spanning-tree extend system-id
no spanning-tree vlan 695-697,900,906,911
!
!
!
!
vlan internal allocation policy ascending
!
vlan 2,4,6,8,11,50,70,81-82,100
!
vlan 113
 name FingerPrint
!
vlan 114
 name CCTV_Datacenter
!
vlan 122
!
vlan 207
 name VLAN207
!
vlan 208
 name VLAN208
!
vlan 212
!
vlan 230
 name VLAN230
!
vlan 910
!
!
!
!
!
!
!
!
!
!
!
interface Port-channel1
 switchport mode trunk
!
interface Port-channel6
 description Uplink-to-N3K-1_N3K-2
 switchport mode trunk
!
interface Port-channel24
 switchport mode trunk
!
interface FastEthernet0
 no ip address
!
interface GigabitEthernet1/0/1
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/2
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/3
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/4
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/5
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/6
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/7
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/8
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/9
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/10
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/11
 description Blackbox 4.95
 switchport access vlan 4
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/12
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/13
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/14
 switchport access vlan 2
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/15
 switchport access vlan 81
 switchport mode access
!
interface GigabitEthernet1/0/16
 switchport access vlan 81
 switchport mode access
!
interface GigabitEthernet1/0/17
 switchport access vlan 81
 switchport mode access
!
interface GigabitEthernet1/0/18
 description Replicate
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/19
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/20
 description Veeam-10.100.192.181
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/21
 description POC-GPCC-04
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/22
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/23
 description 10.100.1.160
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/24
 description 10.100.1.161
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/25
!
interface GigabitEthernet1/0/26
!
interface GigabitEthernet1/0/27
!
interface GigabitEthernet1/0/28
!
interface GigabitEthernet1/0/29
 switchport access vlan 113
 switchport mode access
!
interface GigabitEthernet1/0/30
!
interface GigabitEthernet1/0/31
!
interface GigabitEthernet1/0/32
!
interface GigabitEthernet1/0/33
!
interface GigabitEthernet1/0/34
 description 192.168.10.254
 switchport mode access
!
interface GigabitEthernet1/0/35
 description 10.255.5.1
 switchport access vlan 910
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/36
!
interface GigabitEthernet1/0/37
 description 192.168.8.254
 switchport access vlan 8
 switchport mode access
 spanning-tree portfast
!
interface GigabitEthernet1/0/38
!
interface GigabitEthernet1/0/39
 description New ESXi_v9
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/40
 description New ESXi_v9
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/41
 description New ESXi_v9
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/42
 description New ESXi_v9
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/43
 description New ESXi_v9
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/44
 description New ESXi_v9
 switchport access vlan 2
 switchport mode access
!
interface GigabitEthernet1/0/45
!
interface GigabitEthernet1/0/46
!
interface GigabitEthernet1/0/47
 description IIAS
 switchport access vlan 50
 switchport mode access
!
interface GigabitEthernet1/0/48
 description IIAS
 switchport access vlan 50
 switchport mode access
!
interface GigabitEthernet1/0/49
 switchport mode trunk
 channel-group 24 mode active
!
interface GigabitEthernet1/0/50
 switchport mode trunk
 channel-group 24 mode active
!
interface TenGigabitEthernet1/0/1
 description Uplink-to-N3K-1_eth1/47
 switchport mode trunk
 channel-group 6 mode active
!
interface TenGigabitEthernet1/0/2
 description Uplink-to-N3K-2_eth1/47
 switchport mode trunk
 channel-group 6 mode active
!
interface Vlan1
 no ip address
 no ip route-cache
 shutdown
!
interface Vlan113
 ip address 192.168.113.233 255.255.255.0
!
ip default-gateway 192.168.113.254
no ip http server
no ip http secure-server
!
!
access-list 61 permit 192.168.12.210
!
snmp-server view NO_BAD_SNMP iso included
snmp-server view NO_BAD_SNMP internet included
snmp-server view NO_BAD_SNMP snmpUsmMIB excluded
snmp-server view NO_BAD_SNMP snmpVacmMIB excluded
snmp-server view NO_BAD_SNMP snmpCommunityMIB excluded
snmp-server view NO_BAD_SNMP transmission.94 excluded
snmp-server view NO_BAD_SNMP mib-2.34.9 excluded
snmp-server view NO_BAD_SNMP ciscoMgmt.35 excluded
snmp-server view NO_BAD_SNMP ciscoMgmt.95 excluded
snmp-server view NO_BAD_SNMP ciscoMgmt.130 excluded
snmp-server view NO_BAD_SNMP ciscoMgmt.219 excluded
snmp-server view NO_BAD_SNMP ciscoMgmt.252 excluded
snmp-server view NO_BAD_SNMP ciscoMgmt.254 excluded
snmp-server view NO_BAD_SNMP ciscoExperiment.997 excluded
snmp-server community c1$C0sw1234 view NO_BAD_SNMP RO
snmp-server community c1$C0sw1234$ RW 61
tacacs-server host 192.168.2.13 key 7 04585A422C715F59584B5643
tacacs-server directed-request
!
!
!
no vstack
banner login ^CC
#####################################################################
#This system is the property of EASY BUY Public Company Limited.    #
#WARNING:Unauthorized access to this system is forbidden and will be#
#prosecuted by law. By accessing this system, you agree that your   #
#actions may be monitored if unauthorized usage is suspected.       #
#Location: A01U45F                                                  #
#####################################################################
^C
!
line con 0
 logging synchronous
line vty 0 4
 password 7 1404430A01173D
 logging synchronous
 login authentication ESB
 transport input ssh
line vty 5 15
 transport input ssh
!
ntp server 192.168.2.15
end

