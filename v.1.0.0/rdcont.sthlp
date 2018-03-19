{smcl}
{* *! version 1.0.0 18feb2018}{...}
{cmd:help rdcont}
{hline}

{title:Title}

    {hi:rdcont} {c -} Non-randomized approximate sign test of density continuity

{title:Syntax}
{p 8 17 2}
{cmd:rdcont} {it:running_var} [{opt if}] [{opt in}]{cmd:,}
  [{it:options}]

{synoptset 22 tabbed}{...}
{synopthdr}
{synoptline}
{syntab:{help rdcont##options:Options}}
{synopt:{opt alpha(real)}} specify critical value for calculation of optimal bandwidth {p_end}
{synopt:{opt threshold(real)}} specify cutoff value for the test {p_end}
{synopt:{opt q:band(real)}} specify a fixed bandwidth size {p_end}
{synoptline}
{p2colreset}{...}

{title:Description}

{pstd}
Regression discontinuity designs operate under the assumption that the running variable
is continuous at a threshold. {cmd:rdcont} tests that assumption using a non-randomized 
approximate sign test, as per Bugni and Canay (2018). 
{p_end}

{marker options}
{title:Options}
{marker options}
{dlgtab:Options}

{marker alpha}{...}
{phang}
{opt alpha(real)} specifies a critical value for the calculation of the optimal {it:q} as advised in 
Bugni and Canay (2018), referred to in the paper as q_irot. If left unspecified, the default
value is 0.05. Cannot be specified with {opt qband}. {p_end}

{marker threshold}{...}
{phang}
{opt threshold(real)} specifies the threshold at which to test discontinuity. If left unspecified, 
 the default value is 0. {p_end}

{marker qband}{...}
{phang}
{opt q:band(real)} specifies a fixed {it:q} rather than following the advised {it:q} value from 
Bugni and Canay (2018). Cannot be specified with {opt alpha}. {p_end}

{title:Saved Results}

{phang}
{cmd:rdcont} saves the following in {cmd:r()}:{p_end}

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: Scalars}{p_end}
{synopt:{cmd:r(lb)}} Running variable value corresponding to the left bound of the test bandwidth{p_end}
{synopt:{cmd:r(ub)}} Running variable value corresponding to the right bound of the test bandwidth{p_end}
{synopt:{cmd:r(N_r)}} Number of observations to the right of the threshold{p_end}
{synopt:{cmd:r(N_l)}} Number of observations to the left of the threshold{p_end}
{synopt:{cmd:r(c)}} Running variable threshold{p_end}
{synopt:{cmd:r(q_l)}} Number of observations in the bandwidth to the left of the threshold {p_end}
{synopt:{cmd:r(q_r)}} Number of observations in the bandwidth to the right of the threshold {p_end}
{synopt:{cmd:r(q)}} Number of observations in the bandwidth{p_end}
{synopt:{cmd:r(N)}} Number of observations{p_end}
{synopt:{cmd:r(p)}} {it:p}-value corresponding to the approximate sign test{p_end}
{p2colreset}{...}

{title:Author}

{phang}
Joe Long{p_end}
{phang}
jlong@u.northwestern.edu
{p_end}

{title:References}

{phang}
Bugni, Federico A. and Ivan A. Canay. (2018) "Testing Continuity of a Density via {it:g}-order 
statistics in the Regression Discontinuity Design." 
