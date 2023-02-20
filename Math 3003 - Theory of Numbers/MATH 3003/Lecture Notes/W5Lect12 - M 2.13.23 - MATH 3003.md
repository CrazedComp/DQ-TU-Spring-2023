# $\S$ 3.5 - Continued
$FTA:$ Every integer $\geq 2$ may be written as a product of prime numbers. THis prime factorization is unique, up to the order in which the prime factors are mltiplied.

### $Proof:$
Let $n\in \mathbb{N} \backslash \{1\}.$
We will show $n$ has a prime factorization by strong induction.

**Base Case:** n=2
Well, 2 is itself prime, and so it serevs as its own prime factorization.

**Inductive Hypothesis:** Assume the numbers $2,3,4,5,...,m$ all have prime factorizations. Consider $m+1.$

Clearly, $m+1>1,$ so $m+1$ is either prime or composite. 
If $m+1$ is prime, then it stands as its own prime factorization, and we are done.

So suppose $m+1$ is composite. Then $\exists~a,b\in \{2,3,4,5,...,m\}$ so that $m+1=ab$.

By the Inductive Hypothesis (I.H.) we may write 
$$a=\prod_{i=1}^{r}p_{i} ~\text{and}~ b=\prod_{j=1}^{s}q_{j}$$
where each $p_{i}$ and each $q_{j}$ is prime. 

Then $m+1=ab=\left(\prod\limits_{i=1}^{r}p_{i}\right)\left (\prod\limits_{j=1}^{s}q_{j}\right)$, so $m+1$ is also a product of primes.

Hence 




