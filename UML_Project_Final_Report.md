\documentclass[9pt,twocolumn,twoside,lineno]{pnas-new}
% Use the lineno option to display guide line numbers if required.

\templatetype{pnasresearcharticle} % Choose template
% {pnasresearcharticle} = Template for a two-column research article
% {pnasmathematics} %= Template for a one-column mathematics article
% {pnasinvited} %= Template for a PNAS invited submission

\title{Affect, Entertainment, and Sources of Information}

% Use letters for affiliations, numbers to show equal authorship (if applicable) and to indicate the corresponding author
\author[a,1,2]{Ruben Rodriguez Barron}
\author[a,1]{Spencer Ferguson-Dryden}
\author[a,1]{Ruben Heuer}
\author[a] {Gabriel Pu}

\affil[a]{The University of Chicago. This project was presented as the final project for Professor Philip Waggoner's Unsupervised Machine Learning class during Spring of 2021.}

% Please give the surname of the lead author for the running footer
\leadauthor{Rodriguez Barron}

% Please add a significance statement to explain the relevance of your work
\significancestatement{Political psychologists have studied the importance of affect in the formation and operationalization of a subject’s political identity. Popular wisdom suggests media plays an important role in the development of this identity. Yet evidence for this proposition continues to elude researchers in line with the minimal effects hypothesis. This study uses non-linear reduction techniques to explore the relationship between consumption of media and entertainment and several aspects of political identity. The results uncover relational pathways between each of the concepts and lay the groundwork for future causal arguments.}

% Please include corresponding author, author contribution and author declaration information
\authorcontributions{Author contributions: R.R.B. designed the research, performed data analysis, and wrote the paper. S.F. wrote the locally linear embedding (LLE) section. R.H. wrote the autoencoders (AE)section.}
\authordeclaration{The authors declare no competing interest.}
\equalauthors{\textsuperscript{1}R.R.B., R.H., and S.F. contributed equally to this work.
\par\medskip For specifics about contributions and source code visit https://github.com/rrodriguezbarron/UML-Project.}
\correspondingauthor{\textsuperscript{2}To whom correspondence should be addressed. E-mail: rrodriguezbarron\@uchicago.edu}


% At least three keywords are required at submission. Please provide three to five keywords, separated by the pipe symbol.
\keywords{American Politics $|$ Polarization $|$ Affect $|$ News $|$ Entertainment}

\begin{abstract}
What role do news and entertainment sources play in the formation of political identity? Here we report the results of two non-linear dimensionality reduction techniques (LLE and AE) using the 2016 ANES time series (N=4,270) to uncover relational pathways between markers of political identity and choice of news sources and entertainment. <Summary LLE results>. <Summary AE results>. Whilst we do not advance a causal argument in regard to these relational pathways, we do set the groundwork for future research on the topic of affect and political identity.
\end{abstract}

\dates{This manuscript was compiled on \today}
\doi{\url{www.pnas.org/cgi/doi/10.1073/pnas.XXXXXXXXXX}}

\begin{document}

\maketitle
\thispagestyle{firststyle}
\ifthenelse{\boolean{shortarticle}}{\ifthenelse{\boolean{singlecolumn}}{\abscontentformatted}{\abscontent}}{}

% If your first paragraph (i.e. with the \dropcap) contains a list environment (quote, quotation, theorem, definition, enumerate, itemize...), the line after the list may have some extra indentation. If this is the case, add \parshape=0 to the end of the list environment.
\dropcap{"T}his is 21st century America," says the Nobel-laureate economist Paul Krugman "everything is political" \cite{krugman_arguing_2020}. At the heart of our project is this notion that every sociopolitical concept is affect laden \cite{lodge_automaticity_2005}. This means every political figure, party, logo, or idea that is presented to a subject is associated with a positive or negative affective charge that is stored in the subject's long-term memory along with the concept. Whenever a concept becomes salient for the individual, this positive or negative evaluation is also retrieved along it.

\subsection*{Affect and Identity}

Throughout this project, we will use affect as the way in which a subject (i.e., the receiver of the stimulus), evaluates or "feels about" an object (i.e., the stimulus, which can be a person, a place, an institution, etc.). Affect is also referred in literature as sentiment \cite{heider_psychology_1958}. Affect can be positive or negative depending on whether the subject likes or dislikes the object. It is also important to note that there are degrees of affect. It's not the same to dislike a soup as it is to dislike pain.

 How does affect relate to identity? Milton Lodge and Charles Taber have shown that "feelings become information" \cite{lodge_automaticity_2005}. This means that affect is part of the judgement process from the moment the subject first interacts with a particular object, to the way in which he stores that information, retrieves it, and expresses it as a choice. In other words: people's identity is constructed from the relationship between objects and their respective affect charges as stored by the individual inside his brain.

 Now that we have defined affect and identity, we must place these two concepts within the broader realm of political science. Political scientists have long been aware of the fact that the vast majority of citizens are not as well informed or as coherent in their voting behavior Vis-à-Vis their self-reported ideology as political elites \cite{converse_nature_1964}. While the elites use a coherent set of values to judge a political subjects or activities, most citizens instead use heuristics. The five most commonly used heuristics: party, ideology, endorsements, viability, and candidate appearance have been shown to only increase the probability of coherent actions for subjects that were sophisticated to begin with \cite{lau_advantages_2001}. The relevance of this research in a democratic context arises from the fact that a bulk of the population votes on the basis of how they feel about a candidate and not as a result of a reasoned process that weights a candidate's policies against the voter's interests.

\subsection{Media and the Minimal Effects Theory}

The Fourth Estate, though never actually recognized as part of a political system, has been at the center of political analysis since before the printing press was invented. From the Roman \textit{fama} to our contemporary court of public opinion, the notion that those in control of the public narrative wield an inordinate amount of power - and, thus, present a threat to the rest of the political system - has always been in vogue \cite{cicero_republic_2008,spohr_fake_2017}. In spite of this, modern research on the effect on political identity of media has shown that media serves primarily to reinforce existing predispositions \cite{lazarsfeld_peoples_1969}. This is known in political science as the minimal effects hypothesis; and it is going through a new revival with the advent of social media \cite{bennett_new_2008}.

For the purposes of our analysis we will be extending the notion of media beyond news organizations in order to include entertainment.  Entertainment can be consumed for hedonistic (i.e. escapist) or eudaimonic (e.g. truth-seeking) motivations and has been shown to stimulate political interest and information seeking behavior in subjects \cite{bartsch_entertainment_2014}.

Importantly, we will not be considering social media in our analysis. The social media landscape is going through massive changes in the followup of the 2016 and 2020 United States presidential elections and the COVID-19 global pandemic.

\subsection{Our Approach}

Following John Gerring's advise to resuscitate descriptive arguments in political science \cite{gerring_mere_2012}, we have chosen to explore not the reasons for or the consequences of media consumption on affect or identity. Rather, using a variety of computational models, we will seek to uncover relational pathways between each of the concepts.

We hypothesize that these pathways will vary based on the political sophistication of the subjects. Because we will not ascertain the coherence between a subject's perceived sophistication and his choices we will use self-reported ideology and partisanship as proxies for this measure.

\section*{Data and Methods}

\subsection*{Data}

Data used for this model will come from the 2016 American National Election Studies (ANES) Time Series Study \cite{american_national_election_studies_anes_2017}. The original ANES universe includes responses from 4,270 participants (2,231 females). Participants were predominantly white (n=3,038), had a mean age of 45 to 49 years old, and were highly educated: BA or higher (n=2,236), some college (n=898), high school or less (n=1,097). Ideologically, all three leanings were presented: liberal(n=1,346), moderate (n=993), conservative (n=1,862), and DK/Refuse (n=69). A range of party identification was also represented: Democrats (n=1,450), Republicans (n=1,231), Independent (n=1,367), other parties (n=148), and DK/Refuse (n=74).

We will measure affect with the use of feeling thermometers. Feeling thermometers are great for evaluating affect for a subject and have been shown to be more reliable and valid than seven-point scales \cite{alwin_feeling_1997}. These correspond to ANES items V162078 to V162113. Consumption of media is measures by the respondents' selection of programs from across the media spectrum: newspaper, radio, television, and websites. Each question asks whether the respondent received any information about the presidential race whilst consuming these programs.The list of programs corresponds to the ANES items V161364 to V161460.

\subsection*{Methods}

A main aspect of our analysis will be to find theoretically informative partitions of the dataspace via unsupervised machine learning techniques. To this end, we will deploy various dimension reduction strategies as well as association rule mining. Media consumption patterns are likely to map onto affect towards political candidates in less than obvious ways. We will therefore go through the data iteratively refining our comprehension through a combination of visual and numerical assessments of the variously reduced dataspaces.

We will use two nonlinear dimension reduction techniques to analyze and visualize the relationship between media consumption and affect: locally-linear embedding and autoencoders. Both of these methods have low processing requirements and yield a high-quality, compact representation of the high-dimension manifold.

\subsubsection*{Locally-linear embedding}

Locally-linear embedding (LLE) is a nonlinear dimension reduction technique that minimizes the Gaussian distance between a set number of neighbors in order to "untangle" a manifold into a low-dimensional representation of the data set analyzed \cite{roweis_nonlinear_2000}. LLE maintains data structure at a local level and is able to provide information about global geometry. Because it is very useful when combined with other methods of data analysis and statistical learning, LLE provides a great starting point for our project.

\subsubsection*{Autoencoders}

We supplement our data analysis with autoencoders (AE), which a a special form of nonlinear dimensionality reduction techniques. AEs are a type of artificial neural network that duplicates its input data. The benefit of AEs lies on its hidden layers, each of which consists of a series of neurons that code the input in a sequence. Once a code is generated, the AE decodes it to recreate the original input. Unlike PCA, AEs are better able to separate the clusters of data and has a lower rate of information loss \cite{hinton_reducing_2006}.

% Bibliography
\bibliography{UML}

\end{document}
