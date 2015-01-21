.class public final Lcn;
.super Lde;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lde;-><init>()V

    return-void
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
    .line 36
    sget-object v0, La;->h:La;

    if-eq p2, v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can only encode CODE_128, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-super/range {p0 .. p5}, Lde;->a(Ljava/lang/String;La;IILjava/util/Hashtable;)Lbe;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 9
    .parameter

    .prologue
    const/16 v3, 0x68

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 44
    const/16 v0, 0x50

    if-le v5, v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    const/16 v0, 0x23

    move v4, v1

    .line 51
    :goto_0
    if-ge v4, v5, :cond_2

    .line 52
    sget-object v2, Lcm;->a:[[I

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x20

    aget-object v6, v2, v6

    move v2, v0

    move v0, v1

    .line 53
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_1

    .line 54
    aget v7, v6, v0

    add-int/2addr v2, v7

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    .line 57
    :cond_2
    new-array v4, v0, [B

    .line 58
    sget-object v0, Lcm;->a:[[I

    aget-object v0, v0, v3

    invoke-static {v4, v1, v0, v8}, Lcn;->a([BI[II)I

    move-result v0

    move v2, v0

    move v0, v3

    .line 61
    :goto_2
    if-ge v1, v5, :cond_3

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x20

    add-int/lit8 v6, v1, 0x1

    mul-int/2addr v3, v6

    add-int/2addr v0, v3

    .line 63
    sget-object v3, Lcm;->a:[[I

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x20

    aget-object v3, v3, v6

    invoke-static {v4, v2, v3, v8}, Lcn;->a([BI[II)I

    move-result v3

    add-int/2addr v2, v3

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 66
    :cond_3
    rem-int/lit8 v0, v0, 0x67

    .line 67
    sget-object v1, Lcm;->a:[[I

    aget-object v0, v1, v0

    invoke-static {v4, v2, v0, v8}, Lcn;->a([BI[II)I

    move-result v0

    add-int/2addr v0, v2

    .line 68
    sget-object v1, Lcm;->a:[[I

    const/16 v2, 0x6a

    aget-object v1, v1, v2

    invoke-static {v4, v0, v1, v8}, Lcn;->a([BI[II)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    return-object v4
.end method
