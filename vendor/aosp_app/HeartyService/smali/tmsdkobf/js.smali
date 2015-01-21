.class public Ltmsdkobf/js;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;
    .locals 1
    .parameter "gc"

    .prologue
    .line 189
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 190
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 191
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 192
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 193
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 194
    return-object p0
.end method

.method public static a(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;
    .locals 6
    .parameter "date"
    .parameter "closing_day"

    .prologue
    const/4 v5, 0x5

    .line 27
    const/4 v0, 0x5

    .line 28
    .local v0, DATE:I
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 29
    .local v1, gc:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 30
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-le v3, p1, :cond_1

    .line 32
    invoke-virtual {v1, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 42
    :cond_0
    :goto_0
    invoke-static {v1}, Ltmsdkobf/js;->a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v3

    return-object v3

    .line 35
    :cond_1
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    .line 36
    .local v2, thisMonthLastDay:I
    if-ge v2, p1, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 37
    :cond_2
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/util/GregorianCalendar;->add(II)V

    .line 39
    :cond_3
    invoke-static {v1, p1}, Ltmsdkobf/js;->b(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 6
    .parameter "dateA"
    .parameter "dateB"

    .prologue
    .line 205
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 206
    .local v0, gc1:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 208
    .local v1, gc2:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 209
    invoke-static {v0}, Ltmsdkobf/js;->a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 211
    invoke-virtual {v1, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 212
    invoke-static {v1}, Ltmsdkobf/js;->a(Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 214
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;
    .locals 2
    .parameter "gc"
    .parameter "closing_day"

    .prologue
    const/4 v1, 0x5

    .line 173
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    .line 174
    .local v0, maximum_day:I
    if-lt v0, p1, :cond_0

    .line 175
    invoke-virtual {p0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 179
    :goto_0
    return-object p0

    .line 177
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_0
.end method

.method private static bX(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "command"

    .prologue
    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v6, sb:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 248
    .local v5, proc:Ljava/lang/Process;
    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 249
    .local v2, inputstream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 250
    .local v3, inputstreamreader:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 251
    .local v0, bufferedreader:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 252
    .local v4, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 253
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v0           #bufferedreader:Ljava/io/BufferedReader;
    .end local v2           #inputstream:Ljava/io/InputStream;
    .end local v3           #inputstreamreader:Ljava/io/InputStreamReader;
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #proc:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 257
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 259
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static bp(I)I
    .locals 4
    .parameter "pid"

    .prologue
    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cat /proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltmsdkobf/js;->bX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, result:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 235
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, items:[Ljava/lang/String;
    array-length v2, v0

    const/16 v3, 0x16

    if-le v2, v3, :cond_0

    .line 238
    const/16 v2, 0x15

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 241
    .end local v0           #items:[Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method
