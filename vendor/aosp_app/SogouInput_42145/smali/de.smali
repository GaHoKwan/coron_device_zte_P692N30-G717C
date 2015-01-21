.class public abstract Lde;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a([BI[II)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 83
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "startColor must be either 0 or 1, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    int-to-byte v0, p3

    move v2, v1

    move v3, v0

    move v0, v1

    .line 90
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_2

    move v4, v1

    .line 91
    :goto_1
    aget v5, p2, v0

    if-ge v4, v5, :cond_1

    .line 92
    aput-byte v3, p0, p1

    .line 93
    add-int/lit8 p1, p1, 0x1

    .line 94
    add-int/lit8 v5, v2, 0x1

    .line 91
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_1

    .line 96
    :cond_1
    xor-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_2
    return v2
.end method

.method private static a([BII)Lbe;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 56
    array-length v3, p0

    .line 58
    sget-object v0, Ldd;->b:[I

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v3

    .line 59
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 60
    invoke-static {v8, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 62
    div-int v5, v1, v0

    .line 63
    mul-int v0, v3, v5

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 65
    new-instance v6, Lbe;

    invoke-direct {v6, v1, v4}, Lbe;-><init>(II)V

    move v1, v2

    .line 66
    :goto_0
    if-ge v1, v3, :cond_1

    .line 67
    aget-byte v7, p0, v1

    if-ne v7, v8, :cond_0

    .line 68
    invoke-virtual {v6, v0, v2, v5, v4}, Lbe;->a(IIII)V

    .line 66
    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v5

    goto :goto_0

    .line 71
    :cond_1
    return-object v6
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
    .line 41
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Found empty contents"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    if-ltz p3, :cond_2

    if-gez p4, :cond_3

    .line 46
    :cond_2
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

    .line 50
    :cond_3
    invoke-virtual {p0, p1}, Lde;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    invoke-static {v0, p3, p4}, Lde;->a([BII)Lbe;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/String;)[B
.end method
