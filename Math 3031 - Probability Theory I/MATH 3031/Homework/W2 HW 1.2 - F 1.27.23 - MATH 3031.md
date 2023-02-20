## Exercises 1.4 - 1.8
Dean Quach

![[Anderson D.F - Introduction to probability-Cambridge University Press (2018).pdf#page=45]]

---
### Exercise 1.4 - Every day a kindergarten class chooses randomly one of the 50 state flags to hang on the wall, without regard to previous choices. We are interested in the flags that are chosen on Monday, Tuesday and Wednesday of next week. 

#### (a) Describe a sample space $\Omega$ and a probability measure $P$ to model this expiriment.
$Sol^n:$
So one of the 50 state flags will be hung up. And we are looking at three days of the week, more generally three distinct instances. So an example sample point would be a ordered triple with one of the 50 state flags.

So one way to describe the sample space is: 
Let $A= \{x_i ~|~ i=the~numbered~alphabetical~position~of~one~of~the~50~state~flags\}$,
Then $\Omega$ should consist of an ordered triple (a.k.a. a three dimensional vector with components from $A$). Also we don't have to consider distinctiveness (since without regard to previous choices $\implies$ sampling with replacement).
i.e. Our sample space should be,
$$\Omega = A*A*A = \{ (x_i,x_j,x_k) ~|~ x_i,x_j,x_k \in A \}.$$

And therefore, our probability measure should be,
$$P(\omega_i) = \frac{1}{|\Omega|} = \frac{1}{|A|^3} = \frac{1}{50^3} = \frac{1}{125000}.~~~~~\blacksquare$$



#### (b) What is the probability that the class hangs Wisconsin's flag on Monday, Michigan's flag on Tuesday, and California's flag on Wednesday?
$Sol^n:$
Recall we made an ordered tuple so that each position represents a day, i.e. the $i$th position represents Monday, the $j$th position represents Tuesday, and the $k$th position represents Wednesday.

The probability that the class hangs exactly one of the 50 state flags, on each day is 
$$P(Wisconsin,~Michican,~California)=\frac{1}{|\Omega|}=\frac{1}{50^3}=\frac{1}{125000}.~~~~~\blacksquare$$





#### (c) What is the probability that Wisconsin's flag will be hung at least two of the three days?
$Sol^n:$
We need to add the probabilities that these individual events occur. That is, let $W:=Wisconsin$.
Then
$$P(W,W,\neg W) + P(W,\neg W,W)+P(\neg W,W,W)+P(W,W,W)$$
$$=\frac{1*1*49}{50*50*50} + \frac{1*49*1}{50*50*50} + \frac{49*1*1}{50*50*50} + \frac{1*1*1}{50*50*50}$$
$$=3*\frac{49}{50^3}+\frac{1}{50^3} = \frac{3*49+1}{50^3}.~~~\blacksquare$$



--- 
### Exercise 1.5. - In one type of state lottery 5 distinct numbers are picked from 1, 2, 3, . . . , 40 uniformly at random. 

#### (a) Describe a sample space $\Omega$ and a probability measure $P$ to model this experiment. 
$Sol^n:$
Notice, distinct numbers implies without replacement, or that for each number from $1,...,40$, you only see each one once. Assuming that order does not matter...

An example of a sample space, let $B=\{ n\in\mathbb{Z} ~|~ 1 \leq n \leq 40 \}$.
Then
$$\Omega=\big\{ \{n_1 ,..., n_5 \}  ~\big|~ n_i \in B,~n_i \neq n_j, \forall~   i\neq j \big\}$$

And for our probability measure, let $\omega\in \Omega$.
Then
$$P(\omega) = \frac{1}{|\Omega|} = \frac{1}{40*39*38*37*36}.~~~\blacksquare$$

#### (b) What is the probability that out of the five picked numbers exactly three will be even?
$Sol^n:$
Note $n=20$ for the amount of even numbers in $B$.
We need to choose $k=3$ to be even.
$\implies {20\choose 3}$ combinations of this type.

Also note $n=20$ for the amount of odd numbers in $B$.
We need to choose $k=2$ to be odd (a.k.a. out of the 5 numbers, we want 3 even, and we know 2 are odd).
$\implies {20\choose 2}$ combinations of this type.

We also know there are a total of $n=40$ numbers and we are sampling $k=5$.
$\implies$ there is a total of $40\choose 5$ combinations.

So, finally
$P(3~even,~2~odd)= \dfrac{{20\choose3}{20\choose2}}{{40\choose5}} = \dfrac{\dfrac{20*19*18}{3*2*1}*\dfrac{20*19}{2*1}}{\frac{40*39*38*37*36}{5*4*3*2*1}}$

$\implies \dfrac{20*19*3*10*19}{2*39*38*37*6}= \dfrac{10*19*3*5*19}{39*38*37*3}$
$= \dfrac{50*19*19}{39*38*37} = \dfrac{5*5*9}{39*37}.~~~\blacksquare$


--- 


### Exercise 1.6. We have an urn with 3 green and 4 yellow balls. We choose 2 balls randomly without replacement. Let $A$ be the event that we have two different colored balls in our sample. 
#### (a) Describe a possible sample space with equally likely outcomes, and the event A in your sample space. 
$Sol^n:$ 
Note without replacement, and I'll assume order doesnt matter (just the combination of 2 different colors).

So for a sample space, let $g:=green$ and $y:=yellow$.
Set $C=\{g_1,g_2,g_3,y_1,y_2,y_3,y_4\} = \{g_1,g_2,g_3,g_4\} \cup \{y_2,y_3,y_4\}$,
and also set $G=\{g_1,g_2,g_3,g_4\}$ and $Y=\{y_2,y_3,y_4\}$.
Then $$\Omega = \big\{   \{x_1,x_2\}  ~\big|~ x_i\in C,~x_i\neq x_j  ,~ \forall~ i\neq j\big\}$$

And also
$$A = \big\{   \{x_1,x_2\}  ~\big|~ x_i\in G,~x_j\in Y,~x_i\neq x_j  ,~ \forall~ i\neq j\big\}.~~~\blacksquare$$

#### (b) Compute $P(A)$. 
$Sol^n:$
$$P(A)=\frac{{3\choose1}{4\choose1}}{7\choose2} = \frac{3*4}{\frac{7*6}{2*1}} = \frac{4}{7}.~~~\blacksquare$$


--- 

### Exercise 1.7. We have an urn with 3 green and 4 yellow balls. We draw 3 balls one by one without replacement. 
#### (a) Find the probability that the colors we see in order are green, yellow, green. 
$Sol^n:$
This time order matters. And we sample without replacement.

So for a sample space, let $g:=green$ and $y:=yellow$.
Set $C=\{g_1,g_2,g_3,y_1,y_2,y_3,y_4\}$

So now we are looking at ordered triples, such that
$$\Omega = \big\{   (x_1,x_2,x_3)  ~\big|~ x_i\in C,~x_i\neq x_j  ,~ \forall~ i\neq j\big\}.$$

Note, 
$$|\Omega|=7P3 = \frac{7!}{(7-3)!} = \frac{7*6*5*\cancel{4!}}{\cancel{4!}} = 7*6*5.$$

Note there are $3*4*2$ ways to draw 3 balls in the order $(g,y,g)$.

So the probability that we draw 4 balls in $(g,y,g)$ order, out of the $|\Omega|$ ways, is
$$P(g,y,g)=\frac{3*4*2}{7*6*5} = \frac{4}{7*5} = \frac{4}{35}.~~~\blacksquare$$

#### (b) Find the probability that our sample of 3 balls contains 2 green balls and 1 yellow ball. 
$Sol^n:$
Instead of redefining things. We can consider the sum of all the probabilities, since each event is a disjoint union of the subsets from the sample space.
So we will look at
$$P\big(\{g,g,y\}\big) = P(g,g,y) + P(g,y,g) + P(y,g,g) = \frac{4}{35} + \frac{4}{35} + \frac{4}{35} = \frac{12}{35}.$$

But also this holds off of the other definition, i.e.
$$P\big(\{g,g,y\}\big) = \dfrac{{3\choose2}{4\choose1}}{{7\choose3}}.~~~\blacksquare$$




--- 

### Exercise 1.8. Suppose that a bag of scrabble tiles contains 5 Es, 4 As, 3 Ns and 2 Bs. It is my turn and I draw 4 tiles from the bag without replacement. Assume that my draw is uniformly random. Let $C$ be the event that I got two Es, one A and one N. 

#### (a) Compute $P(C)$ by imagining that the tiles are drawn one by one as an ordered sample. 
$Sol^n:$
We draw $k=4$ tiles, without replacement. In this case, we look at an ordered sample.
So we know $C = \{E_1,E_2,A,N\}$
Set $A=\{E_1,E_2,E_3,E_4,E_5,A_1,A_2,A_3,A_4,N_1,N_2,N_3,B_1,B_2\}$

Then $\Omega = \{  (n_1,n_2,n_3,n_4) ~|~ n_i\in A,~n_i\neq n_j,~\forall~i\neq j   \}$.
Quickly note $|\Omega| = {14P4} = 14*13*12*11$

Since we are looking at $P(C)=P\big( \{E_i,E_j,A,N\} \big)$ but we are sampling as an ordered sample, we need to consider all combinations of $\{E_i,E_j,A,N\}$ in different $4$-tuples.

I shall cheat a bit, and use the combination function to consider all positions for each component. 
So $E_i,E_j$ will have $4\choose2$ positions within a $4$-tuple, $(n_1,n_2,n_3,n_4)$.
And $A$ will have $2\choose1$ positions (after $E_i,E_j$ are set) within a $4$-tuple, $(n_1,n_2,n_3,n_4)$.
And $N$ will have $1\choose1$ positions (after $E_i,E_j,A$ are set) within a $4$-tuple, $(n_1,n_2,n_3,n_4)$.

Also for $E_i$, there are 5 E's
and for $E_j$, there are 4 E's.
Of course for A and N, there are 4 and 3 each respectively.

So $$P(C) = \frac{{4\choose2}{2\choose1}{1\choose1}*5*4*4*3}{14*13*12*11}$$
$$=\frac{\cancel{6*2}*1*5*4*4*3}{14*13*\cancel{12}*11}=\frac{5*2*4*3}{7*13*11}=\frac{120}{1001}.~~~\blacksquare$$


#### (b) Compute $P(C)$ by imagining that the tiles are drawn all at once as an unordered sample.
$Sol^n:$
As we are looking at an unordered set, we can consider the amount of combinations for each component, compared to all total combinations. So 
$$P(C)=P\big( \{E_i,E_j,A,N\} \big) = \frac{{5\choose2}{4\choose1}{3\choose1}}{{14\choose 4}} =\frac{\frac{5*4}{2*1}*4*3}{\frac{14*13*12*11}{4*3*2*1}}$$
$$\frac{10*4*3}{7*13*11}= \frac{120}{1001}.~~~\blacksquare$$




