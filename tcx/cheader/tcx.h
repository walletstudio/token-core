#include <stdarg.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

const char *calc_external_address(const char *json_str);

void clear_err(void);

const char *export_mnemonic(const char *json_str);

const char *find_wallet_by_mnemonic(const char *json_str);

void free_const_string(const char *s);

void free_string(char *s);

const char *get_last_err_message(void);

const char *import_wallet_from_mnemonic(const char *json_str);

void init_token_core_x(const char *json_str);

const char *sign_transaction(const char *json_str);
