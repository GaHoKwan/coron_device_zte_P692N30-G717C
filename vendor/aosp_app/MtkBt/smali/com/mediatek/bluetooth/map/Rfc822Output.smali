.class public Lcom/mediatek/bluetooth/map/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# static fields
.field public static BCC:Ljava/lang/String; = null

.field public static BOUNDARY:Ljava/lang/String; = null

.field public static CC:Ljava/lang/String; = null

.field public static CLRF:Ljava/lang/String; = null

.field public static CONTENT_TYPE:Ljava/lang/String; = null

.field public static DATE:Ljava/lang/String; = null

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field public static FROM:Ljava/lang/String; = null

.field private static final MAXIUM_LINE_LENGTH:I = 0x3e6

.field public static MIME_VERSION:Ljava/lang/String; = null

.field public static Message_ID:Ljava/lang/String; = null

.field private static final PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_START_OF_LINE:Ljava/util/regex/Pattern; = null

.field public static REPLY_TO:Ljava/lang/String; = null

.field public static SUBJECT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MAP-Rfc822Output"

.field public static TO:Ljava/lang/String;

.field private static needUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const-string v0, "(?m)^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    .line 91
    const-string v0, "\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "Date"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->DATE:Ljava/lang/String;

    .line 94
    const-string v0, "Subject"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->SUBJECT:Ljava/lang/String;

    .line 95
    const-string v0, "Message-ID"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->Message_ID:Ljava/lang/String;

    .line 96
    const-string v0, "From"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->FROM:Ljava/lang/String;

    .line 97
    const-string v0, "To"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->TO:Ljava/lang/String;

    .line 98
    const-string v0, "Cc"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->CC:Ljava/lang/String;

    .line 99
    const-string v0, "Bcc"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->BCC:Ljava/lang/String;

    .line 100
    const-string v0, "Reply-To"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->REPLY_TO:Ljava/lang/String;

    .line 101
    const-string v0, "MIME-Version"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->MIME_VERSION:Ljava/lang/String;

    .line 102
    const-string v0, "Content-Type"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->CONTENT_TYPE:Ljava/lang/String;

    .line 103
    const-string v0, "\r\n"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->CLRF:Ljava/lang/String;

    .line 104
    const-string v0, "--"

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->BOUNDARY:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->needUpdate:Z

    .line 108
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/mediatek/bluetooth/map/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IOCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .parameter "in"
    .parameter "out"

    .prologue
    .line 365
    const/4 v4, 0x1

    new-array v2, v4, [B

    .line 366
    .local v2, cache:[B
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 367
    .local v0, bufferin:Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 369
    .local v1, bufferout:Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 370
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v3

    .line 374
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 376
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 372
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static buildBodyText(Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;)Ljava/lang/String;
    .locals 6
    .parameter "body"

    .prologue
    .line 184
    iget-object v3, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->mTextContent:Ljava/lang/String;

    .line 185
    .local v3, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->mIntroText:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->mIntroText:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v0, ""

    .line 187
    .local v0, intro:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .end local v0           #intro:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->mTextReply:Ljava/lang/String;

    .line 192
    .local v2, quotedText:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 194
    sget-object v4, Lcom/mediatek/bluetooth/map/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 195
    .local v1, matcher:Ljava/util/regex/Matcher;
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    sget-object v4, Lcom/mediatek/bluetooth/map/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 200
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_1
    return-object v3

    .line 186
    .end local v2           #quotedText:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->mIntroText:Ljava/lang/String;

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 378
    if-eqz p0, :cond_0

    .line 379
    const-string v0, "MAP-Rfc822Output"

    invoke-static {v0, p0}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    return-void
.end method

.method private static writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 315
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 316
    invoke-static {p2}, Lcom/mediatek/bluetooth/map/Address;->packedToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 317
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 319
    :cond_0
    return-void
.end method

.method private static writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 1
    .parameter "writer"
    .parameter "boundary"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 331
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 332
    if-eqz p2, :cond_0

    .line 333
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 335
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 336
    return-void
.end method

.method private static writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 296
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 298
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 300
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 302
    :cond_0
    return-void
.end method

.method private static writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 279
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 280
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 281
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 283
    :cond_0
    return-void
.end method

.method private static writeOneAttachment(Ljava/io/Writer;Ljava/io/OutputStream;Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;)V
    .locals 7
    .parameter "writer"
    .parameter "out"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p2}, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 212
    .local v1, inStream:Ljava/io/InputStream;
    iget-object v3, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 213
    const-string v3, "Content-Type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";\n name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_0
    const-string v3, "Content-Transfer-Encoding"

    const-string v4, "base64"

    invoke-static {p0, v3, v4}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget v3, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 224
    iget-object v3, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mLocation:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 225
    const-string v3, "attachment"

    iput-object v3, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mLocation:Ljava/lang/String;

    .line 227
    :cond_0
    const-string v3, "Content-Disposition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";\n filename=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-object v3, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentLocation:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 233
    const-string v3, "Content-Location"

    iget-object v4, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentLocation:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_2
    iget-object v3, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 236
    const-string v3, "Content-ID"

    iget-object v4, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentId:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_3
    const-string v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 243
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 245
    new-instance v0, Landroid/util/Base64OutputStream;

    const/16 v3, 0x14

    invoke-direct {v0, p1, v3}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 249
    .local v0, base64Out:Landroid/util/Base64OutputStream;
    if-nez v1, :cond_5

    .line 251
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0           #base64Out:Landroid/util/Base64OutputStream;
    :catch_0
    move-exception v2

    .line 264
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 266
    .end local v2           #ioe:Ljava/io/IOException;
    :goto_1
    return-void

    .line 217
    :cond_4
    const-string v3, "Content-Type"

    iget-object v4, p2, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mMimeType:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    .restart local v0       #base64Out:Landroid/util/Base64OutputStream;
    :cond_5
    :try_start_1
    invoke-static {v1, v0}, Lcom/mediatek/bluetooth/map/Rfc822Output;->IOCopy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 255
    invoke-virtual {v0}, Landroid/util/Base64OutputStream;->close()V

    .line 262
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 5
    .parameter "writer"
    .parameter "out"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    const-string v3, "Content-Type"

    const-string v4, "text/plain; charset=utf-8"

    invoke-static {p0, v3, v4}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v3, "Content-Transfer-Encoding"

    const-string v4, "8bit"

    invoke-static {p0, v3, v4}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 346
    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 347
    .local v0, bytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 349
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 351
    .local v2, length:I
    :goto_0
    if-eqz v0, :cond_2

    array-length v3, v0

    if-eqz v3, :cond_2

    .line 352
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-eqz v0, :cond_3

    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 353
    aget-byte v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    .line 354
    rem-int/lit16 v3, v1, 0x3e6

    if-nez v3, :cond_0

    .line 355
    const-string v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 352
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    .end local v1           #index:I
    .end local v2           #length:I
    :cond_1
    array-length v2, v0

    goto :goto_0

    .line 359
    .restart local v2       #length:I
    :cond_2
    const-string v3, "\r\n"

    invoke-virtual {p0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    :cond_3
    return-void
.end method

.method public static writeTo(Ljava/io/File;Lcom/mediatek/bluetooth/map/mime/MimeBase;)V
    .locals 17
    .parameter "file"
    .parameter "mime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const-string v13, "error, the file is null"

    invoke-static {v13}, Lcom/mediatek/bluetooth/map/Rfc822Output;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 116
    .local v10, stream:Ljava/io/FileOutputStream;
    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-direct {v12, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v12, writer:Ljava/io/Writer;
    if-nez p1, :cond_1

    .line 119
    const-string v13, "the mime is null"

    invoke-static {v13}, Lcom/mediatek/bluetooth/map/Rfc822Output;->log(Ljava/lang/String;)V

    .line 179
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/mime/MimeBase;->getHeader()Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    move-result-object v5

    .line 124
    .local v5, header:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/mime/MimeBase;->getBody()Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    move-result-object v3

    .line 126
    .local v3, body:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;
    sget-object v13, Lcom/mediatek/bluetooth/map/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    iget-wide v15, v5, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTimeStamp:J

    invoke-direct/range {v14 .. v16}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v14}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, date:Ljava/lang/String;
    const-string v13, "Date"

    invoke-static {v12, v13, v4}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v13, "Subject"

    iget-object v14, v5, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mSubject:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v13, "Message-ID"

    iget-object v14, v5, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMsgId:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v13, "From"

    iget-object v14, v5, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mFrom:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v13, "To"

    iget-object v14, v5, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v13, "Cc"

    iget-object v14, v5, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mCc:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v13, "Bcc"

    iget-object v14, v5, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mBcc:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v13, "Reply-To"

    iget-object v14, v5, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mReplyTo:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v13, "MIME-Version"

    iget-object v14, v5, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mVersion:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v3}, Lcom/mediatek/bluetooth/map/Rfc822Output;->buildBodyText(Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;)Ljava/lang/String;

    move-result-object v11

    .line 143
    .local v11, text:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/mime/MimeBase;->hasMultipart()Z

    move-result v13

    if-nez v13, :cond_3

    .line 144
    if-eqz v11, :cond_2

    .line 145
    invoke-static {v12, v10, v11}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 176
    :goto_1
    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->flush()V

    .line 177
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 178
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 147
    :cond_2
    sget-object v13, Lcom/mediatek/bluetooth/map/Rfc822Output;->CLRF:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--_com.android.email_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, multipartBoundary:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/mime/MimeBase;->getMultipartType()Ljava/lang/String;

    move-result-object v9

    .line 154
    .local v9, multipartType:Ljava/lang/String;
    const-string v13, "Content-Type"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; boundary=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v13, Lcom/mediatek/bluetooth/map/Rfc822Output;->CLRF:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 160
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 161
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "text is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/bluetooth/map/Rfc822Output;->log(Ljava/lang/String;)V

    .line 162
    const/4 v13, 0x0

    invoke-static {v12, v8, v13}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 163
    invoke-static {v12, v10, v11}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 167
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/bluetooth/map/mime/MimeBase;->getAttachment()[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    move-result-object v1

    .local v1, arr$:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_2
    if-ge v6, v7, :cond_5

    aget-object v2, v1, v6

    .line 168
    .local v2, attachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    const/4 v13, 0x0

    invoke-static {v12, v8, v13}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 169
    invoke-static {v12, v10, v2}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeOneAttachment(Ljava/io/Writer;Ljava/io/OutputStream;Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;)V

    .line 170
    sget-object v13, Lcom/mediatek/bluetooth/map/Rfc822Output;->CLRF:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 167
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 173
    .end local v2           #attachment:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    :cond_5
    const/4 v13, 0x1

    invoke-static {v12, v8, v13}, Lcom/mediatek/bluetooth/map/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto/16 :goto_1
.end method
