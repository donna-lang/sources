/*
 * Donna markdown FFI.
 *
 * Wraps MD4C's callback-based HTML renderer in a simple function returning a
 * malloc-owned NUL-terminated string, matching Donna's C string convention.
 */

#include <stdlib.h>
#include <string.h>

#include "md4c-html.h"

typedef struct {
    char *data;
    size_t len;
    size_t cap;
    int failed;
} donna_md_buffer;

static void donna_md_append(const MD_CHAR *text, MD_SIZE size, void *userdata) {
    donna_md_buffer *buf = (donna_md_buffer *)userdata;
    size_t needed;
    char *next;

    if (buf->failed) return;

    needed = buf->len + (size_t)size + 1;
    if (needed > buf->cap) {
        size_t cap = buf->cap;
        while (cap < needed) cap *= 2;
        next = (char *)realloc(buf->data, cap);
        if (!next) {
            buf->failed = 1;
            return;
        }
        buf->data = next;
        buf->cap = cap;
    }

    memcpy(buf->data + buf->len, text, (size_t)size);
    buf->len += (size_t)size;
    buf->data[buf->len] = '\0';
}

char *donna_markdown_to_html(const char *markdown) {
    donna_md_buffer buf;
    int rc;

    if (!markdown) markdown = "";

    buf.cap = 256;
    buf.len = 0;
    buf.failed = 0;
    buf.data = (char *)malloc(buf.cap);
    if (!buf.data) return strdup("");
    buf.data[0] = '\0';

    rc = md_html(markdown, (MD_SIZE)strlen(markdown), donna_md_append, &buf, 0, MD_HTML_FLAG_SKIP_UTF8_BOM);
    if (rc != 0 || buf.failed) {
        free(buf.data);
        return strdup("");
    }

    return buf.data;
}
