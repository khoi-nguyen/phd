---
title: Pseudo-differential calculus on the Motion Group
author: Binh-Khoi Nguyen
institute: Imperial College London
header-includes:
    - \usepackage{tikz-cd}
    - \usetikzlibrary{matrix}
...

# Introduction

## Pseudo-differential calculus

### Definition (Pseudo-differential calculus on a Lie group G)

For each $m \in \mathbb{R}$, let $\Psi^m$ be a collection of operators $\mathcal{S}(G)$ to $C^\infty(G)$.

The collection $(\Psi_m)_m$ is called a **pseudo-differential calculus** if

. . .

> - $Diff^m \subset \Psi^m$
> - $m \leq m'$ implies $\Psi^m \subset \Psi^{m'}$
> - If $T_1 \in \Psi^{m_1}$, $T_2 \in \Psi^{m_2}$, then $T_1 T_2 \in \Psi^{m_1 + m_2}$
> - $\Psi^m$ is stable under taking the adjoint
> - If $T \in \Psi^m$, then $T$ extends continuously to a bounded operator
    $$T : H^s \to H^{s - m}.$$

## Symbol {.fragile}

Suppose that $T \phi(g) = \phi * \kappa_g$.
Letting $\sigma(g, \xi) = \mathcal{F} \kappa_g(\xi)$, we have
$$T \phi(g) = \int_{\widehat{G}} tr\left(\xi(g) \sigma(g, \xi) \widehat\phi(\xi)\right) d\mu(\xi)$$

. . .

In other words,

\begin{equation*}
\begin{tikzcd}
\phi(g) \arrow{r}{T}\arrow{d}[swap]{\mathcal{F}} & T \phi(g) \\
\widehat\phi(\xi)\arrow{r}[swap]{\sigma} & \sigma(g, \xi) \widehat\phi(\xi) \arrow{u}[swap]{\mathcal{F}^{-1}} \\
\end{tikzcd}
\end{equation*}

## Advantages of symbols

Suppose $G = \mathbb{R}^n$, $T = \Delta_{\mathbb{R}^n}$.

. . .

It follows that $\kappa_g = \Delta \delta_0$ and $\sigma(g, \xi) = - (2 \pi)^2 |\xi|^2$.

. . .

> - Symbols are **smoother** than kernels
> - For a fixed $(g, \xi)$, $\sigma(g, \xi)$ is a **linear operator** and so has an easy **inversion criterion**.
> - **Inverting the symbol** constitutes a first **approximation to $T^{-1}$**:
    $$T_{\sigma_1} T_{\sigma_2} = T_{\sigma_1 \sigma_2} + \text{lower order terms}$$

## Current situation

Symbol/pseudo-differential calculus has been developed for

. . .

> - Euclidean spaces $\mathbb{R}^n$ (Kohn-Nirenberg, Hormander)
> - Compact Lie groups (Ruzhansky-Turunen 2010)
> - Graded Lie groups (Fischer-Ruzhansky 2015)

# The Motion Group

## Motion Groups

### Our setting

. . .

> - $V$: finite-dimensional vector space
> - $K$: compact, connected, Lie group acting linearly on $V$
> - $G = V \ltimes K$

. . .

### Semi-direct product: group law

If $(x, k), (y, l) \in G$, we let:

. . .

$$(x, k) (y, l) := (x + ky, kl).$$

. . .

### Examples

. . .

> - $K = \{Id\}$, $G = V \times K$.
> - $K = SO(V)$: Euclidean motion group

## Example: Euclidean motion group

Suppose $g_{x, k}$ is the **"rigid motion"**

$$g_{x, k}(z) = k z + x$$

. . .

It follows that

$$g_{x, k} \circ g_{y, l} = g_{x + ky, kl}$$

. . .

Therefore, we have:

$$\mathbb{R}^n \ltimes SO(n) \simeq \left( \{g \in \text{Aff}(\mathbb{R}^n) : \det g = 1\}, \circ \right)$$

## Euclidean structure on $V$

By choosing a suitable inner product, $K \subset SO(V)$.

. . .

> - $dx$ is invariant under $K$:
    $$\int f(k x) dx = \int f(x) dx$$
>     - $dx dk$ is a **Haar measure** on $V \ltimes K$.
> - $\Delta$ is invariant under $K$:
    $$(\Delta f)(k x) = \Delta \{ f(k \cdot) \} (x)$$
>      - $\Delta_G f(x, k) = \Delta_V f(x, k) + \Delta_K f(x, k)$
> - Action of $K$ on $V$ commutes with the dilation structure of $V$.

# Fourier Analysis

## Unitary representations

### Definition ($\xi^\lambda$) [Ito 1952]

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

## Fourier Transform and differential operators

If $X$ is a **left-invariant differential operator**,

$$\xi^\lambda(X) \mathcal{F} f(\lambda) = \mathcal{F} \{ X f \}(\lambda).$$

. . .

### Example

$$\xi^\lambda(1 - \Delta_G) = (1 + |\lambda|^2)Id + \tilde\Delta_K$$

