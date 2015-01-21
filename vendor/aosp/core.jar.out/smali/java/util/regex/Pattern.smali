.class public final Ljava/util/regex/Pattern;
.super Ljava/lang/Object;
.source "Pattern.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANON_EQ:I = 0x80

.field public static final CASE_INSENSITIVE:I = 0x2

.field public static final COMMENTS:I = 0x4

.field public static final DOTALL:I = 0x20

.field public static final LITERAL:I = 0x10

.field public static final MULTILINE:I = 0x8

.field public static final UNICODE_CASE:I = 0x40

.field public static final UNIX_LINES:I = 0x1

.field private static final serialVersionUID:J = 0x4667d56b6e49020dL


# instance fields
.field transient address:I

.field private final flags:I

.field private final pattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "pattern"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 385
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_0

    .line 386
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "CANON_EQ flag not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_0
    iput-object p1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    .line 389
    iput p2, p0, Ljava/util/regex/Pattern;->flags:I

    .line 390
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    .line 391
    return-void
.end method

.method private static native closeImpl(I)V
.end method

.method public static compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .parameter "pattern"

    .prologue
    .line 381
    new-instance v0, Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 1
    .parameter "regularExpression"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Ljava/util/regex/Pattern;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private compile()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v2, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 395
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "pattern == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_0
    iget-object v1, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    .line 399
    .local v1, icuPattern:Ljava/lang/String;
    iget v2, p0, Ljava/util/regex/Pattern;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 400
    iget-object v2, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    :cond_1
    iget v2, p0, Ljava/util/regex/Pattern;->flags:I

    and-int/lit8 v0, v2, 0x2f

    .line 407
    .local v0, icuFlags:I
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compileImpl(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/util/regex/Pattern;->address:I

    .line 408
    return-void
.end method

.method private static native compileImpl(Ljava/lang/String;I)I
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "regularExpression"
    .parameter "input"

    .prologue
    .line 420
    new-instance v0, Ljava/util/regex/Matcher;

    new-instance v1, Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/util/regex/Pattern;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "\\Q"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const/4 v0, 0x0

    .line 435
    .local v0, apos:I
    :goto_0
    const-string v3, "\\E"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, k:I
    if-ltz v1, :cond_0

    .line 436
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\\\E\\Q"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    add-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\E"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 451
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 452
    invoke-direct {p0}, Ljava/util/regex/Pattern;->compile()V

    .line 453
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 444
    :try_start_0
    iget v0, p0, Ljava/util/regex/Pattern;->address:I

    invoke-static {v0}, Ljava/util/regex/Pattern;->closeImpl(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 448
    return-void

    .line 446
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public flags()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Ljava/util/regex/Pattern;->flags:I

    return v0
.end method

.method public matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    .locals 1
    .parameter "input"

    .prologue
    .line 297
    new-instance v0, Ljava/util/regex/Matcher;

    invoke-direct {v0, p0, p1}, Ljava/util/regex/Matcher;-><init>(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public pattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1
    .parameter "input"

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    .locals 2
    .parameter "input"
    .parameter "limit"

    .prologue
    .line 329
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Ljava/util/regex/Splitter;->split(Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Ljava/util/regex/Pattern;->pattern:Ljava/lang/String;

    return-object v0
.end method
