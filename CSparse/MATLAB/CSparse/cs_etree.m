function [parent, post] = cs_etree (A, mode)
%CS_ETREE elimination tree of A or A'*A.
%   parent = cs_etree (A) returns the elimination tree of A.
%   parent = cs_etree (A,'col') returns the elimination tree of A'*A.
%   parent = cs_etree (A,'sym') is the same as cs_etree(A).
%   For the symmetric case (cs_etree(A)), only triu(A) is used.
%
%   [parent,post] = cs_etree(...) also returns a postorder of the tree.
%
%   See also ETREE, TREEPLOT.

%   Copyright 2006, Timothy A. Davis.
%   http://www.cise.ufl.edu/research/sparse

error ('cs_etree mexFunction not found') ;
