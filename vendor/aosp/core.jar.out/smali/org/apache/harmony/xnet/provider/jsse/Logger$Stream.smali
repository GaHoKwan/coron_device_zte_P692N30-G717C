.class public Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;
.super Ljava/io/PrintStream;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stream"
.end annotation


# static fields
.field private static indent:I


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 35
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->prefix:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public endIndent()V
    .locals 1

    .prologue
    .line 52
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    .line 53
    return-void
.end method

.method public newIndent()V
    .locals 1

    .prologue
    .line 48
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    .line 49
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->indent:I

    if-ge v0, v1, :cond_0

    .line 42
    const-string v1, "  "

    invoke-super {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public print([B)V
    .locals 7
    .parameter "data"

    .prologue
    .line 62
    const/16 v1, 0x10

    const-string v2, " "

    const-string v3, ""

    const/4 v5, 0x0

    array-length v6, p1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    .line 63
    return-void
.end method

.method public print([BII)V
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 66
    const/16 v1, 0x10

    const-string v2, " "

    const-string v3, ""

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    .line 67
    return-void
.end method

.method public printAsHex(ILjava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .parameter "perLine"
    .parameter "prefix"
    .parameter "delimiter"
    .parameter "data"

    .prologue
    .line 70
    const/4 v5, 0x0

    array-length v6, p4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V

    .line 71
    return-void
.end method

.method public printAsHex(ILjava/lang/String;Ljava/lang/String;[BII)V
    .locals 4
    .parameter "perLine"
    .parameter "prefix"
    .parameter "delimiter"
    .parameter "data"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v1, line:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p6, :cond_1

    .line 77
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int v2, v0, p5

    aget-byte v2, p4, v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v2, v0, 0x1

    rem-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #line:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .restart local v1       #line:Ljava/lang/StringBuilder;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print(Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    return-void
.end method
