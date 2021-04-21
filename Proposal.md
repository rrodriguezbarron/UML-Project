# Proposal

## Introduction

Berry and Sobieraj (2016) say that, over the past thirty years, outrage has become the main strategy for capturing and maintaining the attention of consumers across the media landscape. The consequence of this emotion-driven strategy has been an increase in the affective polarization of the electorate. Where people once targeted the politics of a candidate from the other party they now attack their personal character. Entertainment also makes extensive use of outrage to convey political messages, albeit presenting it in a more subtle manner. 

In this assignment, we will examine the relationship between consumption of different types of media and affect. In particular, we will focus on affect towards different groups (e.g., conservatives, liberals) and political candidates. Thus, our project seeks to expand the growing literature on the effect of outrage on polarization in the US.

Rosenfeld (2018) traces the development of polarization in our current, partisan environment to a deliberate decision by Democratic and Republican activists to differentiate their parties based on ideology. The influence of ideology in the affective evaluations of political candidates is widely documented. Ideology and skin tone, for example, have been used as heuristics for candidate evaluations by some democratic voters (Lerman et al 2015). Ideology has also been shown to alter the way in which respondents evaluate their personal agreement with candidate issue positions (Wyer et al 1991).

## Data

Data used for this model will come from the 2016 American National Election Studies (ANES) Time Series Study (2017). The original ANES universe includes responses from 4,270 participants (2,231 females). Participants were predominantly white (n=3,038), had a mean age of 45 to 49 years old, and were highly educated: BA or higher (n=2,236), some college (n=898), high school or less (n=1,097). Ideologically, all three leanings were presented: liberal(n=1,346), moderate (n=993), conservative (n=1,862), and DK/Refuse (n=69). A range of party identification was also represented: Democrats (n=1,450), Republicans (n=1,231), Independent (n=1,367), other parties (n=148), and DK/Refuse (n=74).

We will measure affect with the use of feeling thermometers. Feeling thermometers are great for evaluating affect for a subject and have been shown to be more reliable and valid than seven-point scales (Alwin, 1997). These correspond to ANES items V162078 to V162113. Consumption of media is measures by the respondents' selection of programs from across the media spectrum: newspaper, radio, television, and websites. Each question asks whether the respondent received any information about the presidential race whilst consuming these programs.The list of programs corresponds to the ANES items V161364 to V161460.  

## Methods

A main aspect of our analysis will be to find theoretically informative partitions of the dataspace via unsupervised machine learning techniques. To this end, we will deploy various dimension reduction strategies as well as association rule mining. Media consumption patterns are likely to map onto affect towards political candidates in less than obvious ways. We will therefore go through the data iteratively refining our comprehension through a combination of visual and numerical assessments of the variously reduced dataspace. 

We will use principal component analysis to collect and visualize the linear combinations accounting for most of the variance across both media consumption and feeling thermometers. We will then supplement our analysis with a yet unspecified dimension reduction technique better suited to find complex or non-linear relationships (e.g. UMAP) (McInnes & Healy, 2018). We will further make use of clustering algorithms in the reduced feature space to help us understand natural groupings. Ideally, clusters found in media consumption should correspond to those in the feeling thermometer partition of the ANES data supported by the theoretical plausibility of their association. In a last step, we will perform association rule mining using the APRIORI algorithm to find "interesting" subsets of association rules connecting affect to media consumption, where interestingness is informed by the results of our foregoing analysis ( Agrawal & Srikant, 1994). Association rules extracted in this way may serve as useful heuristics in predicting affect from non-obvious patterns of media consumption.

## References

 Agrawal, R., & Srikant, R. Fast algorithms for mining association rules. Proceedings of the 20th VLDB Conference Santiago, Chile, 1994.

Alwin, Duane F. “Feeling Thermometers Versus 7-Point Scales: Which Are Better?” Sociological Methods & Research 25, no. 3 (February 1997): 318–40. https://doi.org/10.1177/0049124197025003003.

American National Election Studies, University of Michigan, and Stanford University. “ANES 2016 Time Series Study.” Inter-university Consortium for Political and Social Research [distributor], 2017. https://doi.org/10.3886/ICPSR36824.v2.

Berry, Jeffrey M., and Sarah Sobieraj. The Outrage Industry: Political Opinion Media and the New Incivility. Oxford University Press, 2016.

Lerman, Amy E., Katherine T. McCabe, and Meredith L. Sadin. “Political Ideology, Skin Tone, and the Psychology of Candidate Evaluations.” Public Opinion Quarterly 79, no. 1 (January 1, 2015): 53–90. https://doi.org/10.1093/poq/nfu055.

McInnes, L, Healy, J, UMAP: Uniform Manifold Approximation and Projection for Dimension Reduction, ArXiv e-prints 1802.03426, 2018.

Rosenfeld, Sam. The Polarizers: Postwar Architects of Our Partisan Era. Chicago; London: University of Chicago Press, 2018.

Wyer, Robert S., Thomas Lee Budesheim, Sharon Shavitt, Ellen D. Riggle, R. Jeffrey Melton, and James H. Kuklinski. “Image, Issues, and Ideology: The Processing of Information about Political Candidates.” Journal of Personality and Social Psychology 61, no. 4 (1991): 533–45. https://doi.org/10.1037/0022-3514.61.4.533.
