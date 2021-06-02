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

As with any big panel study, there is a problem of missing values in the ANES. These come in the form of people that reply "don't know" (DK) and people that simply refuse to answer. We believe the best approach is to treat both of these responses with missing values. However, for some test we imputed the median or the mean value of the column to avoid losing data (e.g., if we remove all rows with NAs we end up with only 900 observations). There are problems with both approaches and both are used in the literature \cite{treier_nature_2009}. Imputing the median in place of the missing value increases the skewness of the original data. Imputing the median, inflates the non-committal moderates and that in itself is a problem because it has been known to affect the temporal stability of ideology as a construct \cite{wood_toward_2012}.

We will measure affect with the use of feeling thermometers. Feeling thermometers are great for evaluating affect for a subject and have been shown to be more reliable and valid than seven-point scales \cite{alwin_feeling_1997}. These correspond to ANES items V162078 to V162113. Consumption of media is measures by the respondents' selection of programs from across the media spectrum: newspaper, radio, television, and websites. Each question asks whether the respondent received any information about the presidential race whilst consuming these programs.The list of programs corresponds to the ANES items V161364 to V161460.

\subsection*{Methods}

A main aspect of our analysis will be to find theoretically informative partitions of the dataspace via unsupervised machine learning techniques. To this end, we will deploy various dimension reduction strategies as well as association rule mining. Media consumption patterns are likely to map onto affect towards political candidates in less than obvious ways. We will therefore go through the data iteratively refining our comprehension through a combination of visual and numerical assessments of the variously reduced dataspaces.

We will use two nonlinear dimension reduction techniques to analyze and visualize the relationship between media consumption and affect: locally-linear embedding and autoencoders. Both of these methods have low processing requirements and yield a high-quality, compact representation of the high-dimension manifold.  

\subsubsection*{Locally-linear embedding}

Locally-linear embedding (LLE) is a nonlinear dimension reduction technique that minimizes the Gaussian distance between a set number of neighbors in order to "untangle" a manifold into a low-dimensional representation of the data set analyzed \cite{roweis_nonlinear_2000}. LLE maintains data structure at a local level and is able to provide information about global geometry. Because it is very useful when combined with other methods of data analysis and statistical learning, LLE provides a great starting point for our project.

\subsubsection*{Autoencoders}

We supplement our data analysis with autoencoders (AE), which a a special form of nonlinear dimensionality reduction techniques. AEs are a type of artificial neural network that duplicates its input data. The benefit of AEs lies on its hidden layers, each of which consists of a series of neurons that code the input in a sequence. Once a code is generated, the AE decodes it to recreate the original input. Unlike PCA, AEs are better able to separate the clusters of data and has a lower rate of information loss \cite{hinton_reducing_2006}. 

\section{Locally Linear Embedding}

\subsection{Motivation}

The LLE analysis was run on the cleaned dataset of feeling thermometer responses. After removing null values, the dataset contained 1,732 observations across 31 input features. The feeling thermometers included notable public figures and politicians, including Obama, Bill Clinton, John Roberts and Pope Francis, attitudes toward demographic groups such as Muslims, wealthy people, and feminists, and attitudes toward various political elements such as Black Lives Matter, the Supreme Court, and labor unions.

Before running the LLE algorithm, we found the optimal $k$ value to determine appropriate neighborhood size. The graph below shows the output for the minimum k algorithm. The function took about 30 minutes to run with a possible k-value range of 1 to 200. The minimum is located at $k=96$. With this k-value, an LLE fit was created using two dimensions.

\subsection{Initial Analysis}

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{lle_1.png}
\caption{Overview of the LLE data space colored by Ideology.}
\end{figure}

At a first glance, the LLE fit captures the separation in both party and ideology of the respondents. Using all seven ideology categories, we see complete separation between the Extremely Liberal and Extremely Conservative categories. Recoding ideology into two categories shows a similar separation, although a slight amount of overlap is apparent in the center. Respondents self-identifying as moderate can be found spread rather far throughout the data space.

Separation by self-identified party follows the same structure. There is some overlap between Democrats and Republicans in the center, while self-identified Independents are clustered in the center, but do exist toward the fringes as well.

\subsection{Analysis of Radio Consumption}

For the most part, there is very obvious separation in terms of radio listeners across a variety of programs. The \emph{All Things Considered} show, for example, has an audience that mainly skews liberal, although it gains some traction in the moderate space. Rush Limbaugh's show, which is notable for its long history of conservative bias, has exclusively conservative listeners. We see a similar pattern for many of the other shows.

