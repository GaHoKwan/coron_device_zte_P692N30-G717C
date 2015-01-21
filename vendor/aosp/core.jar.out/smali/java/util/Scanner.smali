.class public final Ljava/util/Scanner;
.super Ljava/lang/Object;
.source "Scanner.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final BOOLEAN_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_DELIMITER:Ljava/util/regex/Pattern; = null

.field private static final DEFAULT_RADIX:I = 0xa

.field private static final LINE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final LINE_TERMINATOR:Ljava/util/regex/Pattern; = null

.field private static final MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern; = null

.field private static final NL:Ljava/lang/String; = "\n|\r\n|\r|\u0085|\u2028|\u2029"


# instance fields
.field private buffer:Ljava/nio/CharBuffer;

.field private bufferLength:I

.field private cachedFloatPattern:Ljava/util/regex/Pattern;

.field private cachedIntegerPattern:Ljava/util/regex/Pattern;

.field private cachedIntegerPatternRadix:I

.field private cachedNextIndex:I

.field private cachedNextValue:Ljava/lang/Object;

.field private closed:Z

.field private currentRadix:I

.field private decimalFormat:Ljava/text/DecimalFormat;

.field private delimiter:Ljava/util/regex/Pattern;

.field private findStartIndex:I

.field private input:Ljava/lang/Readable;

.field private inputExhausted:Z

.field private lastIOException:Ljava/io/IOException;

.field private locale:Ljava/util/Locale;

.field private matchSuccessful:Z

.field private matcher:Ljava/util/regex/Matcher;

