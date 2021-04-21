# Introduction

Berry and Sobieraj (2016) say that, over the past thirty years, outrage has become the main strategy for capturing and maintaining the attention of consumers across the media landscape. The consequence of this emotion-driven strategy has been an increase in the affective polarization of the electorate. Where people once targeted the politics of a candidate from the other party they now attack their personal character. Entertainment also makes extensive use of outrage to convey political messages, albeit presenting it in a more subtle manner. 

In this assignment, we will examine the relationship between consumption of different types of media and affect. In particular, we will focus on affect towards different groups (e.g., conservatives, liberals) and political candidates. Thus, our project seeks to expand the growing literature on the effect of outrage on polarization in the US.

Rosenfeld (2018) traces the development of polarization in our current, partisan environment to a deliberate decision by Democratic and Republican activists to differentiate their parties based on ideology. The influence of ideology in the affective evaluations of political candidates is widely documented. Ideology and skin tone, for example, have been used as heuristics for candidate evaluations by some democratic voters (Lerman et al 2015). Ideology has also been shown to alter the way in which respondents evaluate their personal agreement with candidate issue positions (Wyer et al 1991).

# Data

Data used for this model will come from the 2016 American National Election Studies (ANES) Time Series Study (2017). The original ANES universe includes responses from 4,270 participants (2,231 females). Participants were predominantly white (n=3,038), had a mean age of 45 to 49 years old, and were highly educated: BA or higher (n=2,236), some college (n=898), high school or less (n=1,097). Ideologically, all three leanings were presented: liberal(n=1,346), moderate (n=993), conservative (n=1,862), and DK/Refuse (n=69). A range of party identification was also represented: Democrats (n=1,450), Republicans (n=1,231), Independent (n=1,367), other parties (n=148), and DK/Refuse (n=74).

We will measure affect with the use of feeling thermometers. Feeling thermometers are great for evaluating affect for a subject and have been shown to be more reliable and valid than seven-point scales (Alwin, 1997). These correspond to ANES items V162078 to V162113. Consumption of media is measures by the respondents' selection of programs from across the media spectrum: newspaper, radio, television, and websites. Each question asks whether the respondent received any information about the presidential race whilst consuming these programs.The list of programs corresponds to the ANES items V161364 to V161460.  

# Methods

A main aspect of our analysis will be to find theoretically informative partitions of the dataspace via unsupervised machine learning techniques. To this end, we will deploy various dimension reduction strategies as well as association rule mining. Media consumption patterns are likely to map onto affect towards political candidates in less than obvious ways. We will therefore go through the data iteratively refining our comprehension through a combination of visual and numerical assessments of the variously reduced dataspace. 

We will use principal component analysis to collect and visualize the linear combinations accounting for most of the variance across both media consumption and feeling thermometers. We will then supplement our analysis with a yet unspecified dimension reduction technique better suited to find complex or non-linear relationships (e.g. UMAP) (McInnes & Healy, 2018). We will further make use of clustering algorithms in the reduced feature space to help us understand natural groupings. Ideally, clusters found in media consumption should correspond to those in the feeling thermometer partition of the ANES data supported by the theoretical plausibility of their association. In a last step, we will perform association rule mining using the APRIORI algorithm to find "interesting" subsets of association rules connecting affect to media consumption, where interestingness is informed by the results of our foregoing analysis ( Agrawal & Srikant, 1994). Association rules extracted in this way may serve as useful heuristics in predicting affect from non-obvious patterns of media consumption.

# References

 Agrawal, R., & Srikant, R. Fast algorithms for mining association rules. Proceedings of the 20th VLDB Conference Santiago, Chile, 1994.

Alwin, Duane F. “Feeling Thermometers Versus 7-Point Scales: Which Are Better?” Sociological Methods & Research 25, no. 3 (February 1997): 318–40. https://doi.org/10.1177/0049124197025003003.

American National Election Studies, University of Michigan, and Stanford University. “ANES 2016 Time Series Study.” Inter-university Consortium for Political and Social Research [distributor], 2017. https://doi.org/10.3886/ICPSR36824.v2.

Berry, Jeffrey M., and Sarah Sobieraj. The Outrage Industry: Political Opinion Media and the New Incivility. Oxford University Press, 2016.

Lerman, Amy E., Katherine T. McCabe, and Meredith L. Sadin. “Political Ideology, Skin Tone, and the Psychology of Candidate Evaluations.” Public Opinion Quarterly 79, no. 1 (January 1, 2015): 53–90. https://doi.org/10.1093/poq/nfu055.

McInnes, L, Healy, J, UMAP: Uniform Manifold Approximation and Projection for Dimension Reduction, ArXiv e-prints 1802.03426, 2018.

Rosenfeld, Sam. The Polarizers: Postwar Architects of Our Partisan Era. Chicago; London: University of Chicago Press, 2018.

