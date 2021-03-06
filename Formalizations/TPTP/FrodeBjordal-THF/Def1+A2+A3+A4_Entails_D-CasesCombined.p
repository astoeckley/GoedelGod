
%------------------------------------------------------------------------------
%----Axioms for Quantified Modal Logic KB.
include('Quantified_S4.ax').

%------------------------------------------------------------------------------

%----constant symbol for positive: p
thf(p_tp,type,(
    p: ( mu > $i > $o ) > $i > $o )).

%----constant symbol for God-like: g
thf(g_tp,type,(
    g: mu > $i > $o )).

%----D Case1   
thf(axDCase1,axiom,
    ( v
    @ ( mforall_indset
      @ ^ [F: mu > $i > $o] :
          ( mimplies
          @ ( mbox
            @ ( mforall_ind
              @ ^ [X: mu] :
                  ( mimplies @ ( g @ X ) @ ( F @ X ) ) ) )
          @ ( p @ F ) ) ) )).   

%----D Case2   
thf(axDCase2,axiom,
    ( v
    @ ( mforall_indset
      @ ^ [F: mu > $i > $o] :
          ( mimplies
          @ ( p @ F ) 
          @ ( mbox
            @ ( mforall_ind
              @ ^ [X: mu] :
                  ( mimplies @ ( g @ X ) @ ( F @ X ) ) ) ) ) ) )).

%----D: Frode Bjordal's definition D: F is a positive property iff it is necessarily
%----the case that anything which is god-like has the property F.
thf(conD,conjecture,
    ( p
    = ( ^ [F: mu > $i > $o] :
          ( mbox
          @ ( mforall_ind
            @ ^ [X: mu] :
                ( mimplies @ ( g @ X ) @ ( F @ X ) ) ) ) ) )).   

   