Also of note is the structure of the answer to "Do you use the radio to consume media?" The highest density of respondents who do not listen to the radio is located in the center of the data space, while the fringes have a higher density of radio listeners. This suggests that there is some grouping behavior not only by the show listened to, but also by the medium itself.

\subsection{Analysis of Websites}

Like the radio analysis, there is clear ideological separation in the websites respondents visit in order to consume their news. On the liberal side, we see respondents heading to Buzzfeed, Huffington Post, and the New York Times website. On the conservative side, respondents tend to head to Fox News. These are not surprising findings given the well-documented partisanship of the American news environment, but do provide evidence to suggest that ideological clustering extends to Internet media sources as well as traditional media sources.

\subsection{Analysis of TV}

With the TV analysis, we were able to understand how ideological clustering can exist in the entertainment space as well as the news media space.

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{lle_2.png}
\caption{Separation in TV shows watched: the O'Reilly Factor.}
\end{figure}

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{lle_3.png}
\caption{Separation in TV shows watched: Rachel Maddow.}
\end{figure}

First, we see the predictable results that Sean Hannity and \emph{O'Reilly Factor} viewers skew toward the conservative space. On the other hand, viewers of the \emph{Rachel Maddow Show} skew liberal. Interestingly, the density of the Sean Hannity and \emph{O'Reilly Factor} clusters are much denser than the Rachel Maddow cluster - and indeed the rest of the shows catering to liberal audiences. Perhaps some aspect of conservative ideology predicts a tighter grouping in terms of what is presented on TV. On the other hand, liberal news media may also try to cater to moderate audiences as well. We also see that the Rachel Maddow cluster only includes a part of the liberal data space, suggesting that the show perhaps caters to only a subset of liberal issues.

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{lle_4.png}
\caption{Separation in TV shows watched: The Big Bang Theory.}
\end{figure}

Moving into the entertainment space, we fail to see the same, consistent level of ideological separation. \emph{The Big Bang Theory}, a popular sitcom, has a reach that spans nearly the entire data space. We find a similar lack of separation across all types of shows, from sitcoms to cop shows to action shows to reality TV.

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{lle_5.png}
\caption{Separation in TV shows watched: Stephen Colbert.}
\end{figure}

Two exceptions do stand out: Stephen Colbert and the TV show \emph{Empire}. Stephen Colbert is known for his character that satirizes conservative news hosts. Despite his show being primarily comedy, the themes heavily cater to liberal and moderate audiences.

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{lle_6.png}
\caption{Separation in TV shows watched: Empire.}
\end{figure}

\emph{Empire} is interesting because its viewers extend into the lower-left extremity of the data space. This is the area that left-leaning media, such as the \emph{Rachel Maddow Show} failed to capture. \emph{Empire} is a drama series featuring a predominantly Black cast, suggesting that its appeal to non-white audiences allowed it to gain traction in the left-leaning space not reached by other shows. It also suggests that ideological groupings in entertainment can be predicted by facets of self-identification beyond political ideology.

Moving beyond LLE, the finding about \emph{Empire} suggests that analyzing certain cross-sections of the data space may yield more interesting separation. For example, individual cop shows failed to produce separation, but taking that genre as an aggregate and filtering by respondents who also view conservative new media may yield more interesting results.

\section{Autoencoders}

\subsection{Motivation} To further validate our results, we conducted a second analysis over the same dataspace using autoencoders for dimensionality reduction. To this end, we first trained an autoencoder with three layers and a 8-8-2 architecture on a random subset consisting of 80\% of observations of the ANES feeling-thermometer data. We then compared the overall distribution and degree of separation between training and test set. We chose our neural network architecture on the assumption that the feeling-thermometer space is likely hierarchically structured. The layered architecture accordingly allowed us to examine different levels of abstraction in order to infer candidate ideological dimensions underlying the data. The autoencoder was trained over 1000 epochs using a hyperbolic tangent activation function. Subsequently we conducted our analysis on the 2 dimensions of the autoencoder's third layer. 

To numerically guide our exploration of the autoencoder embeddings, we deployed association rule mining on the media space. In this way, we obtained promising combinations of media items allowing us to extend our analysis beyond the inspection of single formats.

\subsection{Initial Analysis}

Inspecting relative feature importance, we see that feelings towards certain politicians play the most significant role in determining the structure of the autoencoder space. Among these are former presidents Obama and Trump as well as presidential candidate Hillary Clinton. In addition, feelings towards the Republican and Democrat party as well as the Black Lives Matter movement seem to explain a large portion of the variation in the reduced dataspace. Feelings towards groups associated with particular sociopolitical discourses such as transgender people, feminists, Muslims and Christians score in the mid-range of feature importance while less popular politicians such as chief justice John Roberts seem to contribute little in reconstructing the input space. As the feature importance, at first glance, seems to correlate with the degree of media coverage the respective persons and groups receive, it seems likely to find media consumption reflected in the reduced dataspace of our autoencoder.

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{frog.eps}
\caption{Relative feature importance of feeling-thermometer data.}
\end{figure}

Just as in the plots obtained in the LLE analysis, we can see similar degrees of separation in terms of ideology as well as party affiliation with moderates again slightly more dispersed than liberals and conservatives and an analogous tendency regarding the partisan aspect. Comparing training and validation set, we obtained a similar picture with respect to the spatial distribution of ideology and party, lending additional face validity to our previous results. In the sparse plot of the validation set, we can easily see that the three ideological leanings are not equally represented in our dataset. Only about 20\% of the respondents are self-reported moderates, whereas the bulk of observations (about 55\%) represents the ideologically conservative part of the electorate. This numerical difference could put as at a disadvantage when examining smaller subsets of the data, such as particular combinations of media consumption. This will become apparent in the next phase of our analysis.

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{frog.eps}
\caption{Ideological separation in training and test set.}
\end{figure}

\subsection{Combination of Media Items}

In a next step, we conducted association rule mining on the media space to guide our exploration of the autoencoder embeddings, restricting the consequent of each rule to be either party affiliation or self-reported ideology associated with each observation. Association rules are derived from the domain of market basket analysis and provide, among other features, a numerical measure for the confidence in the co-occurrence of given binary variables. Commonly operating over large dataspaces, association rule mining aims at extracting interesting rules of the type *Item A* + *Item B* + … -> *Item C*, where interestingness is defined in terms of a pre-specified performance metric. As a primary metric we chose the so-called lift value which designates improvement over a random choice model. Within the restricted set of rules, we inspected those with a lift higher than 1.5. A set of high-confidence association rules extracted in this way for a conservative consequent takes the following form:

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{frog.eps}
\caption{Association rules with conservative ideology as RHS.}
\end{figure}

Interestingly, a search over moderate consequents yields less useful rules, indicated by considerably lower lift and confidence values. A confidence value of around 0.33 indicates that of all rules containing the antecedent, only 33\% have moderate as a consequent. Given that only 894 of 4270 (about 20\%) of the respondents self-reported moderate as their ideology, this still seems like an improvement over a random choice model.

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{frog.eps}
\caption{Association rules with moderate ideology as RHS.}
\end{figure}

In our analysis we used association rules mainly to provide us with interesting but unintuitive combinations of consumed media associated with a given ideology or party affiliation. This idea is illustrated in the figure below. Inspected in isolation, the viewership of the politically conservative TV show *Hannity* clearly clusters in the ideologically conservative portion of the autoencoder space while *NCIS*, at face value an unpolitical entertainment format, is spread over its entire range.

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{frog.eps}
\caption{Comparision of TV shows watched: Sean Hannity and NCIS.}
\end{figure}

In response to relatively higher confidence values of the association rule *Hannity* + *NCIS* -> *Ideology: conservative* compared to *Hannity* alone as an antecedent, we once more surveyed the autoencoder space, this time coloring the intersection of *Hannity* and *NCIS* viewers. As expected, a number of outliers that cannot be unambiguously associated with the conservative portion of the autoencoder space cease to be part of the selection. This, however, comes at the cost of reducing the number of observations present in our visualization.

In order to probe the utility of intersections of different media items based on our intuitions about combinations of partisan media, we examined *Sean Hannity* and shows commonly associated with conservative ideology. As expected, the intersection of *Hannity*, *The O-Reilly Factor* and *On the Record with Greta Van Susteren* clearly picks out a cluster of observations in the conservative range of our dimension-reduced dataspace.

What is surprising, however, is the similarity between the combinations of three conservative shows and that of *Hannity* and a seemingly unpolitical entertainment format. Interestingly, the number of observations that fall into the intersection of the three political shows is visibly higher than that of *Hannity* and *NCIS*. It is plausible that the latter combination picks out a specific subset of conservative viewers. The nature of the distinction between the two groups other than a predilection for the crime genre, however, can only be surmised. A hypothetical ideological factor underlying this tendency could, for instance, be a positive attitude towards police authority.

\begin{figure}
\centering
\includegraphics[width=.8\linewidth]{frog.eps}
\caption{Comparision of TV shows watched: Hannity and NCIS vs. Hannity, NCIS and OTR.}
\end{figure}

% Bibliography
\bibliography{UML}

\end{document}