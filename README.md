# The Bioconductor training committee

The Bioconductor training committee is a collaborative effort to
consolidate Bioconductor-focused training material and establish
a community of Bioconductor trainers. We define a curriculum and
implement online lessons for beginner and more advanced R users
who want to learn to analyse their data with Bioconductor packages.

The Bioconductor training committee reports to the Bioconductor
[Community Advisory Board](http://bioconductor.org/about/community-advisory-board/).
It is currently chaired by Charlotte Soneson and Laurent Gatto.
There’s no formal joining process or minimum commitment required — simply attend one of the monthly meetings (announced on the Google group, see below) or engage in our discussions to become a part of our community.

This meta-repository is used for general discussions. The respective
lessons are developed as modules in their own repositories.

## Modules

- [bioc-intro](https://carpentries-incubator.github.io/bioc-intro/)
  The **Data science** lesson is based on the [Carpentries Ecology
  Curriculum](https://datacarpentry.org/lessons/#ecology-workshop). There
  are no pre-requisites for this module, and the materials assume no
  prior knowledge about R and Bioconductor. It introduces R, RStudio,
  teaches data cleaning, management, analysis, and visualisation and
  introduces some Bioconductor concepts. Notes are collated in
  `bioc-intro.md` in this repo.

- [bioc-rnaseq](https://carpentries-incubator.github.io/bioc-rnaseq/)
 **Analysis and interpretation of bulk RNA-Sequencing data using
  Bioconductor** shows how to use Bioconductor packages to analyse
  RNA-Seq data. It expects good familiarity with R and the
  Bioconductor project.

- [bioc-project](https://carpentries-incubator.github.io/bioc-project/)
  The **Bioconductor project** lesson provides an introduction to the
  Bioconductor project such as the Bioconductor home page, packages,
  package landing pages, and package vignettes, where to find help,
  Bioconductor workflows, Bioconductor release schedule and versions,
  some core infrastructure, ... It is meant to be use in combination
  with other modules as part of a wider workshop.

### New lessons

If you are interested in contributing new lessons or Carpentry modules,
feel free to get in touch with the teaching committee via slack of the
google group (see below). We would be happy to discuss and/or contribute
to anything related to the lesson design, general help with the long-term
maintenance, dissemination of the lesson, or any help/topic you can think of.

## Material design and maintenance

### Lesson design

- Use RStudio for teaching.
- If possible, finish lessons with a *Next steps* section to highlight
  other relevant Bioconductor lessons. Similarly, in the Summary and
  Setup section, refer to other Bioconductor lessons that cover the
  pre-requisites.
- Whenever relevant, use Bioconductor recommended/maintained classes.
- Package installation: favour `BiocManager::install()` for all
  packages.
- The bioc-intro lesson, which is based on the Ecology lesson, focuses
  on the tidyverse.

### Maintenance

**Maintenance team** Each Bioconductor lesson has at least one
maintainer, and more generally a team of instructors that built and
adviser on the maintenance of the lesson collaboratively. The
maintainer is the person that takes responsibility for merging the PRs
and fixing build issues if/when they happen. The Carpentries
Curriculum Advisory Committee Consultation Rubric provides a template
as to how to address changes to the lessons.

**Contributing and handling minor changes** For minor changes such as
typos or simple rephrasing can be submitted directly through a Github
pull request. The lesson maintainer can assess the PR, ask for
clarifications or amendments and eventually merge the pull request.

**Contributing and handling big changes** For more substantial changes,
we advise to first open an issue to discuss these changes with the
maintainer, the team that created the lesson, and other instructors
that have experience teaching the episode. A pull request for such a
more substantial change (and here, we deliberately don’t define them
explicitly and leave it to the lesson maintainer to assess the
importance), would be discussed in (1) the Github pull request and/or
(2) on the bioconductor-teaching google group and/or, if necessary (3)
during a Bioconductor teaching monthly meeting. For the latter, it
would be recommended that at least 2 to 3 people that were part in the
design of the lesson and/or that have teaching experience would be
present in addition to the lesson maintainer. The PR submitter is also
welcome to join the discussion.


## Notes and meetings

- Collaborative [Google
  doc](https://docs.google.com/document/d/1s2QMk5XA-uhBVprAO3ZDk1Yfv1cnUWLp9zdvYq9Feu4/edit#).

## Discussions

- The `education-and-training` channel on the [Bioconductor community
  slack](https://slack.bioconductor.org/).
- The [Google group](https://groups.google.com/g/bioconductor-teaching/) (low-traffic, mainly used to send a reminder for the monthly meeting).  

## Events

Explore upcoming opportunities and past Bioconductor workshops and training sessions on our [events page](https://www.bioconductor.org/help/events/). Interested in sharing your own Bioconductor training event with the community? Learn how to add your event directly through this page.  

## Contact

If you are interested in this project and want to get in touch or
participate, please contact the group via the Google group or
individual members on slack or by email.
