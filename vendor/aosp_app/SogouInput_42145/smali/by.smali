.class public final Lby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll;


# static fields
.field private static final a:[Lp;


# instance fields
.field private final a:Lcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lp;

    sput-object v0, Lby;->a:[Lp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcc;

    invoke-direct {v0}, Lcc;-><init>()V

    iput-object v0, p0, Lby;->a:Lcc;

    return-void
.end method

.method private static a(Lbe;)Lbe;
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0}, Lbe;->b()I

    move-result v3

    .line 99
    invoke-virtual {p0}, Lbe;->a()I

    move-result v4

    .line 100
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 104
    invoke-virtual {p0}, Lbe;->a()[I

    move-result-object v6

    .line 105
    if-nez v6, :cond_0

    .line 106
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 108
    :cond_0
    aget v0, v6, v1

    .line 109
    const/4 v2, 0x1

    aget v7, v6, v2

    move v2, v0

    .line 110
    :goto_0
    if-ge v2, v5, :cond_1

    if-ge v7, v5, :cond_1

    invoke-virtual {p0, v2, v7}, Lbe;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 113
    :cond_1
    if-ne v2, v5, :cond_2

    .line 114
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 117
    :cond_2
    aget v0, v6, v1

    sub-int v5, v2, v0

    .line 120
    add-int/lit8 v0, v4, -0x1

    .line 121
    :goto_1
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0, v7}, Lbe;->a(II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 122
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 124
    :cond_3
    if-gez v0, :cond_4

    .line 125
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 127
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 130
    sub-int v6, v0, v2

    rem-int/2addr v6, v5

    if-eqz v6, :cond_5

    .line 131
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 133
    :cond_5
    sub-int/2addr v0, v2

    div-int/2addr v0, v5

    add-int/lit8 v6, v0, 0x2

    .line 135
    add-int v0, v7, v5

    .line 140
    shr-int/lit8 v7, v5, 0x1

    sub-int v7, v2, v7

    .line 141
    shr-int/lit8 v2, v5, 0x1

    sub-int v8, v0, v2

    .line 143
    add-int/lit8 v0, v6, -0x1

    mul-int/2addr v0, v5

    add-int/2addr v0, v7

    if-ge v0, v4, :cond_6

    add-int/lit8 v0, v6, -0x1

    mul-int/2addr v0, v5

    add-int/2addr v0, v8

    if-lt v0, v3, :cond_7

    .line 145
    :cond_6
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 149
    :cond_7
    new-instance v3, Lbe;

    invoke-direct {v3, v6}, Lbe;-><init>(I)V

    move v2, v1

    .line 150
    :goto_2
    if-ge v2, v6, :cond_a

    .line 151
    mul-int v0, v2, v5

    add-int v4, v8, v0

    move v0, v1

    .line 152
    :goto_3
    if-ge v0, v6, :cond_9

    .line 153
    mul-int v9, v0, v5

    add-int/2addr v9, v7

    invoke-virtual {p0, v9, v4}, Lbe;->a(II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 154
    invoke-virtual {v3, v0, v2}, Lbe;->a(II)V

    .line 152
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 150
    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 158
    :cond_a
    return-object v3
.end method


# virtual methods
.method public a(Lc;Ljava/util/Hashtable;)Ln;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 64
    if-eqz p2, :cond_2

    sget-object v0, Le;->b:Le;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p1}, Lc;->a()Lbe;

    move-result-object v0

    invoke-static {v0}, Lby;->a(Lbe;)Lbe;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lby;->a:Lcc;

    invoke-virtual {v1, v0}, Lcc;->a(Lbe;)Lbj;

    move-result-object v1

    .line 67
    sget-object v0, Lby;->a:[Lp;

    .line 73
    :goto_0
    new-instance v2, Ln;

    invoke-virtual {v1}, Lbj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbj;->a()[B

    move-result-object v4

    sget-object v5, La;->b:La;

    invoke-direct {v2, v3, v4, v0, v5}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    .line 75
    invoke-virtual {v1}, Lbj;->a()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lo;->c:Lo;

    invoke-virtual {v1}, Lbj;->a()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ln;->a(Lo;Ljava/lang/Object;)V

    .line 78
    :cond_0
    invoke-virtual {v1}, Lbj;->a()Lfd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lo;->d:Lo;

    invoke-virtual {v1}, Lbj;->a()Lfd;

    move-result-object v1

    invoke-virtual {v1}, Lfd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ln;->a(Lo;Ljava/lang/Object;)V

    .line 81
    :cond_1
    return-object v2

    .line 69
    :cond_2
    new-instance v0, Lch;

    invoke-virtual {p1}, Lc;->a()Lbe;

    move-result-object v1

    invoke-direct {v0, v1}, Lch;-><init>(Lbe;)V

    invoke-virtual {v0}, Lch;->a()Lbl;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lby;->a:Lcc;

    invoke-virtual {v0}, Lbl;->a()Lbe;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcc;->a(Lbe;)Lbj;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lbl;->a()[Lp;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