.field private preStartIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "\\p{javaWhitespace}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    .line 70
    const-string v0, "true|false"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "\n|\r\n|\r|\u0085|\u2028|\u2029"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    .line 76
    const-string v0, "(\n|\r\n|\r|\u0085|\u2028|\u2029)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    .line 79
    const-string v0, ".*(\n|\r\n|\r|\u0085|\u2028|\u2029)|.+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, "(?s).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .parameter "src"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v2, 0x400

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 91
    sget-object v2, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v2, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 95
    const/16 v2, 0xa

    iput v2, p0, Ljava/util/Scanner;->currentRadix:I

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 100
    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 103
    iget v2, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 106
    iput v3, p0, Ljava/util/Scanner;->bufferLength:I

    .line 109
    iput-boolean v3, p0, Ljava/util/Scanner;->closed:Z

    .line 113
    iput-boolean v3, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 118
    iput-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 120
    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 121
    iput v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 123
    iput-object v4, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 125
    iput v5, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 126
    iput-object v4, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "src == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 159
    .local v1, fis:Ljava/io/FileInputStream;
    if-nez p2, :cond_1

    .line 160
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "charsetName == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Ljava/util/Scanner;->setInput(Ljava/lang/Readable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 188
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "src"
    .parameter "charsetName"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 202
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v1, 0x400

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 91
    sget-object v1, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 95
    const/16 v1, 0xa

    iput v1, p0, Ljava/util/Scanner;->currentRadix:I

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 100
    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 103
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 106
    iput v2, p0, Ljava/util/Scanner;->bufferLength:I

    .line 109
    iput-boolean v2, p0, Ljava/util/Scanner;->closed:Z

    .line 113
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 118
    iput-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 120
    iput-object v3, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 121
    iput v4, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 123
    iput-object v3, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 125
    iput v4, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 126
    iput-object v3, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "src == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/util/Scanner;->setInput(Ljava/lang/Readable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/Readable;)V
    .locals 4
    .parameter "src"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 91
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 95
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 100
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 103
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 106
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 109
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 113
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 118
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 120
    iput-object v2, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 121
    iput v3, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 123
    iput-object v2, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 125
    iput v3, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 126
    iput-object v2, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setInput(Ljava/lang/Readable;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "src"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 91
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 95
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 100
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 103
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 106
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 109
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 113
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 118
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 120
    iput-object v2, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 121
    iput v3, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 123
    iput-object v2, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 125
    iput v3, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 126
    iput-object v2, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 177
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setInput(Ljava/lang/Readable;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 234
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/Scanner;-><init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    .locals 4
    .parameter "src"
    .parameter "charsetName"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 248
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 91
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 95
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    .line 97
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 100
    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 103
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 106
    iput v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 109
    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    .line 113
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 118
    iput-boolean v1, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 120
    iput-object v2, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 121
    iput v3, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 123
    iput-object v2, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 125
    iput v3, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 126
    iput-object v2, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    if-nez p2, :cond_1

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charsetName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    invoke-static {p1, p2}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setInput(Ljava/lang/Readable;)V

    .line 256
    return-void
.end method

.method private addNegativeSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "unsignedNumeral"

    .prologue
    .line 1783
    const-string v0, ""

    .line 1784
    .local v0, negativePrefix:Ljava/lang/String;
    const-string v1, ""

    .line 1785
    .local v1, negativeSuffix:Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1788
    :cond_0
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1791
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private addPositiveSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "unsignedNumeral"

    .prologue
    .line 1768
    const-string v0, ""

    .line 1769
    .local v0, positivePrefix:Ljava/lang/String;
    const-string v1, ""

    .line 1770
    .local v1, positiveSuffix:Ljava/lang/String;
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1771
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1773
    :cond_0
    iget-object v2, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\E"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1776
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private checkNotNull(Ljava/util/regex/Pattern;)V
    .locals 2
    .parameter "pattern"

    .prologue
    .line 1659
    if-nez p1, :cond_0

    .line 1660
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pattern == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1662
    :cond_0
    return-void
.end method

.method private checkOpen()V
    .locals 1

    .prologue
    .line 1653
    iget-boolean v0, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v0, :cond_0

    .line 1654
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1656
    :cond_0
    return-void
.end method

.method private checkRadix(I)V
    .locals 3
    .parameter "radix"

    .prologue
    .line 1637
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x24

    if-le p1, v0, :cond_1

    .line 1638
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1640
    :cond_1
    return-void
.end method

.method private expandBuffer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2063
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    .line 2064
    .local v4, oldPosition:I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v2

    .line 2065
    .local v2, oldCapacity:I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    .line 2066
    .local v3, oldLimit:I
    mul-int/lit8 v1, v2, 0x2

    .line 2067
    .local v1, newCapacity:I
    new-array v0, v1, [C

    .line 2068
    .local v0, newBuffer:[C
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v5

    invoke-static {v5, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2069
    invoke-static {v0, v6, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v5

    iput-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    .line 2070
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2071
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2072
    return-void
.end method

.method private findDelimiterAfter()I
    .locals 4

    .prologue
    .line 1999
    const/4 v1, 0x0

    .line 2000
    .local v1, tokenEndIndex:I
    const/4 v0, 0x0

    .line 2001
    .local v0, findComplete:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 2002
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2003
    const/4 v0, 0x1

    .line 2004
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 2005
    const/4 v0, 0x0

    goto :goto_0

    .line 2008
    :cond_1
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_2

    .line 2009
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 2010
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    .line 2012
    :cond_2
    const/4 v2, -0x1

    .line 2018
    :goto_1
    return v2

    .line 2016
    :cond_3
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 2017
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    move v2, v1

    .line 2018
    goto :goto_1
.end method

.method private findPreDelimiter()I
    .locals 4

    .prologue
    .line 1943
    const/4 v0, 0x0

    .line 1944
    .local v0, findComplete:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1945
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1946
    const/4 v0, 0x1

    .line 1948
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_0

    .line 1951
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_0

    .line 1952
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1953
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    .line 1954
    const/4 v0, 0x0

    goto :goto_0

    .line 1958
    :cond_1
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_2

    .line 1959
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1960
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    .line 1962
    :cond_2
    const/4 v1, -0x1

    .line 1968
    :goto_1
    return v1

    .line 1966
    :cond_3
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 1967
    .local v1, tokenStartIndex:I
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    goto :goto_1
.end method

.method private getFloatPattern()Ljava/util/regex/Pattern;
    .locals 15

    .prologue
    .line 1721
    iget-object v13, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    if-nez v13, :cond_0

    .line 1722
    iget-object v13, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {v13}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v13

    check-cast v13, Ljava/text/DecimalFormat;

    iput-object v13, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1725
    :cond_0
    iget-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    if-eqz v13, :cond_1

    .line 1726
    iget-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 1754
    :goto_0
    return-object v13

    .line 1729
    :cond_1
    iget-object v13, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v13}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    .line 1731
    .local v3, dfs:Ljava/text/DecimalFormatSymbols;
    const-string v4, "([0-9]|(\\p{javaDigit}))"

    .line 1732
    .local v4, digit:Ljava/lang/String;
    const-string v10, "[\\p{javaDigit}&&[^0]]"

    .line 1733
    .local v10, nonZeroDigit:Ljava/lang/String;
    invoke-direct {p0, v4, v10}, Ljava/util/Scanner;->getNumeral(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1735
    .local v11, numeral:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\\"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1736
    .local v2, decimalSeparator:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "*+|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "++)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1739
    .local v1, decimalNumeral:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "([eE][+-]?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "+)?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1741
    .local v5, exponent:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(([-+]?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {p0, v1}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {p0, v1}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "))"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1745
    .local v0, decimal:Ljava/lang/String;
    const-string v6, "([-+]?0[xX][0-9a-fA-F]*\\.[0-9a-fA-F]+([pP][-+]?[0-9]+)?)"

    .line 1746
    .local v6, hexFloat:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v7

    .line 1747
    .local v7, localNaN:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v8

    .line 1748
    .local v8, localeInfinity:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "(NaN|\\Q"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\\E|Infinity|\\Q"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\\E)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1749
    .local v9, nonNumber:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "((([-+]?("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")))|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {p0, v9}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {p0, v9}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "))"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1753
    .local v12, signedNonNumber:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    iput-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 1754
    iget-object v13, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    goto/16 :goto_0
.end method

.method private getIntegerPattern(I)Ljava/util/regex/Pattern;
    .locals 9
    .parameter "radix"

    .prologue
    .line 1693
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    .line 1695
    iget-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    if-nez v7, :cond_0

    .line 1696
    iget-object v7, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    invoke-static {v7}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v7

    check-cast v7, Ljava/text/DecimalFormat;

    iput-object v7, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 1699
    :cond_0
    iget v7, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    if-ne v7, p1, :cond_1

    .line 1700
    iget-object v7, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 1717
    :goto_0
    return-object v7

    .line 1703
    :cond_1
    const-string v2, "0123456789abcdefghijklmnopqrstuvwxyz"

    .line 1704
    .local v2, digits:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v2, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1705
    .local v0, ASCIIDigit:Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {v2, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1707
    .local v3, nonZeroASCIIDigit:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "((?i)["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]|\\p{javaDigit})"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1708
    .local v1, digit:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "((?i)["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]|([\\p{javaDigit}&&[^0]]))"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1709
    .local v4, nonZeroDigit:Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->getNumeral(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1711
    .local v5, numeral:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(([-+]?("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")))|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v5}, Ljava/util/Scanner;->addPositiveSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v5}, Ljava/util/Scanner;->addNegativeSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1715
    .local v6, regex:Ljava/lang/String;
    iput p1, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 1716
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iput-object v7, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 1717
    iget-object v7, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    goto/16 :goto_0
