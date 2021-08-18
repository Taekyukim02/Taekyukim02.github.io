---
layout: post
title: "Generalized Carmichael Numbers Research"
category: research
use_math: true
---

I was in the MIT PRIMES program (USA section, also called PRIMES USA) in 2020. This blog post serves to summarize my findings and provide code that may help inspire research. My slides for the 2020 PRIMES conference can be found [here][primes-slides] and my final paper on arXiv is [here][primes-paper]. 

## Motivation and Problem

Fermat's little theorem states that if $p$ is a prime number then $p$ divides $a^p - a$ for all integers $a$. The converse isn't true; in fact $561 = 3 \times 11 \times 17$ is the smallest composite number such that $561$ divides $a^{561} - a$ for all integers $a$. These exceptions to the conver of Fermat's little theorem were extensively studied by Robert Carmichael in 1910 and are thus called the *Carmichael numbers*. He proved this fact using Korselt's criterion.

<div class="boxed theorem">
<ni>(Korselt's criterion).</ni> An integer $n$ divides $a^n-a$ for all integers $a$ if and only if $n$ is squarefree and $p-1$ divides $n-1$ for all prime factors $p$ of $n$. An integer $n$ is squarefree if it is not divisible by $p^2$ for any prime $p$.
</div>

We can rewrite Korselt's criterion using the Carmichael function $\lambda(n)$, which is the greatest order of an element in $(\mathbb{Z}/n\mathbb{Z})^\times$, or equivalently, the smallest exponent $k>0$ needed to make $a^k \equiv 1 \pmod{n}$ for all $a$ coprime to $n$. We have the following formula for the Carmichael function:

<div>
\begin{equation} \lambda(n) = \lcm\left(p_1^{e_1}, \ldots, p_r^{e_r}\right) \end{equation}
</div>
where the prime factorization of $n$ is $p_1^{e_1}\cdots p_r^{e_r}$ and

<div>
\begin{equation}\lambda(p^e) = \begin{cases} 
p^{e-1}(p-1) & \text{if $p$ is odd or $p^e=2,4$} \\ 
p^{e-2}(p-1) & \text{if $p=2$ and $e>1$} \\ 
\end{cases}.\end{equation}
</div>


Although the Carmichael numbers are still an elusive species of numbers, there were recent breakthroughs by Alford, Granville, and Pomerance in their 1994 paper ["There are infinitely many Carmichael numbers"][alford-paper] in which they showed (expectedly) that there are infinitely many Carmichael numbers. Though inspired by a relatively simple heuristical argument by Erdös, the formal proof required combining several difficult results on the distribution of primes. In our paper, we ask the following question:

<div class="boxed problem">
For a given integer $k$, we ask what the integers $n > \max(k, 0)$ divide $a^{n-k+1} - a$ for all integers $a$; we define $C_k$ to be the set of all such $n$. 
</div>

In the case of $k=1$, $C_k$ consists of the primes and Carmichael numbers. Moreover, we prove in our paper $C_0 = \{1, 2, 6, 42, 1806\}$. What other patterns arise for other values of $k$? 



## Approach

If we write a program to find $C_k$ for some values of $k$ and $n$ up to $10^8$, then we can observe that the elements in $C_k$ tend to be multiples of $k$. We can pursue this further with a generalized version of Korselt's criterion.

<div class="boxed proposition">
<ni>(Generalized Korselt's criterion).</ni> An integer $n > \max(k, 0)$ is in $C_k$ if and only if $n$ is squarefree and $\lambda(n)$ divides $n-k$, where $\lambda$ is the Carmichael function.
</div>

The following result follows by applying the Generalized Korselt's criteron on $km \in C_k$ and considering the requirements on $k$ and $m$.


<div class="boxed proposition">
For a fixed squarefree $k>0$, many of the positive integers $n \in C_k$ are given by the following conditions:
<ul>
<li>$n=km$ for some positive squarefree integer $m$ coprime to k,</li>
<li>$m$ satisfies the modulo condition $m \equiv 1 \pmod{\frac{\lambda(k)}{\gcd(\lambda(k), k)}}$,</li>
<li>and $\lambda(m)$ divides $k(m-1)$.</li>
</ul>
</div>

We note that the second and third conditions are most easily satisfied by letting $m$ be a prime of the required modulo. 






[primes-slides]: https://math.mit.edu/research/highschool/primes/materials/2020/October/11-4-Kim.pdf
[primes-paper]: https://arxiv.org/abs/2103.04883
[alford-paper]: https://math.dartmouth.edu/~carlp/PDF/paper95.pdf
