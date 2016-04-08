---
title: Pseudo-differential calculus on the Motion Group
author: Binh-Khoi Nguyen
institute: Imperial College London
...

# Preliminaries

## Motion Groups

### Our setting

> - $V$: finite-dimensional vector space
> - $K$: compact, connected, Lie group acting linearly on $V$
> - $G = V \ltimes K$

. . .

### Group law

If $(x, k), (y, l) \in V$, we let:

$$(x, k) (y, l) := (x + ky, kl).$$

. . .

### Examples

> - $K = \{Id\}$, $G = V \times K$.
> - $K = SO(V)$: Euclidean motion group

## Example: Euclidean motion group

Suppose $g_{x, k}$ is the **"rigid motion"**

$$g_{x, k}(z) = k z + x$$

. . .

It follows that

$$g_{x, k} \circ g_{y, l} = g_{x + ky, kl} = g_{(x, k)(y, l)}$$

. . .

Therefore, we have:

$$\mathbb{R}^n \ltimes SO(n) = \left( \{g \in \text{Aff}(\mathbb{R}^n) : \det g = 1\}, \circ \right)$$

## Choice of Euclidean structure on $V$

Suppose $Q$ is an inner product on $V$.

We let

$$(x, y) = \int_K Q(kx, ky) dk,$$

where $dk$ is the **(normalised) Haar measure** on $K$.

. . .

It follows that for each $k \in K$,

$$(kx, ky) = (x, y),$$

in other words $K \subset SO(V)$ (since $K$ is *connected*).

. . .

The \emph{Euclidean} structure naturally gives us **partial derivatives**.

## Euclidean structure on $V$

> - $dx$ is invariant under $K$:
    $$\int f(k x) dx = \int f(x) dx$$
>     - $dx dk$ is a **Haar measure** on $V \ltimes K$.
> - $\Delta$ is invariant under $K$:
    $$(\Delta f)(k x) = \Delta \{ f(k \cdot) \} (x)$$
> - Action of $K$ on $V$ commutes with the dilation structure of $V$.

# Fourier Analysis

## Unitary representations

### Definition ($\xi^\lambda$)

Let $\lambda \in V$.
We let

$$\xi^\lambda(x, k) F(u) = e^{i 2 \pi (u \lambda, x)} F(k^{-1} u),$$

where $F \in L^2(K)$ and $u \in K$.

. . .

### Remark

$\xi^\lambda$ is **reducible** but all irreducible unitary representations are contained in at least one of the $\xi^\lambda$ for some $\lambda \in V$.

## Fourier Transform

### Fourier coefficient

Let $\lambda \in V$ and $f \in L^1(G)$.
The *Fourier coefficient of $f$ at $\lambda$* is defined via

$$\mathcal{F} f(\lambda) = \int_{V \times K} f(x, k) {\xi^\lambda(x, k)}^* dx dk.$$

. . .

### Fourier Transform

The map

$$\lambda \mapsto \mathcal{F} f(\lambda)$$

is called the **Fourier Transform of $f$**.

## Plancherel and Inverse Formula

### Plancherel formula

Let $f \in L^1(G) \cap L^2(G)$.
For almost every $\lambda \in V$,
the operator $\mathcal{F} f$ is *Hilbert-Schmidt*
and we have

$$\int_G |f|^2 dg = \int_V tr(\mathcal{F} f(\lambda) \mathcal{F} f(\lambda)^*) d\lambda.$$

. . .

### Inverse formula

Let $f \in \mathcal{S}(G)$.
For every $g \in G$, we have

$$f(g) = \int_V tr(\xi^\lambda(g) \mathcal{F} f(\lambda)) d\lambda.$$