.end method

.method private getNumeral(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "digit"
    .parameter "nonZeroDigit"

    .prologue
    .line 1758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v3}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v3

    invoke-virtual {v3}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1759
    .local v0, groupSeparator:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")+)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1761
    .local v1, groupedNumeral:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "++)|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readMore()V
    .locals 6

    .prologue
    .line 2027
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 2028
    .local v2, oldPosition:I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2030
    .local v1, oldBufferLength:I
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 2031
    invoke-direct {p0}, Ljava/util/Scanner;->expandBuffer()V

    .line 2035
    :cond_0
    const/4 v3, 0x0

    .line 2037
    .local v3, readCount:I
    :try_start_0
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2038
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2039
    :cond_1
    iget-object v4, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-interface {v4, v5}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2052
    :goto_0
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 2053
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 2054
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 2055
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->inputExhausted:Z

    .line 2059
    :goto_1
    return-void

    .line 2042
    :catch_0
    move-exception v0

    .line 2046
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    .line 2048
    const/4 v3, -0x1

    .line 2049
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_0

    .line 2057
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    add-int/2addr v4, v3

    iput v4, p0, Ljava/util/Scanner;->bufferLength:I

    goto :goto_1
.end method

.method private recoverPreviousStatus()V
    .locals 1

    .prologue
    .line 1689
    iget v0, p0, Ljava/util/Scanner;->preStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1690
    return-void
.end method