# Pseudo-differential calculus

## Difference operators [Ruzhansky-Turunen 2010]

If $q \in C^\infty$, we let

$$(\Delta_q \mathcal{F} f)(\lambda) = \mathcal{F}\{q f\}(\lambda)$$

. . .

We choose an *"admissible"* family $q_1, \dots, q_M$ and write
$$q^\alpha = q_1^{\alpha_1} \dots q_M^{\alpha_M}, \quad \Delta^\alpha = \Delta_{q^\alpha}$$

## Symbol classes

A map $(g; \lambda) \mapsto \sigma(g; \lambda)$ is called a **symbol of order $m$** if

. . .

> - for each $g \in G$ and each $\lambda \in V$, $\sigma(g, \lambda) \in End(C^\infty(K))$
> - for each $k \in K$,
    $$\sigma(g, k\lambda) = R_k \sigma(g, \lambda) R_k^{-1},$$
    where $R_k$ is the right-regular representation.
> - for every $g \in G$ and almost every $\lambda \in V$,
    $$\xi^\lambda(I - \Delta_G)^{\frac{-m + |\alpha| - \gamma}{2}} X^\beta_g \Delta^\alpha_\lambda \sigma(g, \lambda) \xi^\lambda(I - \Delta_G)^{\frac{\gamma}{2}}$$
    is a bounded linear operator in $L^2(K)$ uniformly in $g \in G$ and $\lambda \in V$.

. . .

**Notation**: $S^m$

## Quantization

### Quantization

Let $\sigma$ be a *symbol of order $m$*.
For each $f \in \mathcal{S}(G)$, we let

$$T_\sigma f(g) = \int_V tr\left(\xi^\lambda(g) \sigma(g, \lambda) \mathcal{F} f(\lambda) \right) d\lambda.$$

. . .

### Operator classes

An operator $T$ is said to be of **order $m$** if
there exists a symbol $\sigma \in S^m$ such that $T = T_\sigma$.

**Notation**: $\Psi^m$

## Main results

. . .

> - If $T \in \Psi^m$, then $T^* \in \Psi^m$
> - If $T_1 \in \Psi^{m_1}$ and $T_2 \in \Psi^{m_2}$, then $T = T_1 T_2 \in \Psi^{m_1 + m_2}$ and
    $$\sigma - \sum_{|\alpha| \leq M} \Delta^\alpha \sigma_1 X^{(\alpha)}_g \sigma_2 \in S^{m - M}$$
> - If $K$ is *abelian*, correspondence with **Hormander classes**.

## Main ingredient for proofs

### Definition (Littlewood-Paley decomposition)

A collection of symbols $\eta_l$, $l \in \mathbb{N}$ is called a **Littlewood-Paley decomposition**
if

. . .

> - They sum to the identity $\sum_{l = 0}^\infty \eta_l = Id$
> - for each $m, l, \alpha, \gamma$
    $$\left\|\xi^\lambda(I - \Delta_G)^{\frac{-m - |\alpha| + \gamma}{2}} \Delta^\alpha \eta_l(\lambda) \xi^\lambda(I - \Delta_G)^{\frac{-\gamma}{2}}\right\|_{op} \leq C_\alpha 2^{-l m}$$

. . .

### Littlewood-Paley decomposition on V

A sequence $\chi_l \in C^\infty(V)$, $l \in \mathbb{N}$ such that
$\sum_{l = 0}^\infty \chi_l = 1$ and

$$|\partial^\alpha \chi_l(\lambda)| \leq C_\alpha 2^{-lm} (1 + |\lambda|)^{m - |\alpha|}$$

- - -

### Theorem: Littlewood-Paley decomposition

From a Littlewood-Paley decomposition on $V$ which is **invariant under $K$**,
we can construct a Littlewood-Paley decomposition on $V \ltimes K$.

## Proof when $\alpha = 0$

Suppose $(\chi_l)_l$ is our Littlewood-Paley decomposition on $V$.

. . .

> - **Step 1**: Define
    $$\left. \eta_l(\lambda) \right|_{V_\tau} = \begin{cases} \chi_{l - \lceil \log_2 \langle \tau \rangle \rceil}(\lambda) Id_{V_\tau} & \text{if } \langle \tau \rangle \leq 2^l \\ 0 & \text{otherwise} \end{cases}$$
    where $V_\tau = {span \{\tau_{ij} : i, j \leq d_\tau \}}$.
    Remember that $L^2(K) = \bigoplus_{\tau \in \widehat{K}} V_\tau$.
> - **Step 2**: Check $\sum_{l = 0}^\infty \eta_l = Id$.
> - **Step 3**: Compute
    $$\left. \xi^\lambda(I - \Delta_G)^{\frac{-m + \gamma}{2}} \eta_l(\lambda) \xi^\lambda(l - \Delta_G)^{-\frac{\gamma}{2}} \right|_{V_\tau} = (|\lambda|^2 + \langle \tau \rangle^2)^{\frac{-m}{2}} \left. \eta_l(\lambda) \right|_{V_\tau}$$
> - **Step 4**: Conclude.
