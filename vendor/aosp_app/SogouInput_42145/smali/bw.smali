.class public final Lbw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbt;

.field private final a:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lbt;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lbt;->a:Lbt;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only QR Code is supported at this time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lbw;->a:Lbt;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lbw;->a:Ljava/util/Vector;

    .line 38
    iget-object v0, p0, Lbw;->a:Ljava/util/Vector;

    new-instance v1, Lbu;

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-direct {v1, p1, v2}, Lbu;-><init>(Lbt;[I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 39
    return-void
.end method

.method private a(I)Lbu;
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 42
    iget-object v0, p0, Lbw;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 43
    iget-object v0, p0, Lbw;->a:Ljava/util/Vector;

    iget-object v1, p0, Lbw;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    .line 44
    iget-object v1, p0, Lbw;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_0
    if-gt v0, p1, :cond_0

    .line 45
    new-instance v2, Lbu;

    iget-object v3, p0, Lbw;->a:Lbt;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v7, v4, v5

    iget-object v5, p0, Lbw;->a:Lbt;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Lbt;->a(I)I

    move-result v5

    aput v5, v4, v7

    invoke-direct {v2, v3, v4}, Lbu;-><init>(Lbt;[I)V

    invoke-virtual {v1, v2}, Lbu;->b(Lbu;)Lbu;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lbw;->a:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lbw;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbu;

    return-object v0
.end method


# virtual methods
.method public a([II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 54
    if-nez p2, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    array-length v0, p1

    sub-int v2, v0, p2

    .line 58
    if-gtz v2, :cond_1

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No data bytes provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    invoke-direct {p0, p2}, Lbw;->a(I)Lbu;

    move-result-object v0

    .line 62
    new-array v3, v2, [I

    .line 63
    invoke-static {p1, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    new-instance v4, Lbu;

    iget-object v5, p0, Lbw;->a:Lbt;

    invoke-direct {v4, v5, v3}, Lbu;-><init>(Lbt;[I)V

    .line 65
    invoke-virtual {v4, p2, v6}, Lbu;->a(II)Lbu;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v0}, Lbu;->a(Lbu;)[Lbu;

    move-result-object v0

    aget-object v0, v0, v6

    .line 67
    invoke-virtual {v0}, Lbu;->a()[I

    move-result-object v3

    .line 68
    array-length v0, v3

    sub-int v4, p2, v0

    move v0, v1

    .line 69
    :goto_0
    if-ge v0, v4, :cond_2

    .line 70
    add-int v5, v2, v0

    aput v1, p1, v5

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_2
    add-int v0, v2, v4

    array-length v2, v3

    invoke-static {v3, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-void
.end method
