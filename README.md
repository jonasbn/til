# Today I Learned

![Markdownlint Action Status Badge](https://github.com/jonasbn/til/actions/workflows/markdownlint.yml/badge.svg)
![Spellcheck Action Status Badge](https://github.com/jonasbn/til/actions/workflows/spellcheck.yml/badge.svg)

## Table of Contents

<!-- MarkdownTOC levels="1,2,3" autoanchor="true" autolink="true" bracket=round indent="  " -->

- [Today I Learned](#today-i-learned)
  - [Table of Contents](#table-of-contents)
  - [Categories](#categories)
    - [ack](#ack)
    - [afplay](#afplay)
    - [ag also known as the Silversurfer - fast alternative to ack and grep](#ag-also-known-as-the-silversurfer---fast-alternative-to-ack-and-grep)
    - [Bash](#bash)
    - [Bootstrap](#bootstrap)
    - [carton](#carton)
    - [chezmoi - dot filer manager](#chezmoi---dot-filer-manager)
    - [chrome](#chrome)
    - [clang](#clang)
    - [colortail - colorfull variation of tail](#colortail---colorfull-variation-of-tail)
    - [CPAN - Perl Packages](#cpan---perl-packages)
    - [cpanm](#cpanm)
    - [crates - Rust packages](#crates---rust-packages)
    - [css](#css)
    - [curl](#curl)
    - [Dash.app](#dashapp)
    - [date](#date)
    - [Debian](#debian)
    - [diff-so-fancy](#diff-so-fancy)
    - [DigitalOcean - a hosting provider, caring about open source](#digitalocean---a-hosting-provider-caring-about-open-source)
    - [Docker](#docker)
    - [DockerHub](#dockerhub)
    - [Dropbox](#dropbox)
    - [dzil](#dzil)
    - [EditorConfig](#editorconfig)
    - [entr - run arbitrary commands when files change](#entr---run-arbitrary-commands-when-files-change)
    - [exa - an alternative to the ls command](#exa---an-alternative-to-the-ls-command)
    - [FileMerge.app](#filemergeapp)
    - [find](#find)
    - [Git](#git)
    - [git-delta - an commandline diff tool, also known as delta](#git-delta---an-commandline-diff-tool-also-known-as-delta)
    - [GitHub](#github)
    - [GitHub Actions - automate your GitHub work and repositories](#github-actions---automate-your-github-work-and-repositories)
    - [GnuPG](#gnupg)
    - [Go](#go)
    - [grep - see also ag also known as silversurfer](#grep---see-also-ag-also-known-as-silversurfer)
    - [Hacking](#hacking)
    - [Homebrew](#homebrew)
    - [HTML](#html)
    - [httpie - an alternative to curl](#httpie---an-alternative-to-curl)
    - [irssi - for all your IRC needs](#irssi---for-all-your-irc-needs)
    - [iTerm.app - an alternative to Terminal.app](#itermapp---an-alternative-to-terminalapp)
    - [JavaScript](#javascript)
    - [Jenkins](#jenkins)
    - [Jira](#jira)
    - [jq - a lightweight and flexible command-line JSON processor](#jq---a-lightweight-and-flexible-command-line-json-processor)
    - [JSON - see also XML and YAML](#json---see-also-xml-and-yaml)
    - [Kali](#kali)
    - [Liquid Prompt - see also Starship](#liquid-prompt---see-also-starship)
    - [Mail.app](#mailapp)
    - [Markdown](#markdown)
    - [markdownlint](#markdownlint)
    - [Mermaid](#mermaid)
    - [Mojolicious](#mojolicious)
    - [MySQL](#mysql)
    - [Nginx](#nginx)
    - [npm](#npm)
    - [OpenAPI](#openapi)
    - [OpenSSL](#openssl)
    - [Oracle](#oracle)
    - [OSX](#osx)
    - [Perl](#perl)
    - [Perlbrew](#perlbrew)
    - [Perltidy - tidy all your Perl](#perltidy---tidy-all-your-perl)
    - [Postgresql](#postgresql)
    - [Programming](#programming)
    - [Probot](#probot)
    - [Prolog](#prolog)
    - [Python](#python)
    - [qalc - an easy to use command line calculator](#qalc---an-easy-to-use-command-line-calculator)
    - [Regexp](#regexp)
    - [Renovate](#renovate)
    - [REST](#rest)
    - [rm](#rm)
    - [Ruby](#ruby)
    - [Rust](#rust)
    - [sed](#sed)
    - [Shell](#shell)
    - [shellcheck](#shellcheck)
    - [Slack](#slack)
    - [smartcd](#smartcd)
    - [Sublime Text 3 - see also VSCode](#sublime-text-3---see-also-vscode)
    - [Subversion - do see Git](#subversion---do-see-git)
    - [SQL](#sql)
    - [SQL Developer](#sql-developer)
    - [SQLite](#sqlite)
    - [sqlplus - the CLI tool for Oracle](#sqlplus---the-cli-tool-for-oracle)
    - [SSH](#ssh)
    - [Starship - nifty prompt and an alternative to Liquid Prompt](#starship---nifty-prompt-and-an-alternative-to-liquid-prompt)
    - [Swagger - see also OpenAPI](#swagger---see-also-openapi)
    - [Swift](#swift)
    - [tar](#tar)
    - [Terminal.app - do see iTerm.app](#terminalapp---do-see-itermapp)
    - [tldr - Too Long; Didn't Read, so use tldr](#tldr---too-long-didnt-read-so-use-tldr)
    - [tmux - an alternative to screen](#tmux---an-alternative-to-screen)
    - [tokei - language statistics - fast](#tokei---language-statistics---fast)
    - [Ubuntu](#ubuntu)
    - [ufw - Uncomplicated Firewall](#ufw---uncomplicated-firewall)
    - [VSCode / Visual Studio Code](#vscode--visual-studio-code)
    - [VMware Fusion](#vmware-fusion)
    - [Vue](#vue)
    - [WSL 1/2](#wsl-12)
    - [wtf util](#wtf-util)
    - [XML - see also YAML and JSON](#xml---see-also-yaml-and-json)
    - [YAML - see also XML and JSON](#yaml---see-also-xml-and-json)
    - [z - for jumping around in the commandline](#z---for-jumping-around-in-the-commandline)
    - [zsh - another shell than bash](#zsh---another-shell-than-bash)
  - [About](#about)
  - [Additional TIL Collections](#additional-til-collections)
  - [License](#license)

<!-- /MarkdownTOC -->

<a id="categories"></a>
## Categories

<a id="ack"></a>
### ack

- [Install ack](ack/install_ack.md)
- [Define a custom search filetype scope](ack/define_a_custom_search_filetype_scope.md)

<a id="afplay"></a>
### afplay

- [RTFM](afplay/rtfm.md)

<a id="ag"></a>
### ag also known as the Silversurfer - fast alternative to ack and grep

- [Use ag](ag/use_ag.md)

<a id="bash"></a>
### Bash

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
### Bootstrap

- [Prevent wrapping of contents of code tags](bootstrap/prevent_wrapping_of_contents_of_code_tags.md)

<a id="carton"></a>
### carton

- [Use carton](carton/use_carton.md)
- [Pass flags to arguments to exec](carton/pass_flags_to_arguments_to_exec.md)
- [Update snapshot cpanfile](carton/update_snapshot_cpanfile.md)
- [Use PERL_CARTON_MIRROR](carton/use_perl_carton_mirror.md)

<a id="chezmoi"></a>
### chezmoi - dot filer manager

- [Install chezmoi](chezmoi/install_chezmoi.md)
- [Use chezmoi](chezmoi/use_chezmoi.md)

<a id="chrome"></a>
### chrome

- [Add search shortcuts](chrome/add_search_shortcuts.md)

<a id="clang"></a>
### clang

- [Diagnostic flags in Clang](clang/diagnostic_flags.md)

<a id="colortail"></a>
### colortail - colorfull variation of tail

- [use colortail](colortail/use_colortail.md)

<a id="cpan"></a>
### CPAN - Perl Packages

- [Use CPAN](cpan/use_cpan.md)
- [Data::FormValidator](cpan/data-formvalidator.md)
- [File::Find](cpan/file-find.md)
- [Test::Pretty](cpan/test-pretty.md)
- [Parsing Gitignore](cpan/parsing_gitignore.md)
- [Install DateTime::Astro](cpan/install_datetime_astro.md)

<a id="cpanm"></a>
### cpanm

- [Use cpanm](cpanm/use_cpanm.md)
- [Use cpanm with cpanfile](cpanm/use_cpanm_with_cpanfile.md)
- [Use cpanm with Module::Build](cpanm/use_cpanm_with_module-build.md)
- [Use cpanm with CPAN::Mini](cpanm/use_cpanm_with_cpan-mini.md)
- [Use cpanm with carton](cpanm/use_cpanm_with_carton.md)
- [Tailing cpanm build log file](cpanm/tailing_cpanm_build_logfile.md)

<a id="crates"></a>
### crates - Rust packages

- [colored](crates/colored.md)

<a id="css"></a>
### css

- [Making sure you are using alt tags](css/making_sure_you_are_using_alt_tags.md)
- [CSS Properties](css/properties.md)

<a id="curl"></a>
### curl

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
### Dash.app

- [Query Dash from the CLI](dashapp/query_dash_from_the_cli.md)

<a id="date"></a>
### date

- [Getting time in another timezone](date/getting_time_in_another_timezone.md)

<a id="debian"></a>
### Debian

- [How to enquire version](debian/how_to_enquire_version.md)
- [Add user to sudoers group](debian/add_user_to_sudoers.md)
- [Resolve conflicting values in Debian package](debian/resolve_conflicting_values_in_package.md)
- [Install unauthenticated package](debian/install_unauthenticated_package.md)
- [Translate release names](debian/translate_release_names.md)

<a id="diff-so-fancy"></a>
### diff-so-fancy

- [use diff-so-fancy](diff-so-fancy/use_diff_so_fancy.md)
- [One-time Disable of diff-so-fancy for Git](diff-so-fancy/one-time_disable_dsf_for_git.md)

<a href="digitalocean"></a>
### DigitalOcean - a hosting provider, caring about open source

- [Monitor billing](digitalocean/monitor_billing.md)
- [Use doctl](digitalocean/use_doctl.md)
- [Serving Static Files From a Go App](digitalocean/serving_static_files_from_a_go_app.md)

<a id="docker"></a>
### Docker

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
### DockerHub

- [Publish an image to DockerHub](dockerhub/publish_an_image_to_dockerhub.md)
- [Use Long Names for Your Base Images](dockerhub/use_long_names_for_your_base_images.md)
- [Use hub-tool](dockerhub/use_hub-tool.md)

<a id="dropbox"></a>
### Dropbox

- [Download instead of playing multimedia file from Dropbox](dropbox/download_multimedia.md)
- [Ignore certain files](dropbox/ignore_certain_files.md)

<a id="dzil"></a>
### dzil

- [Make coverage tests](dzil/use_cover.md)
- [Use cpanfile](dzil/cpanfile.md)
- [Run a single test](dzil/run_a_single_test.md)

<a id="editorconfig"></a>
### EditorConfig

- [Use EditorConfig](editorconfig/use_editorconfig.md)
- [Enforce EditorConfig using eclint](editorconfig/enforce_editorconfig_config_using_eclint.md)
- [Perl](editorconfig/perl.md)
- [XML](editorconfig/xml.md)
- [Markdown](editorconfig/markdown.md)

<a id="entr"></a>
### entr - run arbitrary commands when files change

- [Run arbitrary commands when files change using entry](entr/run_arbitrary_commands_when_files_change_using_entr.md)

<a id="exa"></a>
### exa - an alternative to the ls command

- [Use exa](exa/use_exa.md)

<a id="filemergeapp"></a>
### FileMerge.app

- [User Filemerge from the commandline](filemergeapp/use_filemerge_from_cli.md)

### find

- [Searching Found Files in Found Directories](find/searching_found_files_in_found_directories.md)

<a id="git"></a>
### Git

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

<a id="git-delta"></a>
### git-delta - an commandline diff tool, also known as delta

- [Use git-delta](git-delta/use_git-delta.md)

<a id="github"></a>
### GitHub

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

<a id="gnupg"></a>
### GnuPG

- [Homebrew GnuPG vs. GPG Mail](gnupg/homebrew_gnupg_vs_gpg_mail.md)

<a id="go"></a>
### Go

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

<a id="grep"></a>
### grep - see also ag also known as silversurfer

- [Add colour to grep output](grep/add_colour_to_grep.md)

<a id="hacking"></a>
### Hacking

- [Change password on Window 7 Using Kali Linux](hacking/change_password_on_window7_using_kali.md)
- [Wipe a Hard Drive Using Kali Linux](hacking/wipe_a_hard_drive_using_kali.md)

<a id="homebrew"></a>
### Homebrew

- [Stop brew from calling home](homebrew/stop_brew_from_calling_home.md)
- [Cleaning your homebrew cellar](homebrew/clean.md)
- [Installing bash](homebrew/installing_bash.md)
- [Migrate installation](homebrew/migrate_installation.md)
- [Remove tap](homebrew/remove_tap.md)

<a id="html"></a>

### HTML

- [Add and Remove classes using JavaScript](html/add_and_remove_classes_using_javascript.md)
- [Execute JavaScript from a button](html/execute_javascript_from_button.md)
- [How Can I Get HTML value using JavaScript](html/how_can_i_get_html_value_using_js.md)

<a id="httpie"></a>
### httpie - an alternative to curl

- [Use httpie](httpie/use_httpie.md)
- [Using httpie with Graphql server](httpie/using_httpie_with_graphql_server.md)

<a id="irssi"></a>
### irssi - for all your IRC needs

- [Use password authentication on Freenode](irssi/use_password_authentication_on_freenode.md)

<a id="itermapp"></a>
### iTerm.app - an alternative to Terminal.app

- [Use themes](itermapp/use_cool_themes.md)
- [Use it](itermapp/use_it.md)
- [Use triggers](itermapp/use_triggers.md)

<a id="javascript"></a>
### JavaScript

- [Use a styleguide](javascript/use_a_style_guide.md)
- [Beware of eval](javascript/beware_of_eval.md)
- [Default Parameters for Functions](javascript/function_default_parameters.md)
- [Learn JavaScript](javascript/learn_javascript.md)

<a id="jenkins"></a>
### Jenkins

- [Use a script for freestyle projects](jenkins/use_a_script_for_freestyle_projects.md)

<a id="jira"></a>
### Jira

- [Get a List of Linked Issues](jira/get_a_list_of_linked_issues.md)
- [How to escape curly brackets within code tags](jira/how_to_escape_curlys_within_code_tags.md)

<a id="jq"></a>
### jq - a lightweight and flexible command-line JSON processor

- [Use jq](jq/use_jq.md)
- [Concatenate two fields](jq/concatenate_two_fields.md)
- [Sort using jq](jq/sort_using_jq.md)

<a id="json"></a>
### JSON - see also XML and YAML

- [Beware of eval](json/beware_of_eval.md)
- [Check out JSON Schema](json/check_out_json_schema.md)
- [Prettify JSON on the command line](json/prettify_json_on_the_command_line.md)

<a id="kali"></a>
### Kali

- [Set Keyboard Layout](kali/set_keyboard_layout.md)

<a id="liquid-prompt"></a>
### Liquid Prompt - see also Starship

- [Install Liquid Prompt](liquidprompt/install_liquidprompt.md)

<a id="mailapp"></a>
### Mail.app

- [Mail file from the commandline](mailapp/mail_file_from_cli.md)

<a id="markdown"></a>
### Markdown

- [Use Markdown](markdown/use_markdown.md)
- [How do I escape a backtick](markdown/how_do_i_escape_backtick.md)
- [How do I escape a numbersign](markdown/how_do_i_escape_numbersign.md)
- [How do I escape asterisk and other characters](markdown/how_do_i_escape.md)
- [Read Markdown in terminal](markdown/read_markdown_in_terminal.md)
- [Use Markdownlint](markdown/use_markdownlint.md)

<a id="markdownlint"></a>
### markdownlint

- [Issue with enabledrules](markdownlint/issue_with_enabledrules.md)

<a id="mermaid"></a>
### Mermaid

- [Diagram with Mermaid](mermaid/diagram_with_mermaid.md)

<a id="mojolicious"></a>
### Mojolicious

- [Redirecting from one URL to another](mojolicious/redirecting_from_one_url_to_another.md)
- [Setting up a new application](mojolicious/setting_up_a_new_app.md)
- [Enable logging](mojolicious/enable_logging.md)
- [Mojolicious::Controller respond_to and template parameter](mojolicious/respond_to_and_template_parameter.md)
- [Enable syntax highlighting for configuration files](mojolicious/enable_syntax_highlighting_for_configuration_files.md)
- [Mojolicious::Plugin::Config](mojolicious/mojolicious-plugin-config.md)

<a id="mysql"></a>
### MySQL

- [Setting the prompt](mysql/setting_the_prompt.md)

<a id="nginx"></a>
### Nginx

- [Install Nginx](nginx/install_nginx.md)
- [Listen on both IPv4 and IPv6](nginx/listen_on_both_ipv4_and_ipv6.md)
- [Serve static files and proxy](nginx/serve_static_pages_and_proxy.md)

<a id="npm"></a>
### npm

- [Install dependencies from package-lock.json](npm/install_dependencies_from_package-lock_file.md)

<a id="openapi"></a> - See also Swagger
### OpenAPI

- [OpenAPI](openapi/validating_openapi_definition.md)

<a id="openssl"></a>
### OpenSSL

- [How to get information from a P12 file](openssl/how_to_get_information_from_a_p12_file.md)

<a id="oracle"></a>
### Oracle

- [Convert string to date](oracle/convert_string_to_date.md)
- [ORA-21561: OID generation failed](oracle/ora-21561.md)
- [Beware of force for creation](oracle/beware_of_force_for_creation.md)
- [How to see Oracle version](oracle/howto_see_oracle_version.md)
- [Executing a function or procedure](oracle/executing_a_function_or_procedure.md)
- [Comments in tnsnames.ora](oracle/comments_in_tnsnamesora.md)
- [See grants for a specific user](oracle/see_grants_for_specific_user.md)
- [See What a Record Looked Like](oracle/see_what_a_record_looked_like.md)

<a id="osx"></a>
### OSX

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

<a id="perl"></a>
### Perl

- [View generated SQL when using DBIx::Class](perl/view_generated_sql_when_using_dbix-class.md)
- [Create Test Coverage Report Using Dist::Zilla](perl/create_test_coverage_report_uzing_dist-zilla.md)
- [Avoid issues with META.yml with Module::Install](perl/avoid_issues_with_metayml_with_module_install.md)
- [Install XML::LibXML on MacOS](perl/install_xml_libxml_on_macos.md)
- [Get ExtUtils::MakeMaker to install in local/ like carton](perl/get_extutils-makemaker_to_install_in_local_like_carton.md)
- [Mojolicious::Plugin::OpenAPI Tutorial](https://github.com/jonasbn/perl-mojolicious-plugin-openapi-tutorial-hello-world)
- [Read Input via Pipe](perl/read_input_via_pipe.md)
- [Find out if a given Perl distribution is included in core](perl/find_out_if_a_given_perl_distribution_is_included_in_core.md)
- [Find out what your perl minimum version requirement is](perl/find_out_what_your_perl_minimum_version_requirement_is.md)

<a id="perlbrew"></a>
### Perlbrew

- [Install perlbrew](perlbrew/install_perlbrew.md)
- [Eliminate compilation warnings on OSX](perlbrew/eliminate_compilation_warnings_on_osx.md)
- [Uninstall perlbrew](perlbrew/uninstall_perlbrew.md)
- [Install a new perl and clone modules from an existing installation](perlbrew/install_a_new_perl_and_clone_modules_from_an_existing_installation.md)

<a id="perltidy"></a>
### Perltidy - tidy all your Perl

- [Tidy a file inline](perltidy/tidy_file_inline.md)

<a id="postgresql"></a>
### Postgresql

- [Setting the prompt](postgresql/setting_the_prompt.md)

<a id="programming"></a>
### Programming

- [Round float to 2 decimals](programming/round_float_to_2_decimals.md)

<a id="probot"></a>
### Probot

- [Probot: auto-assign](probot/auto-assign.md)
- [Probot: delete merged branch](probot/delete_merged_branch.md)
- [Probot: todo](probot/todo.md)

<a id="prolog"></a>
### Prolog

- [Prolog resources](prolog/prolog.md)

<a id="python"></a>
### Python

- [Old-school string formatting](python/old-school_string_formatting.md)
- [What is wheel](python/what_is_wheel.md)

<a id="qalc"></a>
### qalc - an easy to use command line calculator

- [Calculate Download Time](qalc/calculate_download_time.md)
- [Eliminate Locale Warnings](qalc/eliminate_locale_warnings.md)

<a id="regexp></a>
### Regexp

- [Regex Posix](regexp/regex_posix.md)

<a id="renovate"></a>
### Renovate

- [Use Renovate](renovate/use_renovate.md)
- [Use Renovate for Perl](renovate/use_renovate_for_perl.md)
- [Hide the config](renovate/hide_the_config.md)

<a id="rest"></a>
### REST

- [Prototype with dummy APIs](rest/prototype_with_dummy_apis.md)
- [Use proper headers](rest/use_proper_headers.md)
- [Check out OpenAPI](rest/check_out_openapi.md)
- [Use verbs](rest/use_verbs.md)

<a id="rm"></a>
### rm

- [Delete files with names resembling cli options](rm/delete_files_with_names_resembling_cli_options.md)

<a id="ruby"></a>
### Ruby

- [Dump objects attributes](ruby/dump_object_attributes.md)

<a id="rust"></a>
### Rust

- [Setting Up a Rust Development Environment](rust/setting_up_a_rust_dev_env.md)
- [What is an empty parens](rust/what_is_an_empty_parens.md)
- [Get a Cheatsheet](rust/get_a_cheatsheet.md)
- [Installing Dependencies](rust/installing_dependencies.md)
- [Learn Rust](rust/learn_rust.md)
- [Formatting code](rust/formatting_code.md)
- [Declaring a constant](rust/declaring_a_constant.md)

<a id="sed"></a>
### sed

- [Test Command Using echo](sed/test_command_using_echo.md)
- [Remove empty lines](sed/remove_empty_lines.md)
- [Remove comments](sed/remove_comments.md)
- [Chaining actions](sed/chaining_actions.md)

<a id="shell"></a>
### Shell

- [Suppress Colouring via env](shell/suppress_colouring_via_env.md)

<a id="shellcheck"></a>
### shellcheck

- [Use shellcheck](shellcheck/use_shellcheck.md)
- [Ignore shellcheck error](shellcheck/ignore_error.md)

<a id="slack"></a>
### Slack

- [Mark all as read](slack/mark_all_as_read.md)

<a id="smartcd"></a>
### smartcd

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
### SQL

- [Counting NULL and non-NULL values in a single query](sql/counting_null_and_non_null_values_in_a_single_query.md)
- [How to group by month in a year](sql/how_to_group_by_month_in_a_year.md)
- [How to query data where you are unsure of the casing](sql/how_to_query_data_where_you_are_unsure_of_the_casing.md)

<a id="sql-developer"></a>
### SQL Developer

- [Setting UI fontsize](sqldeveloper/setting_ui_fontsize.md)
- [Setting dateformat](sqldeveloper/setting_dateformat.md)
- [View Compilation Log](sqldeveloper/view_compilation_log.md)
- [Creating folders](sqldeveloper/creating_folders.md)
- [View text instead of Worksheet](sqldeveloper/view_text_instead_of_worksheet.md)

<a id="sqlite"></a>
### SQLite

- [Emulate schemas](sqlite/emulate_schemas.md)
- [Inserting dates](sqlite/insert_dates.md)
- [Defaulting to now for date](sqlite/default_now_for_date.md)
- [VARCHAR is just text](lsqlite/varchar_is_just_text.md)

<a id="sqlplus"></a>
### sqlplus - the CLI tool for Oracle

- [Output to a file](sqlplus/outputting_to_a_file.md)
- [How to pass hostname and port parameters](sqlplus/how_pass_host_and_post_parameters.md)

<a id="ssh"></a>
### SSH

- [Permissions on SSH folder and files](ssh/permissions_on_ssh_folder_and_files.md)
- [Hardening SSH server](ssh/hardening_ssh_server.md)

<a id="starship"></a>
### Starship - nifty prompt and an alternative to Liquid Prompt

- [Use Starship](starship/use_starship.md)
- [Increase Interval for Slow Commands](starship/increase_interval_for_slow_commands.md)

<a id="#swagger---see-also-openapi"></a>
### Swagger - see also OpenAPI

- [Swagger](swagger/edit_and_validate.md)

<a id="swift"></a>
### Swift

- [Learn Swift](swift/learn_swift.md)

<a id="tar"></a>
### tar

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
### Ubuntu

- [Install updates via command line](ubuntu/install_updates_via_cli.md)
- [How to enquire version](ubuntu/how_to_enquire_version.md)
- [Translate release names](ubuntu/translate_release_names.md)

<a id="ufw"></a>
### ufw - Uncomplicated Firewall

- [How to set up ufw](ufw/how_to_set_up_ufw.md)
- [Enable or disable IPv6](ufw/disable_or_enable_ipv6.md)
- [Allow HTTPS](ufw/allow_https.md)

<a id="visual-studio-code"></a>
### VSCode / Visual Studio Code

- [Stop vscode from calling home](vscode/stop_vscode_from_calling_home.md)
- [Integrate vscode with Shell / CLI](vscode/integrate_with_cli.md)
- [Synchronize Setttings across machines](vscode/sync_settings.md)
- [Use Markdownlint](vscode/use_markdownlint.md)
- [Todo Tree Extension](vscode/todo_tree_extension.md)
- [Issue with integrated terminal on macOS](vscode/issue_with_integrated_terminal_on_macos.md)
- [Themes](vscode/themes.md)

<a id="vmware-fusion"></a>
### VMware Fusion

- [Install VMware Tools](fusion/install_vmware_tools.md)
- [Configure Debian 7](fusion/mount_shared_folder.md)

<a id="vue"></a>
### Vue

- [Get Started with Vue](vue/get_started_with_vue.md)

<a id="wsl"></a>
### WSL 1/2

- [Configure Git](wsl/configure_git.md)
- [Developing in Visual Studio Code](wsl/developing_in_vscode.md)
- [Up and Downgrade WSL](wsl/up_and_downgrade_wsl.md)
- [bashrc not being sourced](wsl/bashrc_not_being_sourced.md)

<a id="wtf-util"></a>
### wtf util

- [Play around with wtf](wtf/play_around_with_wtf.md)
- [Placing elements](wtf/placing_elements.md)

<a id="xml"></a>
### XML - see also YAML and JSON

- [Avoid entity expansion](xml/avoid_entity_expansion.md)
- [Fast XML/XSD validation on the command line](xml/fast_xml-xsd_validation_on_cli.md)

<a id="yaml"></a>
### YAML - see also XML and JSON

- [Learning YAML](yaml/learning_yaml.md)
- [How to syntax check a YAML file](yaml/howto_syntax_check_a_yaml_file.md)

<a id="z"></a>
### z - for jumping around in the commandline

- [Jumping Around Using z](z/jump_around.md)

<a id="zsh"></a>
### zsh - another shell than bash

- [Use zsh](zsh/use_zsh.md)
- [Set Environment from File](zsh/set_environment_from_file.md)

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

&copy; 2016-2022 jonasbn

This repository is licensed under the MIT license. See [LICENSE](LICENSE) file
for details. Much is lifted from elsewhere and might by copyrighted under other
licenses by the respective authors. I will mention this where applicable and I
will link to original sources when and if possible.
