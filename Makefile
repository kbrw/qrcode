# Makefile
LIBDIR      = `erl -eval \
  'io:format("~s~n", [code:lib_dir()])' -s init stop -noshell`
VERSION     = 1.0.3
CC              = erlc
ERL         = erl
EBIN            = ebin
CFLAGS      = -I include -pa $(EBIN)
COMPILE     = $(CC) $(CFLAGS) -o $(EBIN)
EBIN_DIRS = $(wildcard deps/*/ebin)

all: compile
start: all start_all

compile:
	@$(ERL) -make

clean:
	rm -rf ebin/*.beam
