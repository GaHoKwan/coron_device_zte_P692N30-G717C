.class public final Llibcore/net/http/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HeaderParser$CacheControlHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static parseCacheControl(Ljava/lang/String;Llibcore/net/http/HeaderParser$CacheControlHandler;)V
    .locals 7
    .parameter "value"
    .parameter "handler"

    .prologue
    .line 35
    const/4 v3, 0x0

    .line 36
    .local v3, pos:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 37
    move v4, v3

    .line 38
    .local v4, tokenStart:I
    const-string v5, "=,"

    invoke-static {p0, v3, v5}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 39
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, directive:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_1

    .line 42
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 43
    const/4 v5, 0x0

    invoke-interface {p1, v0, v5}, Llibcore/net/http/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 48
    invoke-static {p0, v3}, Llibcore/net/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 53
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_2

    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    move v2, v3

    .line 56
    .local v2, parameterStart:I
    const-string v5, "\""

    invoke-static {p0, v3, v5}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 57
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, parameter:Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 67
    :goto_1
    invoke-interface {p1, v0, v1}, Llibcore/net/http/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v1           #parameter:Ljava/lang/String;
    .end local v2           #parameterStart:I
    :cond_2
    move v2, v3

    .line 63
    .restart local v2       #parameterStart:I
    const-string v5, ","

    invoke-static {p0, v3, v5}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 64
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #parameter:Ljava/lang/String;
    goto :goto_1

    .line 69
    .end local v0           #directive:Ljava/lang/String;
    .end local v1           #parameter:Ljava/lang/String;
    .end local v2           #parameterStart:I
    .end local v4           #tokenStart:I
    :cond_3
    return-void
.end method

.method public static parseChallenges(Llibcore/net/http/RawHeaders;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "responseHeaders"
    .parameter "challengeHeader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llibcore/net/http/RawHeaders;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Llibcore/net/http/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Llibcore/net/http/Challenge;>;"
    const/4 v0, 0x0

    .local v0, h:I
    :goto_0
    invoke-virtual {p0}, Llibcore/net/http/RawHeaders;->length()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 86
    invoke-virtual {p0, v0}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0, v0}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, value:Ljava/lang/String;
    const/4 v1, 0x0

    .line 91
    .local v1, pos:I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 92
    move v6, v1

    .line 93
    .local v6, tokenStart:I
    const-string v8, " "

    invoke-static {v7, v1, v8}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 95
    invoke-virtual {v7, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, scheme:Ljava/lang/String;
    invoke-static {v7, v1}, Llibcore/net/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 102
    const-string v8, "realm=\""

    const/4 v9, 0x0

    const-string v10, "realm=\""

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v1, v8, v9, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 106
    const-string v8, "realm=\""

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    .line 107
    move v3, v1

    .line 108
    .local v3, realmStart:I
    const-string v8, "\""

    invoke-static {v7, v1, v8}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 109
    invoke-virtual {v7, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, realm:Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 111
    const-string v8, ","

    invoke-static {v7, v1, v8}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    .line 113
    invoke-static {v7, v1}, Llibcore/net/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 114
    new-instance v8, Llibcore/net/http/Challenge;

    invoke-direct {v8, v5, v2}, Llibcore/net/http/Challenge;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    .end local v1           #pos:I
    .end local v2           #realm:Ljava/lang/String;
    .end local v3           #realmStart:I
    .end local v5           #scheme:Ljava/lang/String;
    .end local v6           #tokenStart:I
    .end local v7           #value:Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public static parseSeconds(Ljava/lang/String;)I
    .locals 5
    .parameter "value"

    .prologue
    .line 154
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 155
    .local v1, seconds:J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 156
    const v3, 0x7fffffff

    .line 163
    .end local v1           #seconds:J
    :goto_0
    return v3

    .line 157
    .restart local v1       #seconds:J
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 158
    const/4 v3, 0x0

    goto :goto_0

    .line 160
    :cond_1
    long-to-int v3, v1

    goto :goto_0

    .line 162
    .end local v1           #seconds:J
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .parameter "input"
    .parameter "pos"
    .parameter "characters"

    .prologue
    .line 126
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 131
    :cond_0
    return p1

    .line 126
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static skipWhitespace(Ljava/lang/String;I)I
    .locals 2
    .parameter "input"
    .parameter "pos"

    .prologue
    .line 139
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 141
    .local v0, c:C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 145
    .end local v0           #c:C
    :cond_0
    return p1

    .line 139
    .restart local v0       #c:C
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
