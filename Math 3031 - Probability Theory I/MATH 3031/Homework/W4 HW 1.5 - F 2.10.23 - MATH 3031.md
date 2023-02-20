## Exercises 1.16-1.19
Dean Quach

![[Anderson D.F - Introduction to probability-Cambridge University Press (2018).pdf#page=47]]


---

### Exercise 1.16. - We flip a fair coin five times. For every heads you pay me \$1 and for every tails I pay you \$1. Let $X$ denote my net winnings at the end of five flips. Find the possible values and the probability mass function of $X$.
$Sol^n:$
Note: I make money if I get a tails. 

The possible values for each event $X(Event)$ is

| Events     | 0 tails/5 heads | 1T / 4H | 2T / 3H | 3T / 2H | 4T / 1H | 5T / 0H |
| ---------- | --------------- | ------- | ------- | ------- | ------- | ------- |
| $x$        | -\$5            | -\$3    | -\$1    | \$1     | \$3     | \$5     | 

The probability of a single event from $\Omega=\{(x_{1},x_{2},...x_{5} : x_{i}\in\{H,T\}\}$ is of course $\dfrac{1}{\#\Omega}=n^k=2^5=32.$

And the probabilities getting $k$ tails in each event is

$P(k~tails)=\dfrac{\#~ways~to~get~k~tails,~out~of~5}{\#~total~events}=\dfrac{5\choose k}{32}=\dfrac{1}{32}\displaystyle{5\choose k}$

In other words, this is the probability mass function
$$P(X=K)~or~P_{x}(k)=\frac{1}{32} {5\choose k}.$$

Which have the following. 

| $x$         | -\$5                                       | -\$3                                       | -\$1                                                                                      | \$1                                                  | \$3                                                          | \$5                                                              |
| ----------- | ------------------------------------------ | ------------------------------------------ | ----------------------------------------------------------------------------------------- | ---------------------------------------------------- | ------------------------------------------------------------ | ---------------------------------------------------------------- |
| $P_{x}(k)$  | $\dfrac{1}{32}\displaystyle{5\choose (0)}$ | $\dfrac{1}{32}\displaystyle{5\choose (1)}$ | $\dfrac{1}{32}\displaystyle{5\choose (2)}$                                                | $\dfrac{1}{32}\displaystyle{5\choose (3)}$           | $\dfrac{1}{32}\displaystyle{5\choose (4)}$                   | $\dfrac{1}{32}\displaystyle{5\choose (5)}$                       |
| $\parallel$ | $\dfrac{1}{32}*1$                          | $\dfrac{1}{32}*\dfrac{5}{1}$               | $\dfrac{1}{\cancelto{16}{32}}*\dfrac{5*\cancelto{\cancelto{1}{2}}{4}}{\cancelto{1}{2}*1}$ | $\dfrac{1}{32} * \dfrac{5*4*\cancel3}{\cancel3*2*1}$ | $\dfrac{1}{32} * \dfrac{5*\cancel{4*3*2}}{\cancel{4*3*2}*1}$ | $\dfrac{1}{32} * \dfrac{\cancel{5*4*3*2*1}}{\cancel{5*4*3*2*1}}$ |
| $=$         | $$\dfrac{1}{32}$$                          | $$\dfrac{5}{32}$$                          | $$\dfrac{5}{16}$$                                                                         | $$\dfrac{5}{16}$$                                    | $$\dfrac{5}{32}$$                                            | $$\dfrac{1}{32}$$                                                                 |

```desmos-graph
left=-7; right=7;
top=1; bottom=-0.25;
---

(-5,0)|blue|label:x = -$5
(-3,0)|blue|label:x = -$3
(-1,0)|blue|label:x=-$1
(1,0)|blue|label:x = $1
(3,0)|blue|label:x = $3
(5,0)|blue|label:x = $5

(-5,1/32)|red|label:P(x=-$5)
(-3,5/32)|red|label:P(x=-$3)
(-1,5/16)|red|label:P(x=-$1)
(1,5/16)|red|label:P(x=$1)
(3,5/32)|red|label:P(x=$3)
(5,1/32)|red|label:P(x=$5)

x=0|blue|dashed


```



---
### Exercise 1.17. - An urn contains 4 red balls and 3 green balls. Two balls are drawn randomly. 

#### (a) Let $Z$ denote the number of green balls in the sample when the draws are done without replacement. Give the possible values and the probability mass function of $Z$.
$Sol^n:$
The possible values for drawing 2 balls is $Z=\{0,1,2\}$.
Note: without replacement.

And the probability for each $z\in Z$ are
$$P_{Z}(0)=P(Z=0)=\frac{\displaystyle{4\choose 2}{3\choose 0}}{\displaystyle {7\choose 2}}=\frac{\dfrac{4*3}{2*1}*1}{\dfrac{7*6}{2*1}}=\frac{2*3}{7*3}=\frac{2}{7}$$
$$P_{Z}(1)=\frac{\displaystyle{4\choose 1}{3\choose 1}}{\displaystyle {7\choose 2}}=\frac{\dfrac{4}{1}* \dfrac{3}{1}}{\dfrac{7*6}{2*1}}=\frac{4*3}{7*3}=\frac{4}{7}$$
$$P_{Z}(2)=\frac{\displaystyle{4\choose 0}{3\choose 2}}{\displaystyle {7\choose 2}}=\frac{1 * \dfrac{3*2}{2*1}}{\dfrac{7*6}{2*1}}=\frac{3}{7*3}=\frac{1}{7}$$

```desmos-graph
left=-1; right=3;
top=1; bottom=-0.25
---

(0,2/7)|blue|label: (Z=0, Pz(0)=2/7)
(1,4/7)|blue|label: (Z=1, Pz(1)=4/7)
(2,1/7)|blue|label: (Z=2, Pz(2)=1/7)
```


#### (b) Let $W$ denote the number of green balls in the sample when the draws are done with replacement. Give the possible values and the probability mass function of $W$.
$Sol^n:$
This time the possible values for drawing 2 balls is $W=\{0,1,2\}$.
And this time, note: with replacement.

So the probability for each $w\in W$ are
$$P_{W}(0)=P(W=0)=\frac{4*4}{7*7}=\frac{16}{49}$$
$$P_{W}(1)=\frac{4*3}{7*7}+ \frac{3*4}{7*7}=\frac{12+12}{49}=\frac{24}{49}$$
$$P_{W}(2)=\frac{3*3}{7*7}=\frac{9}{49}$$

```desmos-graph
left=-1; right=3;
top=1; bottom=-0.25
---

(0,16/49)|blue|label: (W=0, Pw(0)=16/49)
(1,24/49)|blue|label: (W=1, Pw(1)=24/49)
(2,9/49)|blue|label: (W=2, Pw(2)=9/49)
```


---
### Exercise 1.18. - The statement "SOME DOGS ARE BROWN" has 16 letters. Choose one of the 16 letters uniformly at random. Let $X$ denote the *length of the word* containing the chosen letter. Determine the possible values and probability mass function of $X$.

$Sol^n:$
$X=\{3,4,5\}$ since "Some" and "Dogs" have 4 letters, "are" has 3, and "brown" has 5 letters. 

And the values of the PMF are,
$$P_{X}(3)=\frac{\#~of~letters~of~3~letters}{\#~total~letters}=\frac{3}{16}$$
$$P_{X}(4)=\frac{4}{16}+ \frac{4}{16}=\frac{8}{16} = \frac{1}{2}$$
$$P_{X}(5) = \frac{5}{16}$$

```desmos-graph
left=2; right=6;
top=1; bottom=-0.25
---

(3,3/16)|blue|label: (X=0, Px(0)=3/16)
(4,1/2)|blue|label: (X=1, Px(1)=1/2)
(5,5/16)|blue|label: (X=2, Px(2)=5/16)
```

---
### Exercise 1.19. - You throw a dart and it lands uniformly a random on a circular dartboard of radius 6 inches. If your dart gets to within 2 inches of the center I will reward you with 5 dollars. But if your dart lands farther than 2 inches away from the center I will give you only 1 dollar. Let $X$ denote the amount of your reward in dollars. Find the possible values and the probability mass function of $X$.

$Sol^n:$
$X=\{1,5\}$, which are the possible dollar amounts. 

Note:
- The total board is 6 inches
- 2 inch zone from center $\implies$ \$5
- 2 inch from center, to edge $\implies$ \$1

$$P_{X}(5)= \frac{\cancel\pi(2)^{2}}{\cancel\pi(6)^{2}}= \frac{4}{36}=\frac{1}{9}.$$

<br>

$$P_{X}(1) = \frac{\pi(6)^{2}-\pi(2)^{2}}{\pi(6)^{2}}=\frac{36\pi-4\pi}{36\pi} = \frac{32\cancel\pi}{36\cancel\pi}=\frac{16}{18}=\frac{8}{9}.$$

or alternatively, 
$$P_{X}(1)=1-P_{X}(5) =1- \frac{1}{9}=\frac{8}{9}.$$








