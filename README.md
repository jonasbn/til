<!-- omit from toc -->
# Today I Learned
<!-- omit from toc -->

![Markdownlint Action Status Badge](https://github.com/jonasbn/til/actions/workflows/markdownlint.yml/badge.svg)
![Spellcheck Action Status Badge](https://github.com/jonasbn/til/actions/workflows/spellcheck.yml/badge.svg)

## Table of Contents

- [Table of Contents](#table-of-contents)
- [Categories](#categories)
  - [ack - an alternative to grep](#ack---an-alternative-to-grep)
  - [afplay - play audio files from the commandline on macOS](#afplay---play-audio-files-from-the-commandline-on-macos)
  - [ag - also known as the Silversurfer, fast alternative to ack and grep](#ag---also-known-as-the-silversurfer-fast-alternative-to-ack-and-grep)
  - [Bash - the Bourne Again Shell](#bash---the-bourne-again-shell)
  - [Bootstrap - web framework for fast prototyping](#bootstrap---web-framework-for-fast-prototyping)
  - [Bruno - an alternative to Postman](#bruno---an-alternative-to-postman)
  - [C - compiled programming language](#c---compiled-programming-language)
  - [carton - tools for handling Perl distributions and dependencies local to a project](#carton---tools-for-handling-perl-distributions-and-dependencies-local-to-a-project)
  - [chezmoi - dot filer manager](#chezmoi---dot-filer-manager)
  - [chrome - browser also known as chromium](#chrome---browser-also-known-as-chromium)
  - [clang - project for tools for building C, C++ and Objective-C](#clang---project-for-tools-for-building-c-c-and-objective-c)
  - [colortail - colorful variation of tail](#colortail---colorful-variation-of-tail)
  - [CPAN - Perl packages and distributions repository](#cpan---perl-packages-and-distributions-repository)
  - [cpanm - a fast CPAN module installer](#cpanm---a-fast-cpan-module-installer)
  - [cpm - alternative to cpanm](#cpm---alternative-to-cpanm)
  - [crates - Rust packages](#crates---rust-packages)
  - [cron - schedule and repeat jobs](#cron---schedule-and-repeat-jobs)
  - [css - cascading style sheets, used for styling HTML](#css---cascading-style-sheets-used-for-styling-html)
  - [curl - a commandline tool for transferring data with URL syntax](#curl---a-commandline-tool-for-transferring-data-with-url-syntax)
  - [Dash.app - an alternative browser to the built-in documentation in macOS and other resources](#dashapp---an-alternative-browser-to-the-built-in-documentation-in-macos-and-other-resources)
  - [date - see dates and time on the command line](#date---see-dates-and-time-on-the-command-line)
  - [Debian - popular Linux distribution](#debian---popular-linux-distribution)
  - [diff-so-fancy - a diff alternative](#diff-so-fancy---a-diff-alternative)
  - [DigitalOcean - a hosting provider, caring about open source](#digitalocean---a-hosting-provider-caring-about-open-source)
  - [Docker - containerization](#docker---containerization)
  - [DockerHub - a repository for Docker images](#dockerhub---a-repository-for-docker-images)
  - [Dropbox - a cloud storage provider, integrates well with macOS](#dropbox---a-cloud-storage-provider-integrates-well-with-macos)
  - [dzil - Dist::Zilla, a Perl distribution builder](#dzil---distzilla-a-perl-distribution-builder)
  - [EditorConfig - tool for generic text editor configuration](#editorconfig---tool-for-generic-text-editor-configuration)
  - [entr - run arbitrary commands when files change](#entr---run-arbitrary-commands-when-files-change)
  - [exa/eza - an alternative to the ls command](#exaeza---an-alternative-to-the-ls-command)
  - [fd - a fast alternative to find](#fd---a-fast-alternative-to-find)
  - [FileMerge.app - a diff tool for macOS](#filemergeapp---a-diff-tool-for-macos)
  - [find - find files and directories on the command line](#find---find-files-and-directories-on-the-command-line)
  - [Git - version control system](#git---version-control-system)
  - [git-delta - an commandline diff tool, also known as delta](#git-delta---an-commandline-diff-tool-also-known-as-delta)
  - [GitHub - platform for hosting Git repositories](#github---platform-for-hosting-git-repositories)
  - [GitHub Actions - automate your GitHub work and repositories](#github-actions---automate-your-github-work-and-repositories)
  - [GnuPG - PGP tools, GNU variant](#gnupg---pgp-tools-gnu-variant)
  - [Go - compiled programming language](#go---compiled-programming-language)
  - [grep - see also ag or ack](#grep---see-also-ag-or-ack)
  - [Hacking - No Comment](#hacking---no-comment)
  - [Homebrew - package manager for macOS (and Linux)](#homebrew---package-manager-for-macos-and-linux)
  - [HTML - HyperText Markup Language](#html---hypertext-markup-language)
  - [httpie - an alternative to curl](#httpie---an-alternative-to-curl)
  - [irssi - for all your IRC needs](#irssi---for-all-your-irc-needs)
  - [iTerm.app - an alternative to Terminal.app](#itermapp---an-alternative-to-terminalapp)
  - [JavaScript - see also Node.js](#javascript---see-also-nodejs)
  - [Jenkins - a continuous integration server](#jenkins---a-continuous-integration-server)
  - [Jira - issue tracking and project management](#jira---issue-tracking-and-project-management)
  - [jq - a lightweight and flexible command-line JSON processor](#jq---a-lightweight-and-flexible-command-line-json-processor)
  - [JSON - see also XML and YAML](#json---see-also-xml-and-yaml)
  - [Kali - a Linux distribution focused on security and penetration testing](#kali---a-linux-distribution-focused-on-security-and-penetration-testing)
  - [Liquid Prompt - see also Starship](#liquid-prompt---see-also-starship)
  - [macOS - see OSX](#macos---see-osx)
  - [Mail.app - the default mail client on macOS](#mailapp---the-default-mail-client-on-macos)
  - [Markdown - basic markup language, great for documentation](#markdown---basic-markup-language-great-for-documentation)
  - [markdownlint - a tool for linting Markdown](#markdownlint---a-tool-for-linting-markdown)
  - [Mermaid - awesome tool for generating diagrams from text](#mermaid---awesome-tool-for-generating-diagrams-from-text)
  - [Mojolicious - a Perl web framework](#mojolicious---a-perl-web-framework)
  - [MySQL - a relational database](#mysql---a-relational-database)
  - [Nginx - a webserver, proxy and load-balancer](#nginx---a-webserver-proxy-and-load-balancer)
  - [npm - Node.js package manager](#npm---nodejs-package-manager)
  - [OpenAPI - a specification for describing RESTful APIs, see also Swagger](#openapi---a-specification-for-describing-restful-apis-see-also-swagger)
  - [OpenSSL - a toolkit for SSL and TLS](#openssl---a-toolkit-for-ssl-and-tls)
  - [Oracle - a relational database](#oracle---a-relational-database)
  - [OSX - the operating system for Macs - now known as macOS](#osx---the-operating-system-for-macs---now-known-as-macos)
  - [Perl - Swiss Army Knife of programming languages](#perl---swiss-army-knife-of-programming-languages)
  - [Perlbrew - a tool for managing multiple Perl installations](#perlbrew---a-tool-for-managing-multiple-perl-installations)
  - [Perltidy - tidy all your Perl](#perltidy---tidy-all-your-perl)
  - [Postgresql - a relational database](#postgresql---a-relational-database)
  - [Programming - general programming tips](#programming---general-programming-tips)
  - [Probot - a framework for building GitHub Apps](#probot---a-framework-for-building-github-apps)
  - [Prolog - a logic programming language](#prolog---a-logic-programming-language)
  - [Python - an interpreted programming language](#python---an-interpreted-programming-language)
  - [qalc - an easy to use command line calculator](#qalc---an-easy-to-use-command-line-calculator)
  - [Regexp - regular expressions](#regexp---regular-expressions)
  - [Renovate - a bot for automating dependency updates](#renovate---a-bot-for-automating-dependency-updates)
  - [REST - Representational State Transfer, a popular approach to building APIs](#rest---representational-state-transfer-a-popular-approach-to-building-apis)
  - [rm - remove files and directories on the command line](#rm---remove-files-and-directories-on-the-command-line)
  - [Ruby - an interpreted programming language](#ruby---an-interpreted-programming-language)
  - [Rust - a compiled programming language](#rust---a-compiled-programming-language)
  - [sed - stream editor](#sed---stream-editor)
  - [Shell - general shell tips](#shell---general-shell-tips)
  - [shellcheck - a linter for shell scripts](#shellcheck---a-linter-for-shell-scripts)
  - [Slack - a collaboration tool](#slack---a-collaboration-tool)
  - [smartcd - a tool for running commands when changing directories](#smartcd---a-tool-for-running-commands-when-changing-directories)
  - [Sublime Text 3 - see also VSCode](#sublime-text-3---see-also-vscode)
  - [Subversion - do see Git](#subversion---do-see-git)
  - [SQL - Structured Query Language](#sql---structured-query-language)
  - [SQL Developer - a GUI tool for Oracle](#sql-developer---a-gui-tool-for-oracle)
  - [SQLite - a lightweight relational database](#sqlite---a-lightweight-relational-database)
  - [sqlplus - the CLI tool for Oracle](#sqlplus---the-cli-tool-for-oracle)
  - [SSH - Secure Shell](#ssh---secure-shell)
  - [Starship - nifty prompt and an alternative to Liquid Prompt](#starship---nifty-prompt-and-an-alternative-to-liquid-prompt)
  - [Swagger - tool for describing RESTful APIs, see also OpenAPI](#swagger---tool-for-describing-restful-apis-see-also-openapi)
  - [Swift - a compiled programming language from Apple](#swift---a-compiled-programming-language-from-apple)
  - [tar - a tool for archiving files](#tar---a-tool-for-archiving-files)
  - [Terminal.app - do see iTerm.app](#terminalapp---do-see-itermapp)
  - [tldr - Too Long; Didn't Read, so use tldr](#tldr---too-long-didnt-read-so-use-tldr)
  - [tmux - an alternative to screen](#tmux---an-alternative-to-screen)
  - [tokei - language statistics - fast](#tokei---language-statistics---fast)
  - [Ubuntu - a Linux distribution based on Debian](#ubuntu---a-linux-distribution-based-on-debian)
  - [ufw - Uncomplicated Firewall](#ufw---uncomplicated-firewall)
  - [vim - a text editor](#vim---a-text-editor)
  - [VSCode / Visual Studio Code](#vscode--visual-studio-code)
  - [VMware Fusion - a virtualization tool for macOS](#vmware-fusion---a-virtualization-tool-for-macos)
  - [Vue - a JavaScript framework](#vue---a-javascript-framework)
  - [WSL 1/2 - Windows Subsystem for Linux](#wsl-12---windows-subsystem-for-linux)
  - [wtf util - a tool for the command line for visualising important information](#wtf-util---a-tool-for-the-command-line-for-visualising-important-information)
  - [XML - see also YAML and JSON](#xml---see-also-yaml-and-json)
  - [YAML - see also XML and JSON](#yaml---see-also-xml-and-json)
  - [z - for jumping around in the file structures, an alternative to cd](#z---for-jumping-around-in-the-file-structures-an-alternative-to-cd)
  - [zoxide - an alternative to z](#zoxide---an-alternative-to-z)
  - [zsh - another shell than bash](#zsh---another-shell-than-bash)
  - [XSLT](#xslt)
- [About](#about)
- [Additional TIL Collections](#additional-til-collections)
- [License](#license)

<a id="categories"></a>
## Categories

<a id="ack"></a>
### ack - an alternative to grep

- [Install ack](ack/install_ack.md)
- [Define a custom search filetype scope](ack/define_a_custom_search_filetype_scope.md)

<a id="afplay"></a>
### afplay - play audio files from the commandline on macOS

- [RTFM](afplay/rtfm.md)

<a id="ag"></a>
### ag - also known as the Silversurfer, fast alternative to ack and grep

- [Use ag](ag/use_ag.md)

<a id="bash"></a>
### Bash - the Bourne Again Shell

- [Use bash](bash/use_bash.md)
- [Implement tab completions](bash/implement_tab_completions.md)
- [Inputting danish characters](bash/inputting_danish_characters.md)
- [Repeating an executable continuously](bash/repeating_an_executable_continuously.md)
- [Slimming history](bash/slimming_history.md)
- [Reading arguments from the command line](bash/reading_cli_arguments.md)
- [Copy a file to multiple directories](bash/copy_a_file_to_multiple_directories.md)
- [Replace a file in multiple directories](bash/replace_a_file_in_multiple_directories.md)
- [Create directory for own bash completions](bash/create_dir_for_own_completions.md)
- [Edit Complex CLI in Editor](bash/edit_complex_cli_in_editor.md)
- [Use fzf](bash/use_fzf.md)
- [Use Colours In Terminal Output](bash/use_colours_in_terminal_output.md)
- [How to get last return value](bash/how_to_get_last_return_value.md)
- [Getting Process-id of a Child Proces](bash/getting_process_id_of_child_process.md)
- [Grep STDERR](bash/grep_stderr.md)
- [Use Bashmarks](bash/use_bashmarks.md)
- [Use z](bash/use_z.md)
- [Write safe shell scripts](bash/write_safe_shell_scripts.md)
- [Glob expanding to all files in current directory recursively](bash/glob_expanding_to_all_files_in_current_directory_recursively.md)

<a id="bootstrap"></a>
### Bootstrap - web framework for fast prototyping

- [Prevent wrapping of contents of code tags](bootstrap/prevent_wrapping_of_contents_of_code_tags.md)

<a id="bruno"></a>
### Bruno - an alternative to Postman

- [Use Bruno](bruno/use_bruno.md)

<a id="c"></a>
### C - compiled programming language

- [Inspect your C using Godbolt](c/inspect_your_c_using_godbolt.md)

<a id="carton"></a>
### carton - tools for handling Perl distributions and dependencies local to a project

- [Use carton](carton/use_carton.md)
- [Pass flags to arguments to exec](carton/pass_flags_to_arguments_to_exec.md)
- [Update snapshot cpanfile](carton/update_snapshot_cpanfile.md)
- [Use PERL_CARTON_MIRROR](carton/use_perl_carton_mirror.md)

<a id="chezmoi"></a>
### chezmoi - dot filer manager

- [Install chezmoi](chezmoi/install_chezmoi.md)
- [Use chezmoi](chezmoi/use_chezmoi.md)

<a id="chrome"></a>
### chrome - browser also known as chromium

- [Add search shortcuts](chrome/add_search_shortcuts.md)

<a id="clang"></a>
### clang - project for tools for building C, C++ and Objective-C

- [Diagnostic flags in Clang](clang/diagnostic_flags.md)

<a id="colortail"></a>
### colortail - colorful variation of tail

- [use colortail](colortail/use_colortail.md)

<a id="cpan"></a>
### CPAN - Perl packages and distributions repository

- [Use CPAN](cpan/use_cpan.md)
- [Data::FormValidator](cpan/data-formvalidator.md)
- [File::Find](cpan/file-find.md)
- [Test::Pretty](cpan/test-pretty.md)
- [Parsing Gitignore](cpan/parsing_gitignore.md)
- [Install DateTime::Astro](cpan/install_datetime_astro.md)
- [Getopt::Long](cpan/getopt-long.md)

<a id="cpanm"></a>
### cpanm - a fast CPAN module installer

- [Use cpanm](cpanm/use_cpanm.md)
- [Use cpanm with cpanfile](cpanm/use_cpanm_with_cpanfile.md)
- [Use cpanm with Module::Build](cpanm/use_cpanm_with_module-build.md)
- [Use cpanm with CPAN::Mini](cpanm/use_cpanm_with_cpan-mini.md)
- [Use cpanm with carton](cpanm/use_cpanm_with_carton.md)
- [Tailing cpanm build log file](cpanm/tailing_cpanm_build_logfile.md)

<a id="cpm"></a>
### cpm - alternative to cpanm

- [Use cpm](cpm/use_cpm.md)
- [Use cpm with cpanfile](cpm/use_cpm_with_cpanfile.md)

<a id="crates"></a>
### crates - Rust packages

- [colored](crates/colored.md)

<a id="cron---schedule-jobs"></a>
### cron - schedule and repeat jobs

- [Scheduling with cron](cron/scheduling_with_cron.md)

<a id="css"></a>
### css - cascading style sheets, used for styling HTML

- [Making sure you are using alt tags](css/making_sure_you_are_using_alt_tags.md)
- [CSS Properties](css/properties.md)

<a id="curl"></a>
### curl - a commandline tool for transferring data with URL syntax

- [More POST Parameters](curl/more_post_parameters.md)
- [Handling shell sensitive characters in URL](curl/handling_shell_sensitive_characters_in_url.md)
- [Pipe output to less](curl/pipe_output_to_less.md)
- [Use a cheatsheet](curl/use_a_cheatsheet.md)
- [Using curl with Graphql server](curl/using_curl_with_graphql_server.md)
- [Specify method](curl/specify_method.md)
- [Get statuscode](curl/get_status_code.md)
- [Handle gzip](curl/handle_gzip.md)
- [How to handle location header](curl/how_to_handle_location_header.md)
- [Ignore self signed certificates](curl/ignore_self_signed_certificates.md)

<a id="dashapp"></a>
### Dash.app - an alternative browser to the built-in documentation in macOS and other resources

- [Query Dash from the CLI](dashapp/query_dash_from_the_cli.md)

<a id="date"></a>
### date - see dates and time on the command line

- [Getting time in another timezone](date/getting_time_in_another_timezone.md)

<a id="debian"></a>
### Debian - popular Linux distribution

- [How to enquire version](debian/how_to_enquire_version.md)
- [Add user to sudoers group](debian/add_user_to_sudoers.md)
- [Resolve conflicting values in Debian package](debian/resolve_conflicting_values_in_package.md)
- [Install unauthenticated package](debian/install_unauthenticated_package.md)
- [Translate release names](debian/translate_release_names.md)

<a id="diff-so-fancy"></a>
### diff-so-fancy - a diff alternative

- [use diff-so-fancy](diff-so-fancy/use_diff_so_fancy.md)
- [One-time Disable of diff-so-fancy for Git](diff-so-fancy/one-time_disable_dsf_for_git.md)

<a href="digitalocean"></a>
### DigitalOcean - a hosting provider, caring about open source

- [Monitor billing](digitalocean/monitor_billing.md)
- [Use doctl](digitalocean/use_doctl.md)
- [Serving Static Files From a Go App](digitalocean/serving_static_files_from_a_go_app.md)

<a id="docker"></a>
### Docker - containerization

- [Use Docker](docker/use_docker.md)
- [Mount shared folder](docker/mount_shared_folder.md)
- [Use shell to inspect filesystem of layer](docker/use_shell_for_layer.md)
- [How to read files and stdout from a running docker container](docker/how_to_read_files_and_stdout_from_a_running_docker_container.md)
- [Use ctop](docker/use_ctop.md)
- [Define default network addresses used for containers](docker/define_default_network_addresses_used_for_containers.md)
- [Copy a file from your container to the host operating system](docker/copy_a_file_from_your_container_to_the_host.md)
- [Caching Docker build step](docker/caching_build_step.md)
- [Show layers of Docker image](docker/show_layers_of_docker_image.md)
- [What is the difference between RUN and CMD](docker/what_is_the_difference_between_run_and_cmd.md)
- [Automatically Clean up after Docker Daily](docker/automatically_clean_up_after_docker.md)
- [Customize your docker ps output](docker/customize_your_docker_ps_output.md)
- [Use docker-compose-wait](docker/use_docker-compose-wait.md)
- [Silence Warnings from Postgres](docker/silence_warnings_from_postgres.md)
- [Debugging a b0rken Docker build step](docker/debugging_a_broken_docker_build_step.md)
- [exec error](docker/exec_error.md)
- [Docker on Windows](docker/docker_on_windows.md)

<a id="dockerhub"></a>
### DockerHub - a repository for Docker images

- [Publish an image to DockerHub](dockerhub/publish_an_image_to_dockerhub.md)
- [Use Long Names for Your Base Images](dockerhub/use_long_names_for_your_base_images.md)
- [Use hub-tool](dockerhub/use_hub-tool.md)

<a id="dropbox"></a>
### Dropbox - a cloud storage provider, integrates well with macOS

- [Download instead of playing multimedia file from Dropbox](dropbox/download_multimedia.md)
- [Ignore certain files](dropbox/ignore_certain_files.md)

<a id="dzil"></a>
### dzil - Dist::Zilla, a Perl distribution builder

- [Make coverage tests](dzil/use_cover.md)
- [Use cpanfile](dzil/cpanfile.md)
- [Run a single test](dzil/run_a_single_test.md)

<a id="editorconfig"></a>
### EditorConfig - tool for generic text editor configuration

- [Use EditorConfig](editorconfig/use_editorconfig.md)
- [Enforce EditorConfig using eclint](editorconfig/enforce_editorconfig_config_using_eclint.md)
- [Perl](editorconfig/perl.md)
- [XML](editorconfig/xml.md)
- [Markdown](editorconfig/markdown.md)

<a id="entr"></a>
### entr - run arbitrary commands when files change

- [Run arbitrary commands when files change using entry](entr/run_arbitrary_commands_when_files_change_using_entr.md)

<a id="exa"></a>
### exa/eza - an alternative to the ls command

- [Use exa](exa/use_exa.md)

<a id="fd"></a>
### fd - a fast alternative to find

- [use fd](fd/use_fd.md)

<a id="filemergeapp"></a>
### FileMerge.app - a diff tool for macOS

- [User Filemerge from the commandline](filemergeapp/use_filemerge_from_cli.md)

### find - find files and directories on the command line

- [Searching Found Files in Found Directories](find/searching_found_files_in_found_directories.md)

<a id="git"></a>
### Git - version control system

- [Resolve conflicts involving binary files](git/resolve_conflicts_involving_binary_files.md)
- [Delete local and remote branch](git/delete_local_and_remote_branch.md)
- [Set your email for a repository](git/set_your_email_for_a_repo.md)
- [Delete local and remote tags](git/delete_local_and_remote_tags.md)
- [Create a branch from a tag](git/create_branch_from_tag.md)
- [Correct a commit message](git/correct_a_commit_message.md)
- [Update a branch from master](git/update_branch_from_master.md)
- [Rename branch](git/rename_branch.md)
- [Get a cheatsheet](git/get_a_cheatsheet.md)
- [Update fork from original repository](git/update_fork_from_original_repository.md)
- [Tag a specific revision](git/tag_a_specific_revision.md)
- [Make a branch new master](git/make_a_branch_new_master.md)
- [List merged branches](git/list_merged_branches.md)
- [Git Alias to Show Affected Files in Last N Commits](git/git_alias_to_show_files_affected_in_last_commits.md)
- [Output your branches and tags as a tree on the command line](git/output_branches_and_tags_as_a_tree.md)
- [Compare a single file between branches](git/compare_a_single_file_between_branches.md)
- [Rollback a repository to a specific commit](git/rollback_a_repository_to_a_specific_commit.md)
- [Avoid being prompted for password](git/avoid_being_prompted_for_password.md)
- [Rename a tag](git/rename_a_tag.md)
- [Rewrite the last commit message](git/rewrite_last_commit_message.md)
- [Use Git Repository Viewer: grv](git/use_grv.md)
- [Use tig](git/use_tig.md)
- [Update submodule](git/update_submodule.md)
- [Squash merge](git/squash_merge.md)
- [Maintain Multiple Git Identities](git/maintain_multiple_git_ids.md)
- [Find Out Who Created a Branch](git/find_out_who_created_a_branch.md)
- [See a given file at a given commit](git/see_a_given_file_at_a_given_commit.md)
- [Create a branch from an older commit](git/create_a_branch_from_an_older_commit.md)
- [Get Name of Current Branch](git/get_name_of_current_branch.md)
- [Use pre-commit](git/use_pre-commit.md)
- [Ignore Git](git/ignore_git.md)
- [Sort git tags](git/sort_git_tags.md)

<a id="git-delta"></a>
### git-delta - an commandline diff tool, also known as delta

- [Use git-delta](git-delta/use_git-delta.md)

<a id="github"></a>
### GitHub - platform for hosting Git repositories

- [Ignore whitespace changes](github/ignore_whitespace_changes.md)
- [Test Markdown rendering before making public](github/test_markdown_rendering_before_making_public.md)
- [How to get the email address of a github user](github/get_email_of_github_user.md)
- [Use hub](github/use_hub.md)
- [Use emojis](github/use_emojis.md)
- [GitHub Action Badges](github/action_badges.md)
- [Use dependabot](github/use_dependabot.md)
- [Use renovate bot](github/use_renovate.md)
- [Providing Suggestions in Reviews](github/providing_suggestions_in_reviews.md)
- [Use CLI](github/use_cli.md)

<a id="github_actions"></a>
### GitHub Actions - automate your GitHub work and repositories

- [Use spellcheck](github_actions/use_spellcheck.md)
- [Use macOS](github_actions/use_macos.md)
- [Use EditorConfig](github_actions/use_editorconfig.md)
- [Schedule runs](github_actions/schedule_runs.md)
- [Use Dependabot for GitHub Actions](github_actions/use_dependabot_for_github_actions.md)
- [Use Dependabot for Docker](github_actions/use_dependabot_for_docker.md)
- [Use Dependabot for Ruby](github_actions/use_dependabot_for_ruby.md)
- [Use Dependabot for Python](github_actions/use_dependabot_for_python.md)
- [Detect What Files Have Changed](github_actions/detect_what_files_have_changed.md)
- [Pin Your Action Dependencies](github_actions/pin_your_action_dependencies.md)
- [How do I resolve the SHA checksum for pinning](github_actions/how_do_I_resolve_the_sha_checksum.md)
- [Use checkout action](github_actions/use_checkout.md)

<a id="gnupg"></a>
### GnuPG - PGP tools, GNU variant

- [Homebrew GnuPG vs. GPG Mail](gnupg/homebrew_gnupg_vs_gpg_mail.md)

<a id="go"></a>
### Go - compiled programming language

- [Use Go](go/use_go.md)
- [Learn Go](go/learn_go.md)
- [Go Resources](go/resources.md)
- [Reading Documentation](go/reading_documentation.md)
- [Reading benchmark results](go/reading_benchmark_results.md)
- [Skipping tests](go/skipping_tests.md)
- [Colorful test output](go/colorful_test_output.md)
- [Enriched test output](go/enriched_test_output.md)
- [How to sleep](go/how_to_sleep.md)
- [Test Main Function](go/test_main_function.md)
- [Get to know the standard library](go/get_to_know_the_standard_library.md)
- [structs](go/structs.md)
- [Running specific tests](go/running_specific_test.md)
- [Read from STDIN](go/read_from_stdin.md)
- [Use gocritic](go/use_gocritic.md)
- [Working with local packages](go/working_with_local_packages.md)
- [Panic: Flag redefined](go/flag_redefined.md)
- [Multiline strings](go/multiline_strings.md)

<a id="grep"></a>
### grep - see also ag or ack

- [Add colour to grep output](grep/add_colour_to_grep.md)

<a id="hacking"></a>
### Hacking - No Comment

- [Change password on Window 7 Using Kali Linux](hacking/change_password_on_window7_using_kali.md)
- [Wipe a Hard Drive Using Kali Linux](hacking/wipe_a_hard_drive_using_kali.md)

<a id="homebrew"></a>
### Homebrew - package manager for macOS (and Linux)

- [Stop brew from calling home](homebrew/stop_brew_from_calling_home.md)
- [Cleaning your homebrew cellar](homebrew/clean.md)
- [Installing bash](homebrew/installing_bash.md)
- [Migrate installation](homebrew/migrate_installation.md)
- [Remove tap](homebrew/remove_tap.md)

<a id="html"></a>

### HTML - HyperText Markup Language

- [Add and Remove classes using JavaScript](html/add_and_remove_classes_using_javascript.md)
- [Execute JavaScript from a button](html/execute_javascript_from_button.md)
- [How Can I Get HTML value using JavaScript](html/how_can_i_get_html_value_using_js.md)

<a id="httpie"></a>
### httpie - an alternative to curl

- [Use httpie](httpie/use_httpie.md)
- [Using httpie with Graphql server](httpie/using_httpie_with_graphql_server.md)

<a id="irssi"></a>
### irssi - for all your IRC needs

- [use irssi](irssi/use_irssi.md)
- [Use password authentication on Freenode](irssi/use_password_authentication_on_freenode.md)

<a id="itermapp"></a>
### iTerm.app - an alternative to Terminal.app

- [Use themes](itermapp/use_cool_themes.md)
- [Use it](itermapp/use_it.md)
- [Use triggers](itermapp/use_triggers.md)

<a id="javascript"></a>
### JavaScript - see also Node.js

- [Use JavaScript](javascript/use_javascript.md)
- [Learn JavaScript](javascript/learn_javascript.md)
- [Use a styleguide](javascript/use_a_style_guide.md)
- [Beware of eval](javascript/beware_of_eval.md)
- [Default Parameters for Functions](javascript/function_default_parameters.md)
- [Console.log](javascript/console_log.md)
- [Dynamic properties](javascript/dynamic_properties.md)
- [Format Numbers](javascript/format_numbers.md)
- [SyntaxError: Unexpected token o in JSON at position 1](javascript/unexpected_token_o_in_jason_at_position_1.md)

<a id="jenkins"></a>
### Jenkins - a continuous integration server

- [Use a script for freestyle projects](jenkins/use_a_script_for_freestyle_projects.md)

<a id="jira"></a>
### Jira - issue tracking and project management

- [Get a List of Linked Issues](jira/get_a_list_of_linked_issues.md)
- [How to escape curly brackets within code tags](jira/how_to_escape_curlys_within_code_tags.md)

<a id="jq"></a>
### jq - a lightweight and flexible command-line JSON processor

- [Use jq](jq/use_jq.md)
- [Concatenate two fields](jq/concatenate_two_fields.md)
- [Sort using jq](jq/sort_using_jq.md)
- [Count elements](jq/count_elements.md)
- [Find and Extract object](jq/find_and_extract_object.md)
- [Specify Colours](jq/specify_colours.md)
- [Generate CSV file](jq/generate_csv_file.md)
- [Convert a number to a string](jq/convert_a_number_to_a_string.md)

<a id="json"></a>
### JSON - see also XML and YAML

- [Beware of eval](json/beware_of_eval.md)
- [Check out JSON Schema](json/check_out_json_schema.md)
- [Prettify JSON on the command line](json/prettify_json_on_the_command_line.md)

<a id="kali"></a>
### Kali - a Linux distribution focused on security and penetration testing

- [Set Keyboard Layout](kali/set_keyboard_layout.md)

<a id="liquid-prompt"></a>
### Liquid Prompt - see also Starship

- [Install Liquid Prompt](liquidprompt/install_liquidprompt.md)

<a id="macos"></a>
### macOS - see OSX

<a id="mailapp"></a>
### Mail.app - the default mail client on macOS

- [Mail file from the commandline](mailapp/mail_file_from_cli.md)

<a id="markdown"></a>
### Markdown - basic markup language, great for documentation

- [Use Markdown](markdown/use_markdown.md)
- [How do I escape a backtick](markdown/how_do_i_escape_backtick.md)
- [How do I escape a numbersign](markdown/how_do_i_escape_numbersign.md)
- [How do I escape asterisk and other characters](markdown/how_do_i_escape.md)
- [Read Markdown in terminal](markdown/read_markdown_in_terminal.md)
- [Use Markdownlint](markdown/use_markdownlint.md)

<a id="markdownlint"></a>
### markdownlint - a tool for linting Markdown

- [Issue with enabledrules](markdownlint/issue_with_enabledrules.md)

<a id="mermaid"></a>
### Mermaid - awesome tool for generating diagrams from text

- [Diagram with Mermaid](mermaid/diagram_with_mermaid.md)

<a id="mojolicious"></a>
### Mojolicious - a Perl web framework

- [Redirecting from one URL to another](mojolicious/redirecting_from_one_url_to_another.md)
- [Setting up a new application](mojolicious/setting_up_a_new_app.md)
- [Enable logging](mojolicious/enable_logging.md)
- [Mojolicious::Controller respond_to and template parameter](mojolicious/respond_to_and_template_parameter.md)
- [Enable syntax highlighting for configuration files](mojolicious/enable_syntax_highlighting_for_configuration_files.md)
- [Mojolicious::Plugin::Config](mojolicious/mojolicious-plugin-config.md)

<a id="mysql"></a>
### MySQL - a relational database

- [Setting the prompt](mysql/setting_the_prompt.md)

<a id="nginx"></a>
### Nginx - a webserver, proxy and load-balancer

- [Install Nginx](nginx/install_nginx.md)
- [Listen on both IPv4 and IPv6](nginx/listen_on_both_ipv4_and_ipv6.md)
- [Serve static files and proxy](nginx/serve_static_pages_and_proxy.md)
- [Limit served HTTP methods](nginx/limit_served_http_methods.md)

<a id="npm"></a>
### npm - Node.js package manager

- [Install dependencies from package-lock.json](npm/install_dependencies_from_package-lock_file.md)

<a id="openapi"></a>
### OpenAPI - a specification for describing RESTful APIs, see also Swagger

- [Validating OpenAPI and Swagger definitions](openapi/validating_openapi_definition.md)

<a id="openssl"></a>
### OpenSSL - a toolkit for SSL and TLS

- [How to get information from a P12 file](openssl/how_to_get_information_from_a_p12_file.md)

<a id="oracle"></a>
### Oracle - a relational database

- [Convert string to date](oracle/convert_string_to_date.md)
- [ORA-21561: OID generation failed](oracle/ora-21561.md)
- [Beware of force for creation](oracle/beware_of_force_for_creation.md)
- [How to see Oracle version](oracle/howto_see_oracle_version.md)
- [Executing a function or procedure](oracle/executing_a_function_or_procedure.md)
- [Comments in tnsnames.ora](oracle/comments_in_tnsnamesora.md)
- [See grants for a specific user](oracle/see_grants_for_specific_user.md)
- [See What a Record Looked Like](oracle/see_what_a_record_looked_like.md)

<a id="osx"></a>
### OSX - the operating system for Macs - now known as macOS

- [Lock screen shortcuts](osx/lock_screen_shortcuts.md)
- [Speak when long running job is done](osx/speak_when_long_running_job_is_done.md)
- [List available voices for speechsynthesis](osx/list_available_voices_for_speechsynthesis.md)
- [Set hostname permanently](osx/set_hostname_permanently.md)
- [Access iCloud from the cli](osx/access_icloud_drive_from_cli.md)
- [Install Homebrew](osx/install_homebrew.md)
- [Debugging Issues with Dynamic Libraries](osx/debugging_issues_with_dynamic_libs.md)
- [Uninstall MacPorts](osx/uninstall_macports.md)
- [Scheduling Timed Jobs](osx/scheduling_timed_jobs.md)
- [Enabling at](osx/enabling_at.md)
- [Playing Sound from the Command Line](osx/play_sound_from_cli.md)
- [Keyboard Symbols](osx/keyboard_symbols.md)
- [Use JavaScript](osx/use_javascript.md)
- [Set Default Browser From the Command Line](osx/change_default_browser_from_cli.md)
- [No telnet use netcat](osx/no_telnet_use_netcat.md)
- [What ports are listened on](osx/what_ports_are_listened_on.md)
- [Reset Bluetooth](osx/reset_bluetooth.md)
- [Inspecting dynamic libraries](osx/inspecting_dynamic_libraries.md)
- [Install OpenSSL using MacPorts](osx/install_openssl.md)
- [Translate Release Names](osx/translate_release_names.md)
- [Find timezones](osx/find_timezones.md)
- [Remove backgrounds from images](osx/remove_backgrounds_from_images.md)

<a id="perl"></a>
### Perl - Swiss Army Knife of programming languages

- [Use Perl](perl/use_perl.md)
- [View generated SQL when using DBIx::Class](perl/view_generated_sql_when_using_dbix-class.md)
- [Create Test Coverage Report Using Dist::Zilla](perl/create_test_coverage_report_uzing_dist-zilla.md)
- [Avoid issues with META.yml with Module::Install](perl/avoid_issues_with_metayml_with_module_install.md)
- [Install XML::LibXML on MacOS](perl/install_xml_libxml_on_macos.md)
- [Get ExtUtils::MakeMaker to install in local/ like carton](perl/get_extutils-makemaker_to_install_in_local_like_carton.md)
- [Mojolicious::Plugin::OpenAPI Tutorial](https://github.com/jonasbn/perl-mojolicious-plugin-openapi-tutorial-hello-world)
- [Read Input via Pipe](perl/read_input_via_pipe.md)
- [Find out if a given Perl distribution is included in core](perl/find_out_if_a_given_perl_distribution_is_included_in_core.md)
- [Find out what your perl minimum version requirement is](perl/find_out_what_your_perl_minimum_version_requirement_is.md)
- [Use cpm](perl/use_cpm.md)
- [Format numbers](perl/format_numbers.md)

<a id="perlbrew"></a>
### Perlbrew - a tool for managing multiple Perl installations

- [Install perlbrew](perlbrew/install_perlbrew.md)
- [Eliminate compilation warnings on OSX](perlbrew/eliminate_compilation_warnings_on_osx.md)
- [Uninstall perlbrew](perlbrew/uninstall_perlbrew.md)
- [Install a new perl and clone modules from an existing installation](perlbrew/install_a_new_perl_and_clone_modules_from_an_existing_installation.md)
- [Using perlbrew in Shell scripts](perlbrew/using_perlbrew_in_shell_scripts.md)

<a id="perltidy"></a>
### Perltidy - tidy all your Perl

- [Tidy a file inline](perltidy/tidy_file_inline.md)

<a id="postgresql"></a>
### Postgresql - a relational database

- [Setting the prompt](postgresql/setting_the_prompt.md)

<a id="programming"></a>
### Programming - general programming tips

- [Round float to 2 decimals](programming/round_float_to_2_decimals.md)

<a id="probot"></a>
### Probot - a framework for building GitHub Apps

- [Probot: auto-assign](probot/auto-assign.md)
- [Probot: delete merged branch](probot/delete_merged_branch.md)
- [Probot: todo](probot/todo.md)

<a id="prolog"></a>
### Prolog - a logic programming language

- [Prolog resources](prolog/prolog.md)

<a id="python"></a>
### Python - an interpreted programming language

- [Use Python](python/use_python.md)
- [Old-school string formatting](python/old-school_string_formatting.md)
- [What is wheel](python/what_is_wheel.md)
- [How to detect pipe](python/how_to_detect_pipe.md)
- [strptime: Convert a string representing date and time to an object](python/strptime.md)
- [strftime: Convert a DateTime object to a string in a given format](python/strftime.md)
- [Zen of Python](python/zen_of_python.md)

<a id="qalc"></a>
### qalc - an easy to use command line calculator

- [Calculate Download Time](qalc/calculate_download_time.md)
- [Eliminate Locale Warnings](qalc/eliminate_locale_warnings.md)

<a id="regexp"></a>
### Regexp - regular expressions

- [Regex Posix](regexp/posix.md)

<a id="renovate"></a>
### Renovate - a bot for automating dependency updates

- [Use Renovate](renovate/use_renovate.md)
- [Use Renovate for Perl](renovate/use_renovate_for_perl.md)
- [Hide the config](renovate/hide_the_config.md)

<a id="rest"></a>
### REST - Representational State Transfer, a popular approach to building APIs

- [Prototype with dummy APIs](rest/prototype_with_dummy_apis.md)
- [Use proper headers](rest/use_proper_headers.md)
- [Check out OpenAPI](rest/check_out_openapi.md)
- [Use verbs](rest/use_verbs.md)

<a id="rm"></a>
### rm - remove files and directories on the command line

- [Delete files with names resembling cli options](rm/delete_files_with_names_resembling_cli_options.md)
- [Are you sure?](rm/are_you_sure.md)

<a id="ruby"></a>
### Ruby - an interpreted programming language

- [Use Ruby](ruby/use_ruby.md)
- [Dump objects attributes](ruby/dump_object_attributes.md)
- [Use rbenv](ruby/use_rbenv.md)
- [Use rvm](ruby/use_rvm.md)
- [Use bundler](ruby/use_bundler.md)
- [ignore in Git](ruby/ignore_in_git.md)

<a id="rust"></a>
### Rust - a compiled programming language

- [Setting Up a Rust Development Environment](rust/setting_up_a_rust_dev_env.md)
- [What is an empty parens](rust/what_is_an_empty_parens.md)
- [Get a Cheatsheet](rust/get_a_cheatsheet.md)
- [Installing Dependencies](rust/installing_dependencies.md)
- [Learn Rust](rust/learn_rust.md)
- [Formatting code](rust/formatting_code.md)
- [Declaring a constant](rust/declaring_a_constant.md)

<a id="sed"></a>
### sed - stream editor

- [Test Command Using echo](sed/test_command_using_echo.md)
- [Remove empty lines](sed/remove_empty_lines.md)
- [Remove comments](sed/remove_comments.md)
- [Chaining actions](sed/chaining_actions.md)

<a id="shell"></a>
### Shell - general shell tips

- [Suppress Coloring via env](shell/suppress_coloring_via_env.md)
- [Get your shell command explained visually](shell/explain_shell.com.md)
- [Nifty aliases](shell/nifty_aliases.md)
- [Testing Using Bats](shell/testing_using_bats.md)

<a id="shellcheck"></a>
### shellcheck - a linter for shell scripts

- [Use shellcheck](shellcheck/use_shellcheck.md)
- [Ignore shellcheck error](shellcheck/ignore_error.md)

<a id="slack"></a>
### Slack - a collaboration tool

- [Mark all as read](slack/mark_all_as_read.md)

<a id="smartcd"></a>
### smartcd - a tool for running commands when changing directories

- [Install smartcd](smartcd/install_smartcd.md)
- [Use smartcd with tabs](smartcd/use_with_tabs.md)
- [Silence smartcd](smartcd/silence_smartcd.md)

<a id="sublime-text-3"></a>
### Sublime Text 3 - see also VSCode

- [Set colour scheme per language](sublimetext3/set_colour_scheme_per_language.md)

<a id="subversion"></a>
### Subversion - do see Git

- [Do something with every repository](subversion/do_something_every_repo.md)
- [See in what revision a branch was created](subversion/see_in_what_revision_was_a_branch_created.md)
- [Use Filemerge as diff tool](subversion/use_filemerge_for_diff.md)
- [Use commit message from file](subversion/use_commit_message_from_file.md)

<a id="sql"></a>
### SQL - Structured Query Language

- [Counting NULL and non-NULL values in a single query](sql/counting_null_and_non_null_values_in_a_single_query.md)
- [How to group by month in a year](sql/how_to_group_by_month_in_a_year.md)
- [How to query data where you are unsure of the casing](sql/how_to_query_data_where_you_are_unsure_of_the_casing.md)

<a id="sql-developer"></a>
### SQL Developer - a GUI tool for Oracle

- [Setting UI fontsize](sqldeveloper/setting_ui_fontsize.md)
- [Setting dateformat](sqldeveloper/setting_dateformat.md)
- [View Compilation Log](sqldeveloper/view_compilation_log.md)
- [Creating folders](sqldeveloper/creating_folders.md)
- [View text instead of Worksheet](sqldeveloper/view_text_instead_of_worksheet.md)

<a id="sqlite"></a>
### SQLite - a lightweight relational database

- [Emulate schemas](sqlite/emulate_schemas.md)
- [Inserting dates](sqlite/insert_dates.md)
- [Defaulting to now for date](sqlite/default_now_for_date.md)
- [VARCHAR is just text](sqlite/varchar_is_just_text.md)

<a id="sqlplus"></a>
### sqlplus - the CLI tool for Oracle

- [Output to a file](sqlplus/outputting_to_a_file.md)
- [How to pass hostname and port parameters](sqlplus/how_pass_host_and_post_parameters.md)

<a id="ssh"></a>
### SSH - Secure Shell

- [Permissions on SSH folder and files](ssh/permissions_on_ssh_folder_and_files.md)
- [Hardening SSH server](ssh/hardening_ssh_server.md)

<a id="starship"></a>
### Starship - nifty prompt and an alternative to Liquid Prompt

- [Use Starship](starship/use_starship.md)
- [Increase Interval for Slow Commands](starship/increase_interval_for_slow_commands.md)

<a id="swagger---see-also-openapi"></a>
### Swagger - tool for describing RESTful APIs, see also OpenAPI

- [Edit and Validate online](swagger/edit_and_validate.md)
- [Making PR against a Swagger UI repo](swagger/making_prs_against_a_swagger_ui_repo.md)
- [Deprecating API Endpoints](swagger/deprecating_api_endpoints.md)

<a id="swift"></a>
### Swift - a compiled programming language from Apple

- [Learn Swift](swift/learn_swift.md)

<a id="tar"></a>
### tar - a tool for archiving files

- [Using tar](tar/using_tar.md)

<a id="terminalapp"></a>
### Terminal.app - do see iTerm.app

- [Opening files in an application from the command line](terminal/opening_files_in_applications_from_the_cli.md)

<a id="tldr"></a>
### tldr - Too Long; Didn't Read, so use tldr

- [use tldr](tldr/use_tldr.md)

<a id="tmux"></a>
### tmux - an alternative to screen

- [Use tmux](tmux/use_tmux.md)
- [Install tmux](tmux/install_tmux.md)
- [Standard Layouts](tmux/standard_layouts.md)
- [Use tmux Resurrect](tmux/use_tmux_resurrect.md)
- [Use tmux plugin manager](tmux/use_tmux_plugin_manager.md)

<a id="tokei"></a>
### tokei - language statistics - fast

- [use tokei](tokei/use_tokei.md)

<a id="ubuntu"></a>
### Ubuntu - a Linux distribution based on Debian

- [Install updates via command line](ubuntu/install_updates_via_cli.md)
- [How to enquire version](ubuntu/how_to_enquire_version.md)
- [Translate release names](ubuntu/translate_release_names.md)
- [How to add a user to sudoers](ubuntu/how_to_add_sudoers.md)
- [How to add a user](ubuntu/how_to_add_user.md)
- [How to check if a package is installed](ubuntu/how_to_check_if_a_package_is_installed.md)

<a id="ufw"></a>
### ufw - Uncomplicated Firewall

- [Use ufw](ufw/use_ufw.md)
- [How to set up ufw](ufw/how_to_set_up_ufw.md)
- [Enable or disable IPv6](ufw/disable_or_enable_ipv6.md)
- [Allow HTTPS](ufw/allow_https.md)
- [Allow HTTP on another port](ufw/allow_ssh_on_another_port.md)

<a id="vim"></a>
### vim - a text editor

- [Use vim-plug](vim/use_vim-plug.md)
- [Cannot install vim plugin](vim/cannot_install_vim_plugin.md)

<a id="visual-studio-code"></a>
### VSCode / Visual Studio Code

- [Stop vscode from calling home](vscode/stop_vscode_from_calling_home.md)
- [Integrate vscode with Shell / CLI](vscode/integrate_with_cli.md)
- [Synchronize Setttings across machines](vscode/sync_settings.md)
- [Use Markdownlint](vscode/use_markdownlint.md)
- [Todo Tree Extension](vscode/todo_tree_extension.md)
- [Issue with integrated terminal on macOS](vscode/issue_with_integrated_terminal_on_macos.md)
- [Themes](vscode/themes.md)
- [Use Markdown All in One](vscode/use_markdown_all_in_one.md)
- [Perl Language Server Extension](vscode/perl-language-server_extension.md)

<a id="vmware-fusion"></a>
### VMware Fusion - a virtualization tool for macOS

- [Install VMware Tools](fusion/install_vmware_tools.md)
- [Configure Debian 7](fusion/mount_shared_folder.md)

<a id="vue"></a>
### Vue - a JavaScript framework

- [Get Started with Vue](vue/get_started_with_vue.md)

<a id="wsl"></a>
### WSL 1/2 - Windows Subsystem for Linux

- [Configure Git](wsl/configure_git.md)
- [Developing in Visual Studio Code](wsl/developing_in_vscode.md)
- [Up and Downgrade WSL](wsl/up_and_downgrade_wsl.md)
- [bashrc not being sourced](wsl/bashrc_not_being_sourced.md)

<a id="wtf-util"></a>
### wtf util - a tool for the command line for visualising important information

- [Play around with wtf](wtf/play_around_with_wtf.md)
- [Placing elements](wtf/placing_elements.md)

<a id="xml"></a>
### XML - see also YAML and JSON

- [Avoid entity expansion](xml/avoid_entity_expansion.md)
- [Fast XML/XSD validation on the command line](xml/fast_xml-xsd_validation_on_cli.md)
- [Prettify XML on the command line](xml/prettify_xml_on_the_cli.md)

<a id="yaml"></a>
### YAML - see also XML and JSON

- [Learning YAML](yaml/learning_yaml.md)
- [How to syntax check a YAML file](yaml/howto_syntax_check_a_yaml_file.md)

<a id="z"></a>
### z - for jumping around in the file structures, an alternative to cd

- [Jumping Around Using z](z/jump_around.md)

<a id="zoxide>
### zoxide - an alternative to z

- [Use zoxide](zoxide/use_zoxide.md)

<a id="zsh"></a>
### zsh - another shell than bash

- [Use zsh](zsh/use_zsh.md)
- [Set Environment from File](zsh/set_environment_from_file.md)

### XSLT

- [Learn XSLT](xslt/learn_xslt.md)

<a id="about"></a>
## About

I have for a long time maintained notes in a public wiki, finding the TIL of
Josh Branchaud [jbranchaud/til](https://github.com/jbranchaud/til) was an
eye-opener and I immiediately wanted to try it out, so after a few months I have
finally set it up.

I plan to migrate my earlier notes, so they are more easily accessible here as
TIL snippets, this will be done when I have the time, one TIL at a time :-)

<a id="additional-til-collections"></a>
## Additional TIL Collections

- [Today I Learned by Hashrocket](https://til.hashrocket.com)
- [jwworth/til](https://github.com/jwworth/til)
- [thoughtbot/til](https://github.com/thoughtbot/til)

<a id="license"></a>
## License

&copy; 2016-2024 jonasbn

This repository is licensed under the MIT license. See [LICENSE](LICENSE) file
for details. Much is lifted from elsewhere and might by copyrighted under other
licenses by the respective authors. I will mention this where applicable and I
will link to original sources when and if possible.
