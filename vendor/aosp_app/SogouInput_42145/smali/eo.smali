.class public final Leo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Leo;->a:I

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    iput v0, p0, Leo;->a:I

    .line 47
    iput p1, p0, Leo;->a:I

    .line 48
    return-void
.end method

.method private a(Lfw;II)Lbe;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-virtual {p1}, Lfw;->a()Lfs;

    move-result-object v5

    .line 90
    invoke-virtual {v5}, Lfs;->b()I

    move-result v6

    .line 91
    invoke-virtual {v5}, Lfs;->a()I

    move-result v7

    .line 92
    iget v0, p0, Leo;->a:I

    add-int/2addr v0, v6

    .line 93
    iget v1, p0, Leo;->a:I

    add-int/2addr v1, v7

    .line 94
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 95
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 97
    div-int v0, v2, v0

    div-int v1, v3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 102
    mul-int v0, v6, v8

    sub-int v0, v2, v0

    div-int/lit8 v1, v0, 0x2

    .line 103
    mul-int v0, v7, v8

    sub-int v0, v3, v0

    div-int/lit8 v0, v0, 0x2

    .line 105
    new-instance v9, Lbe;

    invoke-direct {v9, v2, v3}, Lbe;-><init>(II)V

    .line 107
    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v7, :cond_2

    .line 109
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v2, v6, :cond_1

    .line 110
    invoke-virtual {v5, v2, v4}, Lfs;->a(II)B

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 111
    invoke-virtual {v9, v0, v3, v8, v8}, Lbe;->a(IIII)V

    .line 109
    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v8

    goto :goto_1

    .line 107
    :cond_1
    add-int/lit8 v2, v4, 0x1

    add-int v0, v3, v8

    move v3, v0

    move v4, v2

    goto :goto_0

    .line 116
    :cond_2
    return-object v9
.end method


# virtual methods
.method public a(Ljava/lang/String;La;IILjava/util/Hashtable;)Lbe;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    sget-object v0, La;->a:La;

    if-eq p2, v0, :cond_2

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can only encode QR_CODE, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_2
    if-ltz p3, :cond_3

    if-gez p4, :cond_4

    .line 69
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Requested dimensions are too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_4
    sget-object v1, Lfd;->a:Lfd;

    .line 74
    if-eqz p5, :cond_5

    .line 75
    sget-object v0, Lf;->a:Lf;

    invoke-virtual {p5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfd;

    .line 76
    if-eqz v0, :cond_5

    .line 81
    :goto_0
    new-instance v1, Lfw;

    invoke-direct {v1}, Lfw;-><init>()V

    .line 82
    invoke-static {p1, v0, p5, v1}, Lft;->a(Ljava/lang/String;Lfd;Ljava/util/Hashtable;Lfw;)V

    .line 83
    invoke-direct {p0, v1, p3, p4}, Leo;->a(Lfw;II)Lbe;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method
