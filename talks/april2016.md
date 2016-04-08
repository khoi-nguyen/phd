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

## Euclidean structure on $V$

Suppose $Q$ is an inner product on $V$.

We let

$$(x, y) = \int_K Q(kx, ky) dk,$$

where $dk$ is the **(normalised) Haar measure** on $K$.

. . .

It follows that for each $k \in K$,

$$(kx, ky) = (x, y),$$

in other words $K \subset SO(V)$ (since $K$ is *connected*).

## Euclidean structure on $V$

> - $dx$ is invariant under $K$:
    $$\int f(k x) dx = \int f(x) dx$$
> - $\Delta$ is invariant under $K$:
    $$(\Delta f)(k x) = \Delta \{ f(k \cdot) \} (x)$$
> - Action of $K$ on $V$ commutes with the dilation structure of $V$.

> - $dx dk$ is a **Haar measure** on $V \ltimes K$.
