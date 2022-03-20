# Classifiers

1. What is a classifier?

- Classifier is a mathematical model that is able to label a given data point (i.e., an unknown pattern) to a/set of appropriate classes.

2. How do we design a classifier?

- Classifier relies on the statistical variations of patterns in the training data. We can design a classifier by learning to recognize such patterms with a (statistical) model.

## Bayesian Classifiers

In this section, we will discuss about the classifiers that are based on Bayes decision theory. Before going in to the specifics about Bayes decision theory first let un introduce some of the variables and symbols used.

Lets define a classification task of $M$ classes and each label is represented by $\omega_1, \omega_2, ..., \omega_M$. Let the unknown pattern (aka. feature vecctor) is represented as $\textbf{x}$.

We present the class probabilities provided the unknown pattern as a conditional probability: $P(\omega_i|\textbf{x}), i \in {1, 2, ..., M}$. This probability sometimes is identified as a posteriori probability. The unknown pattern is classified to the class that has the maximum of a posteriori probability.

### Bayes Decision Theory

#### Case 1: Two Classes

- Let $\omega_1$, $\omega_2$ be the two classes which need to be identified.

- Assumptions
	- $P(\omega_i)$ is known.
		- If not available, can be calculated using training data based on the propotion of each class.
		- $P(\omega_i) = N_i / N$, where $N_i$ is the number of samples with label $\omega_i$ and $N$ is the total number of samples.
	- $p(\textbf{x}|\omega_i)$ is known.
		- $p(\textbf{x}|\omega_i)$ is called class-conditional probability density function (aka. likelihood). Note $p$ => $P$ if $\textbf{x}$ is categorical.
		- If not known, they can also be estimated from the available training data ([will be discussed later](/cross_ref_link_not_found)).

- Applying Bayes rule we can calculate $P(\omega_i|\textbf{x})$

$$
	P(\omega_i|\textbf{x}) = \dfrac{p(\textbf{x}|\omega_i)P(\omega_i)}{p(\omega_i)} \\
	p(\textbf{x}) = \sum_{i=1}^{2} p(\textbf{x}|\omega_i)P(\omega_i)
$$

- Bayes classification rule

$$
	\textbf{x} -> \omega_1 if P(\omega_1|\textbf{x}) > P(\omega_2|\textbf{x})
	\textbf{x} -> \omega_2 if P(\omega_1|\textbf{x}) < P(\omega_2|\textbf{x})
	% \textbf{x} -> \omega_1 or \omega_2 if P(\omega_1|\textbf{x}) = P(\omega_2|\textbf{x})
$$

	- Simplifying above we get,
		
$$
	p(\textbf{x}|\omega_1)P(\omega_1) \lessgtr p(\textbf{x}|\omega_1)P(\omega_1)
$$