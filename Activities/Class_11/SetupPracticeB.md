## Practice setting up numerical solutions to Newton's Laws

## Simple Pendulum

![SimplePendulum](/Users/pauln/Dropbox/DocumentsF/_Teaching/Spring2023/Github/phy261-Julia/Assignments/Assignment_05/SimplePendulum.svg)

For the system shown, which we'll consider as a point mass at the end of a massless string of length $l$, we can describe the position and velocity of the pendulum in terms of $\theta$ and $\omega=\dot\theta$. Of course the acceleration of the pendulum is, of course  $a = l\ddot \theta$.

a) Write down Newton's second law in terms of $\theta$ and $\ddot\theta$ (and needed constants like $l$, $m$, and $g$).

​	

b) Separate into two first order equations (for simplicity, let's set $\omega = \dot\theta$): 





c) Now replace $dt$, $d\dot\theta$, $d\theta$ with $\Delta t$, $\Delta \omega$, $\Delta \theta$ and solve each of the above two equations for $\Delta \theta$ and $\Delta \omega$.





d) Write down the Euler method solution and the Euler-Cromer method solution for this system.