.method private removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 12
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/16 v11, 0xa

    const/4 v10, -0x1

    .line 1819
    iget-object v8, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v8}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    .line 1821
    .local v1, dfs:Ljava/text/DecimalFormatSymbols;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1822
    .local v7, tokenBuilder:Ljava/lang/StringBuilder;
    invoke-direct {p0, v7}, Ljava/util/Scanner;->removeLocaleSign(Ljava/lang/StringBuilder;)Z

    move-result v4

    .line 1824
    .local v4, negative:Z
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getGroupingSeparator()C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 1825
    .local v2, groupSeparator:Ljava/lang/String;
    const/4 v6, -0x1

    .line 1826
    .local v6, separatorIndex:I
    :goto_0
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v10, :cond_0

    .line 1827
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v6, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1830
    :cond_0
    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1831
    .local v0, decimalSeparator:Ljava/lang/String;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1832
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1833
    .local v5, result:Ljava/lang/StringBuilder;
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v8, :cond_2

    .line 1834
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 1835
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    const/16 v9, 0x24

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-eq v8, v10, :cond_1

    .line 1836
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1834
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1839
    .end local v3           #i:I
    :cond_2
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v8, :cond_a

    .line 1840
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1841
    const-string v8, "NaN"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    :cond_3
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 1856
    move-object v5, v7

    .line 1858
    :cond_4
    if-eq v6, v10, :cond_5

    .line 1859
    const-string v8, "."

    invoke-virtual {v5, v6, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    :cond_5
    if-eqz v4, :cond_6

    .line 1863
    const/4 v8, 0x0

    const/16 v9, 0x2d

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1865
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1842
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/text/DecimalFormatSymbols;->getInfinity()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1843
    const-string v8, "Infinity"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1845
    :cond_8
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 1846
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-eq v8, v10, :cond_9

    .line 1847
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1845
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1852
    .end local v3           #i:I
    :cond_a
    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8
.end method

.method private removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "floatString"

    .prologue
    const/4 v4, -0x1

    .line 1799
    const/16 v3, 0x78

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_0

    const/16 v3, 0x58

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 1811
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1805
    .restart local p1
    :cond_1
    const/16 v3, 0x65

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, exponentIndex:I
    if-ne v1, v4, :cond_2

    const/16 v3, 0x45

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 1806
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1807
    .local v0, decimalNumeralString:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1808
    .local v2, exponentString:Ljava/lang/String;
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v0, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1811
    .end local v0           #decimalNumeralString:Ljava/lang/String;
    .end local v2           #exponentString:Ljava/lang/String;
    :cond_3
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, p1, v3}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private removeLocaleSign(Ljava/lang/StringBuilder;)Z
    .locals 10
    .parameter "tokenBuilder"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1873
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositivePrefix()Ljava/lang/String;

    move-result-object v3

    .line 1874
    .local v3, positivePrefix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getPositiveSuffix()Ljava/lang/String;

    move-result-object v4

    .line 1875
    .local v4, positiveSuffix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativePrefix()Ljava/lang/String;

    move-result-object v1

    .line 1876
    .local v1, negativePrefix:Ljava/lang/String;
    iget-object v5, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v5}, Ljava/text/DecimalFormat;->getNegativeSuffix()Ljava/lang/String;

    move-result-object v2

    .line 1878
    .local v2, negativeSuffix:Ljava/lang/String;
    const-string v5, "+"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1879
    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1881
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 1882
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1884
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_2

    .line 1885
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1888
    :cond_2
    const/4 v0, 0x0

    .line 1889
    .local v0, negative:Z
    const-string v5, "-"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_3

    .line 1890
    invoke-virtual {p1, v7, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1891
    const/4 v0, 0x1

    .line 1893
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 1894
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1895
    const/4 v0, 0x1

    .line 1897
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_5

    .line 1898
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1900
    const/4 v0, 0x1

    .line 1902
    :cond_5
    return v0
.end method

.method private resetMatcher()V
    .locals 3

    .prologue
    .line 1668
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    if-nez v0, :cond_0

    .line 1669
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 1673
    :goto_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useTransparentBounds(Z)Ljava/util/regex/Matcher;

    .line 1674
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->useAnchoringBounds(Z)Ljava/util/regex/Matcher;

    .line 1675
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1676
    return-void

    .line 1671
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    goto :goto_0
.end method

.method private saveCurrentStatus()V
    .locals 1

    .prologue
    .line 1682
    iget v0, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v0, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 1683
    return-void
.end method

.method private setHeadTokenRegion(I)Z
    .locals 6
    .parameter "findIndex"

    .prologue
    const/4 v5, -0x1

    .line 1977
    const/4 v0, 0x0

    .line 1979
    .local v0, setSuccess:Z
    if-ne p1, v5, :cond_0

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v3, v4, :cond_0

    .line 1980
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 1981
    .local v2, tokenStartIndex:I
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 1982
    .local v1, tokenEndIndex:I
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1983
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1984
    const/4 v0, 0x1

    .line 1987
    .end local v1           #tokenEndIndex:I
    .end local v2           #tokenStartIndex:I
    :cond_0
    if-eq v5, p1, :cond_1

    iget v3, p0, Ljava/util/Scanner;->preStartIndex:I

    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1988
    iget v2, p0, Ljava/util/Scanner;->preStartIndex:I

    .line 1989
    .restart local v2       #tokenStartIndex:I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 1990
    .restart local v1       #tokenEndIndex:I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1992
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v2, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1993
    const/4 v0, 0x1

    .line 1995
    .end local v1           #tokenEndIndex:I
    .end local v2           #tokenStartIndex:I
    :cond_1
    return v0
.end method

.method private setInput(Ljava/lang/Readable;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 259
    iput-object p1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    .line 260
    iget-object v0, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 261
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    iget-object v1, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    .line 262
    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    const/4 v1, 0x0

    .line 897
    iput-object p1, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    .line 898
    iput-object v1, p0, Ljava/util/Scanner;->decimalFormat:Ljava/text/DecimalFormat;

    .line 899
    iput-object v1, p0, Ljava/util/Scanner;->cachedFloatPattern:Ljava/util/regex/Pattern;

    .line 900
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/Scanner;->cachedIntegerPatternRadix:I

    .line 901
    iput-object v1, p0, Ljava/util/Scanner;->cachedIntegerPattern:Ljava/util/regex/Pattern;

    .line 902
    return-void
.end method

.method private setTokenRegion()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1912
    const/4 v1, 0x0

    .line 1914
    .local v1, tokenStartIndex:I
    const/4 v0, 0x0

    .line 1916
    .local v0, tokenEndIndex:I
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget-object v4, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1917
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1919
    invoke-direct {p0}, Ljava/util/Scanner;->findPreDelimiter()I

    move-result v1

    .line 1920
    invoke-direct {p0, v1}, Ljava/util/Scanner;->setHeadTokenRegion(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1935
    :goto_0
    return v2

    .line 1923
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->findDelimiterAfter()I

    move-result v0

    .line 1925
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 1927
    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v3, v4, :cond_1

    .line 1928
    const/4 v2, 0x0

    goto :goto_0

    .line 1930
    :cond_1
    iget v0, p0, Ljava/util/Scanner;->bufferLength:I

    .line 1931
    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    iput v3, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1934
    :cond_2
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, v1, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 273
    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    if-eqz v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 278
    :try_start_0
    iget-object v1, p0, Ljava/util/Scanner;->input:Ljava/lang/Readable;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_1
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    goto :goto_1
.end method

.method public delimiter()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public findInLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pattern"

    .prologue
    .line 403
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findInLine(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 9
    .parameter "pattern"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 311
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 312
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, horizonLineSeparator:I
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v6, Ljava/util/Scanner;->MULTI_LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 316
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v7, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, findComplete:Z
    const/4 v3, 0x0

    .line 320
    .local v3, terminatorLength:I
    :goto_0
    if-nez v0, :cond_2

    .line 321
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 323
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    sub-int v3, v5, v6

    .line 324
    const/4 v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    iget-boolean v5, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v5, :cond_1

    .line 327
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 328
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    .line 330
    :cond_1
    iget v1, p0, Ljava/util/Scanner;->bufferLength:I

    .line 331
    const/4 v0, 0x1

    goto :goto_0

    .line 336
    :cond_2
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 344
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->limit()I

    move-result v2

    .line 346
    .local v2, oldLimit:I
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    add-int v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 350
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v7, v1, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 351
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 353
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 356
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 357
    iget v5, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int/2addr v5, v3

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 361
    :cond_3
    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    if-eq v1, v5, :cond_4

    add-int v5, v1, v3

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 365
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 368
    iput-boolean v8, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 385
    :goto_1
    return-object v4

    .line 371
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 374
    iget-object v4, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 377
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 381
    :cond_5
    iget-object v5, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 384
    iput-boolean v8, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_1
.end method

.method public findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "pattern"
    .parameter "horizon"

    .prologue
    .line 506
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;
    .locals 8
    .parameter "pattern"
    .parameter "horizon"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 439
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 440
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    .line 441
    if-gez p2, :cond_0

    .line 442
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "horizon < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 444
    :cond_0
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, result:Ljava/lang/String;
    if-nez p2, :cond_5

    const v1, 0x7fffffff

    .line 452
    .local v1, horizonEndIndex:I
    :cond_1
    :goto_0
    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 454
    .local v0, findEndIndex:I
    iget v6, p0, Ljava/util/Scanner;->bufferLength:I

    if-gt v1, v6, :cond_6

    move v2, v4

    .line 458
    .local v2, isHorizonInBuffer:Z
    :goto_1
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v7, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v6, v7, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 459
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 460
    if-nez p2, :cond_2

    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    if-nez v2, :cond_3

    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v6, :cond_8

    .line 461
    :cond_3
    iget-object v6, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 479
    :cond_4
    if-eqz v3, :cond_9

    .line 480
    iget-object v5, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 481
    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 485
    :goto_2
    return-object v3

    .line 447
    .end local v0           #findEndIndex:I
    .end local v1           #horizonEndIndex:I
    .end local v2           #isHorizonInBuffer:Z
    :cond_5
    iget v6, p0, Ljava/util/Scanner;->findStartIndex:I

    add-int v1, v6, p2

    goto :goto_0

    .restart local v0       #findEndIndex:I
    .restart local v1       #horizonEndIndex:I
    :cond_6
    move v2, v5

    .line 454
    goto :goto_1

    .line 468
    .restart local v2       #isHorizonInBuffer:Z
    :cond_7
    if-nez v2, :cond_4

    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v6, :cond_4

    .line 474
    :cond_8
    iget-boolean v6, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v6, :cond_1

    .line 475
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 476
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0

    .line 483
    :cond_9
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_2
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 519
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/lang/String;)Z
    .locals 1
    .parameter "pattern"

    .prologue
    .line 571
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNext(Ljava/util/regex/Pattern;)Z
    .locals 2
    .parameter "pattern"

    .prologue
    const/4 v0, 0x0

    .line 535
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 536
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    .line 537
    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 538
    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    .line 541
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 542
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 554
    :goto_0
    return v0

    .line 545
    :cond_0
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, hasNext:Z
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 549
    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    iput v1, p0, Ljava/util/Scanner;->cachedNextIndex:I

    .line 550
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 551
    const/4 v0, 0x1

    .line 553
    :cond_1
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    goto :goto_0
.end method

.method public hasNextBigDecimal()Z
    .locals 5

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 585
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 586
    .local v3, isBigDecimalValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 587
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 590
    :try_start_0
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    const/4 v3, 0x1

    .line 596
    .end local v2           #floatString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 592
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextBigInteger()Z
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextBigInteger(I)Z

    move-result v0

    return v0
.end method

.method public hasNextBigInteger(I)Z
    .locals 5
    .parameter "radix"

    .prologue
    .line 625
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 626
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 627
    .local v3, isBigIntegerValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 628
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 631
    :try_start_0
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    const/4 v3, 0x1

    .line 637
    .end local v1           #intString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 633
    .restart local v1       #intString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 634
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextBoolean()Z
    .locals 1

    .prologue
    .line 650
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v0

    return v0
.end method

.method public hasNextByte()Z
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextByte(I)Z

    move-result v0

    return v0
.end method

.method public hasNextByte(I)Z
    .locals 5
    .parameter "radix"

    .prologue
    .line 679
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 680
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 681
    .local v3, isByteValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 682
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 685
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;I)Ljava/lang/Byte;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    const/4 v3, 0x1

    .line 691
    .end local v1           #intString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 687
    .restart local v1       #intString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 688
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextDouble()Z
    .locals 5

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 705
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 706
    .local v3, isDoubleValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 707
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 710
    :try_start_0
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    const/4 v3, 0x1

    .line 716
    .end local v2           #floatString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 712
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 713
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextFloat()Z
    .locals 5

    .prologue
    .line 729
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 730
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 731
    .local v3, isFloatValue:Z
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 732
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 735
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    const/4 v3, 0x1

    .line 741
    .end local v2           #floatString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 737
    .restart local v2       #floatString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 738
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextInt()Z
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextInt(I)Z

    move-result v0

    return v0
.end method

.method public hasNextInt(I)Z
    .locals 5
    .parameter "radix"

    .prologue
    .line 771
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 772
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 773
    .local v3, isIntValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 774
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 775
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 777
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    const/4 v3, 0x1

    .line 783
    .end local v1           #intString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 779
    .restart local v1       #intString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 780
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextLine()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 793
    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    .line 794
    sget-object v2, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2, v1}, Ljava/util/Scanner;->findWithinHorizon(Ljava/util/regex/Pattern;I)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 796
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hasNextLong()Z
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextLong(I)Z

    move-result v0

    return v0
.end method

.method public hasNextLong(I)Z
    .locals 5
    .parameter "radix"

    .prologue
    .line 825
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 826
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 827
    .local v3, isLongValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 828
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 829
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 831
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    const/4 v3, 0x1

    .line 837
    .end local v1           #intString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 833
    .restart local v1       #intString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 834
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public hasNextShort()Z
    .locals 1

    .prologue
    .line 850
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->hasNextShort(I)Z

    move-result v0

    return v0
.end method

.method public hasNextShort(I)Z
    .locals 5
    .parameter "radix"

    .prologue
    .line 866
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 867
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    .line 868
    .local v3, isShortValue:Z
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->hasNext(Ljava/util/regex/Pattern;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 869
    iget-object v4, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, intString:Ljava/lang/String;
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v4}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 872
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;I)Ljava/lang/Short;

    move-result-object v4

    iput-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    const/4 v3, 0x1

    .line 878
    .end local v1           #intString:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 874
    .restart local v1       #intString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 875
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Scanner;->matchSuccessful:Z

    goto :goto_0
