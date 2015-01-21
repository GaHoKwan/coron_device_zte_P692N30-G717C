.class public final Lfc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lbv;

    sget-object v1, Lbt;->a:Lbt;

    invoke-direct {v0, v1}, Lbv;-><init>(Lbt;)V

    iput-object v0, p0, Lfc;->a:Lbv;

    .line 42
    return-void
.end method

.method private a([BI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 129
    array-length v2, p1

    .line 131
    new-array v3, v2, [I

    move v1, v0

    .line 132
    :goto_0
    if-ge v1, v2, :cond_0

    .line 133
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    array-length v1, p1

    sub-int/2addr v1, p2

    .line 137
    :try_start_0
    iget-object v2, p0, Lfc;->a:Lbv;

    invoke-virtual {v2, v3, v1}, Lbv;->a([II)V
    :try_end_0
    .catch Lbx; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_1
    if-ge v0, p2, :cond_1

    .line 144
    aget v1, v3, v0

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-static {}, Ld;->a()Ld;

    move-result-object v0

    throw v0

    .line 146
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lbe;Ljava/util/Hashtable;)Lbj;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 88
    new-instance v0, Lep;

    invoke-direct {v0, p1}, Lep;-><init>(Lbe;)V

    .line 89
    invoke-virtual {v0}, Lep;->a()Lfg;

    move-result-object v5

    .line 90
    invoke-virtual {v0}, Lep;->a()Lfe;

    move-result-object v2

    invoke-virtual {v2}, Lfe;->a()Lfd;

    move-result-object v6

    .line 93
    invoke-virtual {v0}, Lep;->a()[B

    move-result-object v0

    .line 95
    invoke-static {v0, v5, v6}, Leq;->a([BLfg;Lfd;)[Leq;

    move-result-object v7

    move v0, v1

    move v2, v1

    .line 99
    :goto_0
    array-length v3, v7

    if-ge v0, v3, :cond_0

    .line 100
    aget-object v3, v7, v0

    invoke-virtual {v3}, Leq;->a()I

    move-result v3

    add-int/2addr v2, v3

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    new-array v8, v2, [B

    move v0, v1

    move v2, v1

    .line 106
    :goto_1
    array-length v3, v7

    if-ge v0, v3, :cond_2

    .line 107
    aget-object v3, v7, v0

    .line 108
    invoke-virtual {v3}, Leq;->a()[B

    move-result-object v9

    .line 109
    invoke-virtual {v3}, Leq;->a()I

    move-result v10

    .line 110
    invoke-direct {p0, v9, v10}, Lfc;->a([BI)V

    move v3, v1

    .line 111
    :goto_2
    if-ge v3, v10, :cond_1

    .line 112
    add-int/lit8 v4, v2, 0x1

    aget-byte v11, v9, v3

    aput-byte v11, v8, v2

    .line 111
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_2

    .line 106
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_2
    invoke-static {v8, v5, v6, p2}, Lfb;->a([BLfg;Lfd;Ljava/util/Hashtable;)Lbj;

    move-result-object v0

    return-object v0
.end method
