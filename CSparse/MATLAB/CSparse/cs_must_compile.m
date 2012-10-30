function [s, t, tobj] = cs_must_compile (srcdir, f, suffix, obj, hfile, force)
%CS_MUST_COMPILE return 1 if source code f must be compiled, 0 otherwise
%   Used by cs_make, and MATLAB/Test/cs_test_make.m.  Not meant for end users.

%   Copyright 2006, Timothy A. Davis.
%   http://www.cise.ufl.edu/research/sparse

dobj = dir ([f obj]) ;
if (force || isempty (dobj))
    s = 1 ;
    t = Inf ;
    tobj = -1 ;
    return
end
dsrc = dir ([srcdir f suffix '.c']) ;
dh = dir (hfile) ;
t = max (datenum (dsrc.date), datenum (dh.date)) ;
tobj = datenum (dobj.date) ;
s = (tobj < t) ;
end