.end method

.method public ioException()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Ljava/util/Scanner;->lastIOException:Ljava/io/IOException;

    return-object v0
.end method

.method public locale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Ljava/util/Scanner;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public match()Ljava/util/regex/MatchResult;
    .locals 1

    .prologue
    .line 916
    iget-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    if-nez v0, :cond_0

    .line 917
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 919
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    sget-object v0, Ljava/util/Scanner;->ANY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pattern"

    .prologue
    .line 991
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 1
    .parameter "pattern"

    .prologue
    .line 954
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 955
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    .line 956
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 957
    invoke-direct {p0}, Ljava/util/Scanner;->saveCurrentStatus()V

    .line 958
    invoke-direct {p0}, Ljava/util/Scanner;->setTokenRegion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 959
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 961
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 963
    :cond_0
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 964
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 965
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 966
    new-instance v0, Ljava/util/InputMismatchException;

    invoke-direct {v0}, Ljava/util/InputMismatchException;-><init>()V

    throw v0

    .line 969
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 970
    iget-object v0, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextBigDecimal()Ljava/math/BigDecimal;
    .locals 6

    .prologue
    .line 1014
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1015
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1016
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1017
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_0

    .line 1018
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1019
    check-cast v4, Ljava/math/BigDecimal;

    .line 1032
    .end local v4           #obj:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 1021
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1022
    .local v2, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v3

    .line 1023
    .local v3, floatString:Ljava/lang/String;
    invoke-direct {p0, v3}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1026
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, bigDecimalValue:Ljava/math/BigDecimal;
    move-object v4, v0

    .line 1032
    goto :goto_0

    .line 1027
    .end local v0           #bigDecimalValue:Ljava/math/BigDecimal;
    :catch_0
    move-exception v1

    .line 1028
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1029
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1030
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 1048
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextBigInteger(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public nextBigInteger(I)Ljava/math/BigInteger;
    .locals 6
    .parameter "radix"

    .prologue
    .line 1075
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1076
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1077
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1078
    instance-of v5, v4, Ljava/math/BigInteger;

    if-eqz v5, :cond_0

    .line 1079
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1080
    check-cast v4, Ljava/math/BigInteger;

    .line 1093
    .end local v4           #obj:Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 1082
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1083
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, intString:Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 1087
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, bigIntegerValue:Ljava/math/BigInteger;
    move-object v4, v0

    .line 1093
    goto :goto_0

    .line 1088
    .end local v0           #bigIntegerValue:Ljava/math/BigInteger;
    :catch_0
    move-exception v1

    .line 1089
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1090
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1091
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextBoolean()Z
    .locals 1

    .prologue
    .line 1110
    sget-object v0, Ljava/util/Scanner;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nextByte()B
    .locals 1

    .prologue
    .line 1126
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextByte(I)B

    move-result v0

    return v0
.end method

.method public nextByte(I)B
    .locals 6
    .parameter "radix"

    .prologue
    .line 1153
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1154
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1155
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1156
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_0

    .line 1157
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1158
    check-cast v4, Ljava/lang/Byte;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1171
    :goto_0
    return v0

    .line 1160
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1161
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1162
    .local v2, intString:Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v2, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 1163
    const/4 v0, 0x0

    .line 1165
    .local v0, byteValue:B
    :try_start_0
    invoke-static {v2, p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;I)B
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1166
    :catch_0
    move-exception v1

    .line 1167
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1168
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1169
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextDouble()D
    .locals 7

    .prologue
    .line 1197
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1198
    iget-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1199
    .local v5, obj:Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1200
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_0

    .line 1201
    iget v6, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1202
    check-cast v5, Ljava/lang/Double;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1215
    :goto_0
    return-wide v0

    .line 1204
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1205
    .local v3, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    .line 1206
    .local v4, floatString:Ljava/lang/String;
    invoke-direct {p0, v4}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1207
    const-wide/16 v0, 0x0

    .line 1209
    .local v0, doubleValue:D
    :try_start_0
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v2

    .line 1211
    .local v2, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1212
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1213
    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextFloat()F
    .locals 6

    .prologue
    .line 1241
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1242
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1243
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1244
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_0

    .line 1245
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1246
    check-cast v4, Ljava/lang/Float;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1259
    :goto_0
    return v3

    .line 1248
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Ljava/util/Scanner;->getFloatPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1249
    .local v1, floatPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v1}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    .line 1250
    .local v2, floatString:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/util/Scanner;->removeLocaleInfoFromFloat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1251
    const/4 v3, 0x0

    .line 1253
    .local v3, floatValue:F
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1256
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1257
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextInt()I
    .locals 1

    .prologue
    .line 1275
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public nextInt(I)I
    .locals 6
    .parameter "radix"

    .prologue
    .line 1303
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1304
    iget-object v4, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1305
    .local v4, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1306
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 1307
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1308
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1321
    :goto_0
    return v2

    .line 1310
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1311
    .local v3, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v3}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1312
    .local v1, intString:Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1313
    const/4 v2, 0x0

    .line 1315
    .local v2, intValue:I
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1316
    :catch_0
    move-exception v0

    .line 1317
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1318
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1319
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public nextLine()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1338
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1340
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    sget-object v3, Ljava/util/Scanner;->LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1341
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v3, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v2, v3, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1343
    const/4 v0, 0x0

    .line 1345
    .local v0, result:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1346
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iget v3, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Ljava/util/Scanner;->bufferLength:I

    iget-object v3, p0, Ljava/util/Scanner;->buffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1348
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1349
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1350
    iget-object v2, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1365
    if-eqz v0, :cond_2

    .line 1366
    sget-object v2, Ljava/util/Scanner;->LINE_TERMINATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1367
    .local v1, terminatorMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1368
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1371
    .end local v1           #terminatorMatcher:Ljava/util/regex/Matcher;
    :cond_2
    return-object v0

    .line 1354
    :cond_3
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v2, :cond_4

    .line 1355
    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1356
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 1359
    :cond_4
    iget-boolean v2, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v2, :cond_0

    .line 1360
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1361
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0
.end method

