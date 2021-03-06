% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/process.R
\name{compareTargetSeqs}
\alias{compareTargetSeqs}
\title{Compare target sequences with those found flanking incorporation sites}
\usage{
compareTargetSeqs(
  gr.with.sequences, seq.col, target.seqs, tolerance = 6L,
  nuc.profile = NULL, submat = NULL, upstream.flank, downstream.flank
)
}
\arguments{
\item{gr.with.sequences}{GRanges object with a metadata column, specified by
`seq.col`, that contains sequences for the range.}

\item{seq.col}{character string indicating the metadata column containing
sequence information for the range.}

\item{target.seqs}{a list of target sequences to compare against the ranges.}

\item{tolerance}{integer specifying the number of mismatches tolerated for a
target sequence alignment.}

\item{nuc.profile}{a listed object with the following named objects: "PAM" is
a character string specifying the PAM sequence (ambiguous nucleotides
allowed, FALSE if no PAM sequence), "PAM_Loc" or PAM location with respect to
the target sequences ('5p', '3p', or FALSE), "PAM_Tol" is a positive integer
value specifying the allowed mismatch in the PAM sequence alignment (will be
ignored if PAM is FALSE), "Editing" is a character string indicating if
editing by the nuclease is "upstream", "downstream", or "internal" with
repect to the PAM sequence (or target sequence if PAM is FALSE), "Cut_Offset"
is an integer value specifying the nucleotide from the 5' nucleotide of the
PAM sequence (or target sequence if PAM is FALSE) to call the predicted edit
site (positive indicates downstream and negative indicates upstream, can also
specify "mid_insert" to indicate the middle of two paired alignments),
"Insert_size" may be an integer value (15) or a string that will be converted
into a range ("15:20") indicating the distance between two paired alignments
for editing (relates to TALEN and other dual-nickase systems).}

\item{submat}{matrix that functions as the substitution matrix for sequence
alignment scores. Typically binary to calculate exact mismatches.}

\item{upstream.flank, downstream.flank}{integer value specifying the distance
that was previously used to capture sequences flanking the incorporation
sites.}
}
\description{
Scan through sequences flanking incorporation sites for matches
to target sequences and PAM motifs (if appliciable). This will create an all
by all comparison and return a GRanges object with the input information and
additional metadata cols with matching information.
}
\author{
Christopher Nobles, Ph.D.
}
