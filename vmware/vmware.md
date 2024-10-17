### Problem: Wasted Server Resources
How VMs solve the problem ow wasted server resources?\
  *By running multiple VMs on a single server to balance the workloads*
### Solution: Virtual Machines
VM is special type of software application that runs ag guest OS. It is like a machine\
running inside another machine. By installing virtualization software on a physical\
server, the server can host multiple VMs, each on with its own OS. With VMs, you can\
run miltiple operating systems at the same time, from the same pice of hardware.\
Imagine that you have multiple applications windows open in your computer at the same\
time. Each applications represents a separate operating system that you can interact with\
Without ;virtualization, running multiple sysems requires separate phisical units.

### Components of Virtual Machines
#### VM Components
- Application
 * Applications perform tasks using commputer resources\
   such as CPU, memory, and storage\
   For example, when a web server application needs access\
   to storage space, it asks the OS for this resource.\
   If this web server is running on a VM, it is the guest OS\
   that presents the application with the storage space.\
   Whenclient computers request access to websites, this web\
   server responds to the client requests without ever knowing that the OS is\
   running on a VM.\

- Operating Systems
 * Multiple guest operating systems that run on a single server\
   share the physical resources of the hosts.\
   Virtualization softwarte provides each guest OS with its own\
   share of virtualized resources, such as CPU and memory.\
   For example, if two VMs are running on a server, each guest OS can access only\
   a subset of resoures and presents those resources to the\
   applications that it runs.

- Drivers
 * A driver is software component that links a computer's hardware with the\
   OS so that they cna communicate with each other.\
   For example, oparating systems come with drivers for basic operations such as\
   controlling th keyboard.\
   VMware VMs include VMware Tools, a bundle of drivers that helps guest operating\
   systems interact efficiently with the guest hardware.\

- Hardware
 * The virtualization software abstracts the physical hardware and presents\
   it a virtualized resources to the VM.\
   The guest OS uses the virtualized hardware devices of the VM but is unaware that
   those devices are virtual.\
   Examples of virtual machines hardware devices:
   * CPU an memory devices
   * Network adapters
   * Disks and controllers
   * Parallel and serial ports

### Benefits of Using Virtual Machines

- Isolation
    Chalanges tht VM isolations adresses: failures
    If a guest OS experiences a failure because it runs beyond its specifications
    limits, other VMs are not affected.\
    Why? Each VM is an isolated software cantainer with an application and operating
    systems. Problems atat affect one guest operating systems do not affect other
    VMs running on the same host.