Wyer, Robert S., Thomas Lee Budesheim, Sharon Shavitt, Ellen D. Riggle, R. Jeffrey Melton, and James H. Kuklinski. “Image, Issues, and Ideology: The Processing of Information about Political Candidates.” Journal of Personality and Social Psychology 61, no. 4 (1991): 533–45. https://doi.org/10.1037/0022-3514.61.4.533.

# Feedback

Great start! 

Here are some comments (forgive the brevity and tone as these were stream of consciousness while reading): 

Biggest flag is the use of the term "effect" in the intro. With UML, we never make predictions or estimate "effects" as we do in supervised tasks. Thus, to explore the relationship between affect and polarization, you'd have to do so **descriptively, picking up on latent patterns and relationships that naturally exist in the feature space**, rather than a supervised and (usually) parametric approach to estimating quantities of interest. 

You are proposing to use a ton of algorithms. This isn't necessarily a "bad" thing in the normative sense. But it does make for a tall order for a project like this. You are welcome to proceed as planned, but a point to consider for the final write up is how exactly these methods build on each other, why they are useful in concert, and why these instead of the still many others you *could* be using? That is, **much more justification for method selection is warranted here**, to make for a more cohesive project. 

**How are you measuring polarization?** There are so many ways this is measure in the literature. It seems like you're planning on using the feelings toward a particular political candidate. But note, this is a mere proxy for polarization, and really an imperfect one. What FTs really get at is more granular looks at political preferences, which may or may not be "polarized". If you use party ID or some other proxy for polarization, think really carefully about the **substantive information underlying the construct**. That is, if using self-identified party ID/partisan leanings, you are picking up on political identity, which might be used in a study of polarization, but is itself *not* a measure of polarization. There are further still more measures and approaches to exploring polarization out there. So, all of this to say, the measurement and exploration of "polarization" is a deceptively complex one. Many preferences and pieces of information might point toward polarization, but may do so imperfectly. So think really carefully about exactly what data you are modeling, and thus how best to interpret the patterns you pick up on. 

You are using the time series version of the ANES. This is fine, but **how exactly are you going to handle time?** The algorithms you have mentioned don't explicitly model time or handle it traditional/explicit ways (e.g., econometric like error correction models or transfer functions, or on the ML side, LSTM/RNN, etc.). So think really carefully about time, as it may skew the patterns you find, and give a hint of structure in the data space, where perhaps none or *different* structure truly exists. I just took up this idea in a recent paper I published. Take a look here if you're interested: https://ieeexplore.ieee.org/abstract/document/9355031. Alternative to dealing with time, you might consider using a different ANES data set, like the 2019 ANES pilot study or the 2016 version. Check out the ANES website for more options: https://electionstudies.org/data-center/ 

Ultimately, after reading, I am not seeing a ton of methods or process that help you with your stated goal at the outset (media consumption and affect). There are certainly routes you could take, but as is written, the link between these concepts on the basis of the methods you propose is unclear. Overall, great start! Keep at it, and let me know if you'd like to discuss any point in greater detail. Of course, happy to do so if needed.

# Ruben's Email

Ruben Rodriguez <rrodriguezbarron@uchicago.edu>	Wed, Apr 21, 2021 at 1:00 PM
To: Philip Waggoner <pdwaggoner@uchicago.edu>
Cc: Ruben Heuer <heuer@uchicago.edu>, Spencer Ferguson-Dryden <csfergusondryden@uchicago.edu>, Tiancheng Pu <gabrielpu@uchicago.edu>

Philip,

Thank you so much for the feedback. It is really helpful and it was very comprehensive so we have a lot to do for the next step of the process. I just wanted to go over some of the points with you: 
\begin{itemize
 \item **Descriptive, not causal, argument**: You are right, we used the term "effect" wrongly in our presentation. In fact, we are not going to say what causes affect to change. Instead, we will focus mostly on the underlying patterns and relationships between affect and media consumption.
 \item **Data**: We are not using the ANES time series data. We are only using the 2016 ANES version of the survey. So we do not need to worry about time at all. 
 \item **Methods**: We were thinking in broad terms because there's so much we can do with the data. Following your advice we will review and retain only the ones we need. Personally, I have never even heard about some of the methods before the class started so I'm still unsure about how each would help. I hope you don't mind if this part changes as we get to know and use more methods in class. 
\item **Polarization**: We are not measuring polarization. In fact we are only measuring affect for groups and individuals. This is very well captured by the feeling thermometers. Thus we do not need to construct any measure of polarization. We do expect to find patterns with regards to party identification but that is not going to be the goal. Rather the goal will be to see what patterns emerge between affect (measured in feeling thermometers) and selection of media consumption. 

Let me know if you think something could be further improved upon. Thanks again and see you next week.  

PS
I'm CCing my team for their archive.

Sincerely,
- Rubén Rodríguez Barrón (The stress goes on the last syllable, like so: “ru-BEN”)
Political Science PhD Student | The University of Chicago
