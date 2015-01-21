.class public Lcom/android/emailcommon/internet/Rfc822Output;
.super Ljava/lang/Object;
.source "Rfc822Output.java"


# static fields
.field private static final BODY_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final BODY_PATTERN_GROUP:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final INDEX_BODY_HTML:I = 0x1

.field private static final INDEX_BODY_TEXT:I = 0x0

.field private static final NEWLINE_HTML:Ljava/lang/String; = "<br>"

.field private static final NEWLINE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern; = null

.field private static final PATTERN_START_OF_LINE:Ljava/util/regex/Pattern; = null

.field private static final WHERE_NOT_SMART_FORWARD:Ljava/lang/String; = "(flags&256)=0"

.field static sBoundaryDigit:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-string v0, "(?m)^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "\r\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    .line 61
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 68
    const-string v0, "(?:<\\s*body[^>]*>)(.*)(?:<\\s*/\\s*body\\s*>)"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->BODY_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "\\r?\\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/Rfc822Output;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;IZ)[Ljava/lang/String;
    .locals 11
    .parameter "body"
    .parameter "flags"
    .parameter "useSmartReply"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 126
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    aput-object v10, v4, v8

    aput-object v10, v4, v7

    .line 127
    .local v4, messageBody:[Ljava/lang/String;
    if-nez p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-object v4

    .line 130
    :cond_1
    iget-object v6, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 131
    .local v6, text:Ljava/lang/String;
    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_5

    move v2, v7

    .line 132
    .local v2, isReply:Z
    :goto_1
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_6

    move v1, v7

    .line 134
    .local v1, isForward:Z
    :goto_2
    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 135
    :cond_2
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-nez v9, :cond_7

    const-string v0, ""

    .line 136
    .local v0, intro:Ljava/lang/String;
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 138
    .end local v0           #intro:Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_8

    .line 141
    if-eqz v1, :cond_4

    .line 142
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 166
    :cond_4
    :goto_4
    aput-object v6, v4, v8

    .line 169
    if-nez p2, :cond_0

    .line 170
    invoke-static {p0, p2}, Lcom/android/emailcommon/internet/Rfc822Output;->getHtmlAlternate(Lcom/android/emailcommon/provider/EmailContent$Body;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    goto :goto_0

    .end local v1           #isForward:Z
    .end local v2           #isReply:Z
    :cond_5
    move v2, v8

    .line 131
    goto :goto_1

    .restart local v2       #isReply:Z
    :cond_6
    move v1, v8

    .line 132
    goto :goto_2

    .line 135
    .restart local v1       #isForward:Z
    :cond_7
    iget-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    goto :goto_3

    .line 145
    :cond_8
    iget-object v5, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 147
    .local v5, quotedText:Ljava/lang/String;
    if-nez v5, :cond_9

    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    if-eqz v9, :cond_9

    .line 148
    iget-object v9, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 150
    :cond_9
    if-eqz v5, :cond_a

    .line 152
    sget-object v9, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_ENDLINE_CRLF:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 153
    .local v3, matcher:Ljava/util/regex/Matcher;
    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    :cond_a
    if-eqz v2, :cond_b

    .line 156
    if-eqz v5, :cond_4

    .line 157
    sget-object v9, Lcom/android/emailcommon/internet/Rfc822Output;->PATTERN_START_OF_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 158
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 159
    goto :goto_4

    .line 160
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    :cond_b
    if-eqz v1, :cond_4

    .line 161
    if-eqz v5, :cond_4

    .line 162
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method static getHtmlAlternate(Lcom/android/emailcommon/provider/EmailContent$Body;Z)Ljava/lang/String;
    .locals 6
    .parameter "body"
    .parameter "useSmartReply"

    .prologue
    .line 103
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 104
    const/4 v4, 0x0

    .line 119
    :goto_0
    return-object v4

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, altMessage:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, htmlContent:Ljava/lang/String;
    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 111
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, htmlIntro:Ljava/lang/String;
    sget-object v4, Lcom/android/emailcommon/internet/Rfc822Output;->NEWLINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "<br>"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    .end local v3           #htmlIntro:Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_2

    .line 116
    iget-object v4, p0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/internet/Rfc822Output;->getHtmlBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, htmlBody:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .end local v1           #htmlBody:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static getHtmlBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "html"

    .prologue
    .line 91
    sget-object v1, Lcom/android/emailcommon/internet/Rfc822Output;->BODY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 92
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 95
    .end local p0
    :cond_0
    return-object p0
.end method

.method static getNextBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .local v0, boundary:Ljava/lang/StringBuilder;
    const-string v1, "--_com.android.email_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 474
    const-class v2, Lcom/android/emailcommon/internet/Rfc822Output;

    monitor-enter v2

    .line 475
    :try_start_0
    sget-byte v1, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 476
    sget-byte v1, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    sput-byte v1, Lcom/android/emailcommon/internet/Rfc822Output;->sBoundaryDigit:B

    .line 477
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 477
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 383
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 384
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 385
    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->packedToHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 386
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 388
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
    .line 399
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 400
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 401
    if-eqz p2, :cond_0

    .line 402
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 404
    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 405
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
    .line 365
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 366
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 367
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 369
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 371
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
    .line 348
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 349
    invoke-virtual {p0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 350
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 351
    invoke-virtual {p0, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 352
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 354
    :cond_0
    return-void
.end method

.method private static writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 14
    .parameter "context"
    .parameter "writer"
    .parameter "out"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 284
    const-string v10, "Content-Type"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";\n name=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v10, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v10, "Content-Transfer-Encoding"

    const-string v11, "base64"

    invoke-static {p1, v10, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_0

    .line 290
    const-string v10, "Content-Disposition"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "attachment;\n filename=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/emailcommon/internet/MimeUtility;->foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1, v10, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 296
    const-string v10, "Content-ID"

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {p1, v10, v11}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_1
    const-string v10, "\r\n"

    invoke-virtual {p1, v10}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 300
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 302
    .local v8, previewSize:J
    const/4 v5, 0x0

    .line 305
    .local v5, inStream:Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v10, :cond_2

    .line 306
    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    invoke-direct {v6, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v5           #inStream:Ljava/io/InputStream;
    .local v6, inStream:Ljava/io/InputStream;
    move-object v5, v6

    .line 313
    .end local v6           #inStream:Ljava/io/InputStream;
    .restart local v5       #inStream:Ljava/io/InputStream;
    :goto_0
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 314
    new-instance v1, Landroid/util/Base64OutputStream;

    const/16 v10, 0x14

    move-object/from16 v0, p2

    invoke-direct {v1, v0, v10}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 317
    .local v1, base64Out:Landroid/util/Base64OutputStream;
    invoke-static {v5, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v2

    .line 318
    .local v2, copyLength:I
    invoke-virtual {v1}, Landroid/util/Base64OutputStream;->close()V

    .line 323
    const/16 v10, 0xd

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 324
    const/16 v10, 0xa

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/io/OutputStream;->write(I)V

    .line 325
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    .line 326
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "writeOneAttachment: attachment.mId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", attachment.mFileName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", previewSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", copyLength="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 338
    return-void

    .line 309
    .end local v1           #base64Out:Landroid/util/Base64OutputStream;
    .end local v2           #copyLength:I
    :cond_2
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 310
    .local v3, fileUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 330
    .end local v3           #fileUri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 331
    .local v4, fnfe:Ljava/io/FileNotFoundException;
    const-string v10, "Attachment can not found for sending."

    invoke-static {v10, v4}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v11, 0xf

    const-string v12, "Attachment can not found."

    invoke-direct {v10, v11, v12}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v10

    .line 335
    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 336
    .local v7, ioe:Ljava/io/IOException;
    new-instance v10, Lcom/android/emailcommon/mail/MessagingException;

    const-string v11, "Invalid attachment."

    invoke-direct {v10, v11, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method private static writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 12
    .parameter "writer"
    .parameter "out"
    .parameter "bodyText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 422
    aget-object v4, p2, v7

    .line 423
    .local v4, text:Ljava/lang/String;
    aget-object v0, p2, v6

    .line 425
    .local v0, html:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 426
    const-string v6, "\r\n"

    invoke-virtual {p0, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const/4 v3, 0x0

    .line 429
    .local v3, multipartBoundary:Ljava/lang/String;
    if-eqz v0, :cond_3

    move v2, v6

    .line 432
    .local v2, multipart:Z
    :goto_1
    if-eqz v2, :cond_2

    .line 434
    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getNextBoundary()Ljava/lang/String;

    move-result-object v3

    .line 436
    const-string v8, "Content-Type"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "multipart/alternative; boundary=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v8, "\r\n"

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 440
    invoke-static {p0, v3, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 444
    :cond_2
    const-string v8, "Content-Type"

    const-string v9, "text/plain; charset=utf-8"

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v8, "Content-Transfer-Encoding"

    const-string v9, "base64"

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v8, "\r\n"

    invoke-virtual {p0, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 447
    const-string v8, "UTF-8"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 448
    .local v5, textBytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 449
    invoke-static {v5, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 451
    if-eqz v2, :cond_0

    .line 453
    invoke-static {p0, v3, v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 455
    const-string v7, "Content-Type"

    const-string v8, "text/html; charset=utf-8"

    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v7, "Content-Transfer-Encoding"

    const-string v8, "base64"

    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v7, "\r\n"

    invoke-virtual {p0, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 458
    const-string v7, "UTF-8"

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 459
    .local v1, htmlBytes:[B
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 460
    invoke-static {v1, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 463
    invoke-static {p0, v3, v6}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v1           #htmlBytes:[B
    .end local v2           #multipart:Z
    .end local v5           #textBytes:[B
    :cond_3
    move v2, v7

    .line 429
    goto :goto_1
.end method

.method public static writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V
    .locals 22
    .parameter "context"
    .parameter "messageId"
    .parameter "out"
    .parameter "useSmartReply"
    .parameter "sendBcc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 187
    .local v16, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v16, :cond_0

    .line 277
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v20, Ljava/io/BufferedOutputStream;

    const/16 v3, 0x400

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 193
    .local v20, stream:Ljava/io/OutputStream;
    new-instance v21, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 198
    .local v21, writer:Ljava/io/Writer;
    sget-object v3, Lcom/android/emailcommon/internet/Rfc822Output;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 199
    .local v14, date:Ljava/lang/String;
    const-string v3, "Date"

    move-object/from16 v0, v21

    invoke-static {v0, v3, v14}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "Subject"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeEncodedHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "Message-ID"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v3, "From"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v3, "To"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "Cc"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    if-eqz p5, :cond_1

    .line 211
    const-string v3, "Bcc"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    const-string v3, "Reply-To"

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeAddressHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v3, "MIME-Version"

    const-string v5, "1.0"

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    move-object/from16 v0, v16

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v12

    .line 218
    .local v12, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v0, p4

    invoke-static {v12, v3, v0}, Lcom/android/emailcommon/internet/Rfc822Output;->buildBodyText(Lcom/android/emailcommon/provider/EmailContent$Body;IZ)[Ljava/lang/String;

    move-result-object v13

    .line 220
    .local v13, bodyText:[Ljava/lang/String;
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 221
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v6, "(flags&256)=0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 225
    .local v11, attachmentsCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 226
    .local v10, attachmentCount:I
    if-lez v10, :cond_2

    const/16 v17, 0x1

    .line 227
    .local v17, multipart:Z
    :goto_1
    const/16 v18, 0x0

    .line 228
    .local v18, multipartBoundary:Ljava/lang/String;
    const-string v19, "mixed"

    .line 231
    .local v19, multipartType:Ljava/lang/String;
    if-nez v17, :cond_3

    .line 232
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 275
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStreamWriter;->flush()V

    .line 276
    invoke-virtual/range {p3 .. p3}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_0

    .line 226
    .end local v17           #multipart:Z
    .end local v18           #multipartBoundary:Ljava/lang/String;
    .end local v19           #multipartType:Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    goto :goto_1

    .line 235
    .restart local v17       #multipart:Z
    .restart local v18       #multipartBoundary:Ljava/lang/String;
    .restart local v19       #multipartType:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/emailcommon/internet/Rfc822Output;->getNextBoundary()Ljava/lang/String;

    move-result-object v18

    .line 238
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 239
    const/4 v3, 0x1

    if-ne v10, v3, :cond_4

    .line 242
    const/16 v3, 0xa

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 243
    .local v15, flags:I
    and-int/lit8 v3, v15, 0x1

    if-eqz v3, :cond_4

    .line 244
    const-string v19, "alternative"

    .line 248
    .end local v15           #flags:I
    :cond_4
    const-string v3, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multipart/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; boundary=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v3, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 254
    const/4 v3, 0x0

    aget-object v3, v13, v3

    if-eqz v3, :cond_5

    .line 255
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 256
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTextWithHeaders(Ljava/io/Writer;Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 261
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 262
    const-class v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-static {v11, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 264
    .local v9, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v9}, Lcom/android/emailcommon/internet/Rfc822Output;->writeOneAttachment(Landroid/content/Context;Ljava/io/Writer;Ljava/io/OutputStream;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 265
    const-string v3, "\r\n"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 266
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 269
    const/4 v3, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/android/emailcommon/internet/Rfc822Output;->writeBoundary(Ljava/io/Writer;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 272
    .end local v9           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v10           #attachmentCount:I
    .end local v17           #multipart:Z
    .end local v18           #multipartBoundary:Ljava/lang/String;
    .end local v19           #multipartType:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
.end method
