" Vim syntax file
" Language: h2o
" Maintainer: Atsushi Mori <negima1976@negima.mobi>
" Version: 0.2
" URL: https://github.com/negima1976/h2o.vim

if exists("b:current_syntax")
  finish
end

setlocal iskeyword+=.
setlocal iskeyword+=-
setlocal iskeyword+=/

syn match h2oVariable '\$\w\w*'
syn match h2oVariableBlock '\$\w\w*' contained
syn match h2oVariavleString '\$\w\w*' contained
syn region h2oBlock start=+^+ end=+:+ contains=h2oComment,h2oDirectiveBlock,h2oDirective,h2oDirectiveAttribute,h2oVariableBlock,h2oString oneline
syn region h2oString start=+"+ end=+"+ skip=+\\\\\|\\"+ contains=h2oVariableString oneline
syn region h2oString start=+'+ end=+'+ skip=+\\\\\|\\'+ contains=h2oVariableString oneline
syn match h2oComment ' *#.*$'

syn match h2oBoolean '\c\(on\|off\)'
syn match h2oBoolean '\c\(yes\|no\)'

syn keyword h2oDirectiveBlock hosts                                   contained
syn keyword h2oDirectiveBlock paths                                   contained

syn keyword h2oDirectiveAttribute listen                              contained
syn keyword h2oDirectiveAttribute certificate-file                    contained
syn keyword h2oDirectiveAttribute key-file                            contained
syn keyword h2oDirectiveAttribute minimum-version                     contained
syn keyword h2oDirectiveAttribute cipher-suite                        contained
syn keyword h2oDirectiveAttribute cipher-preference                   contained
syn keyword h2oDirectiveAttribute dh-file                             contained
syn keyword h2oDirectiveAttribute ocsp-update-interval                contained
syn keyword h2oDirectiveAttribute ocsp-max-failures                   contained
syn keyword h2oDirectiveAttribute cache-store                         contained
syn keyword h2oDirectiveAttribute cache-memcached-num-threads         contained
syn keyword h2oDirectiveAttribute cache-memcached-prefix              contained
syn keyword h2oDirectiveAttribute ticket-store                        contained
syn keyword h2oDirectiveAttribute ticket-cipher                       contained
syn keyword h2oDirectiveAttribute ticket-hash                         contained
syn keyword h2oDirectiveAttribute ticket-file                         contained
syn keyword h2oDirectiveAttribute ticket-memcached-key                contained
syn keyword h2oDirectiveAttribute lifetime                            contained
syn keyword h2oDirectiveAttribute memcached                           contained
syn keyword h2oDirectiveAttribute internal                            contained
syn keyword h2oDirectiveAttribute type                                contained
syn keyword h2oDirectiveAttribute status                              contained
syn keyword h2oDirectiveAttribute ssl                                 contained
syn keyword h2oDirectiveAttribute url                                 contained
syn keyword h2oDirectiveAttribute port                                contained
syn keyword h2oDirectiveAttribute host                                contained
syn keyword h2oDirectiveAttribute extension                           contained
syn keyword h2oDirectiveAttribute capacity-bits                       contained
syn keyword h2oDirectiveAttribute tracking-types                      contained
syn keyword h2oDirectiveAttribute highest                             contained
syn keyword h2oDirectiveAttribute normal                              contained

syn keyword h2oDirective error-log                                    contained
syn keyword h2oDirective limit-request-body                           contained
syn keyword h2oDirective max-connections                              contained
syn keyword h2oDirective max-delegations                              contained
syn keyword h2oDirective num-name-resolution-threads                  contained
syn keyword h2oDirective num-threads                                  contained
syn keyword h2oDirective pid-file                                     contained
syn keyword h2oDirective tcp-fastopen                                 contained
syn keyword h2oDirective http1-request-timeout                        contained
syn keyword h2oDirective http1-upgrade-to-http2                       contained
syn keyword h2oDirective http2-idle-timeout                           contained
syn keyword h2oDirective http2-max-concurrent-requests-per-connection contained
syn keyword h2oDIrective http2-reprioritize-blocking-assets           contained
syn keyword h2oDirective access-log                                   contained
syn keyword h2oDirective expires                                      contained
syn keyword h2oDirective fastcgi.connect                              contained
syn keyword h2oDirective fastcgi.spawn                                contained
syn keyword h2oDirective fastcgi.timeout.io                           contained
syn keyword h2oDirective fastcgi.timeout.keepalive                    contained
syn keyword h2oDirective fastcgi.send-delegated-uri                   contained
syn keyword h2oDirective file.custom-handler                          contained
syn keyword h2oDirective file.dir                                     contained
syn keyword h2oDirective file.dirlisting                              contained
syn keyword h2oDirective file.etag                                    contained
syn keyword h2oDirective file.index                                   contained
syn keyword h2oDirective file.mime.addtypes                           contained
syn keyword h2oDirective file.mime.removetypes                        contained
syn keyword h2oDirective file.mime.setdefaulttype                     contained
syn keyword h2oDirective file.mime.settypes                           contained
syn keyword h2oDirective file.send-gzip                               contained
syn keyword h2oDirective header.add                                   contained
syn keyword h2oDirective header.append                                contained
syn keyword h2oDirective header.merge                                 contained
syn keyword h2oDirective header.set                                   contained
syn keyword h2oDirective header.setifempty                            contained
syn keyword h2oDirective header.unset                                 contained
syn keyword h2oDirective proxy.reverse.url                            contained
syn keyword h2oDirective proxy.preserve-host                          contained
syn keyword h2oDirective proxy.timeout.io                             contained
syn keyword h2oDirective proxy.timeout.keepalive                      contained
syn keyword h2oDirective redirect                                     contained
syn keyword h2oDirective reproxy                                      contained
syn keyword h2oDirective ssl-session-resumption                       contained
syn keyword h2oDirective user                                         contained
syn keyword h2oDirective http2-casper                                 contained
syn keyword h2oDirective mruby-handler                                contained
syn keyword h2oDirective mruby-handler-file                           contained

" highlight

hi link h2oComment            Comment
hi link h2oVariable           Idenfier
hi link h2oVariableBlock      Identifier
hi link h2oVariableString     PreProc
hi link h2oBlock              Normal
hi link h2oString             String

hi link h2oBoolean            Boolean
hi link h2oDirectiveBlock     Statement
hi link h2oDirective          Identifier
hi link h2oDirectiveAttribute Special

let b:current_syntax = "h2o"