.method public nextLong()J
    .locals 2

    .prologue
    .line 1387
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextLong(I)J
    .locals 7
    .parameter "radix"

    .prologue
    .line 1415
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1416
    iget-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1417
    .local v5, obj:Ljava/lang/Object;
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1418
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_0

    .line 1419
    iget v6, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v6, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1420
    check-cast v5, Ljava/lang/Long;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1433
    :goto_0
    return-wide v3

    .line 1422
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1423
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1424
    .local v1, intString:Ljava/lang/String;
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v6}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1425
    const-wide/16 v3, 0x0

    .line 1427
    .local v3, longValue:J
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    iput-boolean v6, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1430
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1431
    new-instance v6, Ljava/util/InputMismatchException;

    invoke-direct {v6}, Ljava/util/InputMismatchException;-><init>()V

    throw v6
.end method

.method public nextShort()S
    .locals 1

    .prologue
    .line 1449
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->nextShort(I)S

    move-result v0

    return v0
.end method

.method public nextShort(I)S
    .locals 6
    .parameter "radix"

    .prologue
    .line 1477
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1478
    iget-object v3, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1479
    .local v3, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    iput-object v5, p0, Ljava/util/Scanner;->cachedNextValue:Ljava/lang/Object;

    .line 1480
    instance-of v5, v3, Ljava/lang/Short;

    if-eqz v5, :cond_0

    .line 1481
    iget v5, p0, Ljava/util/Scanner;->cachedNextIndex:I

    iput v5, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1482
    check-cast v3, Ljava/lang/Short;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v4

    .line 1495
    :goto_0
    return v4

    .line 1484
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->getIntegerPattern(I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1485
    .local v2, integerPattern:Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2}, Ljava/util/Scanner;->next(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v1

    .line 1486
    .local v1, intString:Ljava/lang/String;
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {p0, v1, v5}, Ljava/util/Scanner;->removeLocaleInfo(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 1487
    const/4 v4, 0x0

    .line 1489
    .local v4, shortValue:S
    :try_start_0
    invoke-static {v1, p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 1490
    :catch_0
    move-exception v0

    .line 1491
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1492
    invoke-direct {p0}, Ljava/util/Scanner;->recoverPreviousStatus()V

    .line 1493
    new-instance v5, Ljava/util/InputMismatchException;

    invoke-direct {v5}, Ljava/util/InputMismatchException;-><init>()V

    throw v5
.end method

.method public radix()I
    .locals 1

    .prologue
    .line 1504
    iget v0, p0, Ljava/util/Scanner;->currentRadix:I

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 1649
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()Ljava/util/Scanner;
    .locals 1

    .prologue
    .line 2081
    sget-object v0, Ljava/util/Scanner;->DEFAULT_DELIMITER:Ljava/util/regex/Pattern;

    iput-object v0, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 2082
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Scanner;->setLocale(Ljava/util/Locale;)V

    .line 2083
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/Scanner;->currentRadix:I

    .line 2084
    return-object p0
.end method

.method public skip(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1
    .parameter "pattern"

    .prologue
    .line 1565
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public skip(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 6
    .parameter "pattern"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1524
    invoke-direct {p0}, Ljava/util/Scanner;->checkOpen()V

    .line 1525
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkNotNull(Ljava/util/regex/Pattern;)V

    .line 1526
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3, p1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    .line 1527
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    iget v4, p0, Ljava/util/Scanner;->findStartIndex:I

    iget v5, p0, Ljava/util/Scanner;->bufferLength:I

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 1529
    :cond_0
    :goto_0
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1530
    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    iget v4, p0, Ljava/util/Scanner;->bufferLength:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v3, :cond_2

    :cond_1
    move v0, v2

    .line 1532
    .local v0, matchInBuffer:Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1533
    iput-boolean v2, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1534
    iget-object v1, p0, Ljava/util/Scanner;->matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Ljava/util/Scanner;->findStartIndex:I

    .line 1548
    return-object p0

    .end local v0           #matchInBuffer:Z
    :cond_2
    move v0, v1

    .line 1530
    goto :goto_1

    .line 1538
    :cond_3
    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-eqz v3, :cond_4

    .line 1539
    iput-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    .line 1540
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1543
    :cond_4
    iget-boolean v3, p0, Ljava/util/Scanner;->inputExhausted:Z

    if-nez v3, :cond_0

    .line 1544
    invoke-direct {p0}, Ljava/util/Scanner;->readMore()V

    .line 1545
    invoke-direct {p0}, Ljava/util/Scanner;->resetMatcher()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[delimiter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",findStartIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/Scanner;->findStartIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",matchSuccessful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/Scanner;->matchSuccessful:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/Scanner;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;
    .locals 1
    .parameter "pattern"

    .prologue
    .line 1605
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Scanner;->useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;

    move-result-object v0

    return-object v0
.end method

.method public useDelimiter(Ljava/util/regex/Pattern;)Ljava/util/Scanner;
    .locals 0
    .parameter "pattern"

    .prologue
    .line 1592
    iput-object p1, p0, Ljava/util/Scanner;->delimiter:Ljava/util/regex/Pattern;

    .line 1593
    return-object p0
.end method

.method public useLocale(Ljava/util/Locale;)Ljava/util/Scanner;
    .locals 2
    .parameter "l"

    .prologue
    .line 1616
    if-nez p1, :cond_0

    .line 1617
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "l == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1619
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Scanner;->setLocale(Ljava/util/Locale;)V

    .line 1620
    return-object p0
.end method

.method public useRadix(I)Ljava/util/Scanner;
    .locals 0
    .parameter "radix"

    .prologue
    .line 1631
    invoke-direct {p0, p1}, Ljava/util/Scanner;->checkRadix(I)V

    .line 1632
    iput p1, p0, Ljava/util/Scanner;->currentRadix:I

    .line 1633
    return-object p0
.end method
