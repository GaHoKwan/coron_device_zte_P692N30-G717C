.class public Len;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll;


# static fields
.field private static final a:[Lp;


# instance fields
.field private final a:Lfc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Lp;

    sput-object v0, Len;->a:[Lp;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lfc;

    invoke-direct {v0}, Lfc;-><init>()V

    iput-object v0, p0, Len;->a:Lfc;

    return-void
.end method

.method public static a(Lbe;)Lbe;
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lbe;->b()I

    move-result v5

    .line 101
    invoke-virtual {p0}, Lbe;->a()I

    move-result v6

    .line 102
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 106
    invoke-virtual {p0}, Lbe;->a()[I

    move-result-object v8

    .line 107
    if-nez v8, :cond_0

    .line 108
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 110
    :cond_0
    aget v3, v8, v1

    .line 111
    aget v2, v8, v0

    move v4, v3

    move v3, v2

    .line 112
    :goto_0
    if-ge v4, v7, :cond_1

    if-ge v3, v7, :cond_1

    invoke-virtual {p0, v4, v3}, Lbe;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    add-int/lit8 v4, v4, 0x1

    .line 114
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 116
    :cond_1
    if-eq v4, v7, :cond_2

    if-ne v3, v7, :cond_3

    .line 117
    :cond_2
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 120
    :cond_3
    aget v2, v8, v1

    sub-int v7, v4, v2

    .line 121
    if-nez v7, :cond_4

    .line 122
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 126
    :cond_4
    add-int/lit8 v2, v6, -0x1

    .line 127
    :goto_1
    if-le v2, v4, :cond_5

    invoke-virtual {p0, v2, v3}, Lbe;->a(II)Z

    move-result v8

    if-nez v8, :cond_5

    .line 128
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 130
    :cond_5
    if-gt v2, v4, :cond_6

    .line 131
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 133
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 136
    sub-int v8, v2, v4

    rem-int/2addr v8, v7

    if-eqz v8, :cond_7

    .line 137
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 139
    :cond_7
    sub-int/2addr v2, v4

    div-int/2addr v2, v7

    add-int/lit8 v8, v2, 0x1

    .line 144
    if-ne v7, v0, :cond_9

    .line 145
    :goto_2
    sub-int/2addr v4, v0

    .line 146
    sub-int/2addr v3, v0

    .line 148
    add-int/lit8 v0, v8, -0x1

    mul-int/2addr v0, v7

    add-int/2addr v0, v4

    if-ge v0, v6, :cond_8

    add-int/lit8 v0, v8, -0x1

    mul-int/2addr v0, v7

    add-int/2addr v0, v3

    if-lt v0, v5, :cond_a

    .line 150
    :cond_8
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 144
    :cond_9
    shr-int/lit8 v0, v7, 0x1

    goto :goto_2

    .line 154
    :cond_a
    new-instance v5, Lbe;

    invoke-direct {v5, v8}, Lbe;-><init>(I)V

    move v2, v1

    .line 155
    :goto_3
    if-ge v2, v8, :cond_d

    .line 156
    mul-int v0, v2, v7

    add-int v6, v3, v0

    move v0, v1

    .line 157
    :goto_4
    if-ge v0, v8, :cond_c

    .line 158
    mul-int v9, v0, v7

    add-int/2addr v9, v4

    invoke-virtual {p0, v9, v6}, Lbe;->a(II)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 159
    invoke-virtual {v5, v0, v2}, Lbe;->a(II)V

    .line 157
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 155
    :cond_c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 163
    :cond_d
    return-object v5
.end method


# virtual methods
.method public a(Lc;Ljava/util/Hashtable;)Ln;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 68
    if-eqz p2, :cond_2

    sget-object v0, Le;->b:Le;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p1}, Lc;->a()Lbe;

    move-result-object v0

    invoke-static {v0}, Len;->a(Lbe;)Lbe;

    move-result-object v0

    .line 70
    iget-object v1, p0, Len;->a:Lfc;

    invoke-virtual {v1, v0, p2}, Lfc;->a(Lbe;Ljava/util/Hashtable;)Lbj;

    move-result-object v1

    .line 71
    sget-object v0, Len;->a:[Lp;

    .line 78
    :goto_0
    new-instance v2, Ln;

    invoke-virtual {v1}, Lbj;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lbj;->a()[B

    move-result-object v4

    sget-object v5, La;->a:La;

    invoke-direct {v2, v3, v4, v0, v5}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    .line 79
    invoke-virtual {v1}, Lbj;->a()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lo;->c:Lo;

    invoke-virtual {v1}, Lbj;->a()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ln;->a(Lo;Ljava/lang/Object;)V

    .line 82
    :cond_0
    invoke-virtual {v1}, Lbj;->a()Lfd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lo;->d:Lo;

    invoke-virtual {v1}, Lbj;->a()Lfd;

    move-result-object v1

    invoke-virtual {v1}, Lfd;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ln;->a(Lo;Ljava/lang/Object;)V

    .line 85
    :cond_1
    return-object v2

    .line 73
    :cond_2
    new-instance v0, Lfl;

    invoke-virtual {p1}, Lc;->a()Lbe;

    move-result-object v1

    invoke-direct {v0, v1}, Lfl;-><init>(Lbe;)V

    invoke-virtual {v0, p2}, Lfl;->a(Ljava/util/Hashtable;)Lbl;

    move-result-object v0

    .line 74
    iget-object v1, p0, Len;->a:Lfc;

    invoke-virtual {v0}, Lbl;->a()Lbe;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lfc;->a(Lbe;Ljava/util/Hashtable;)Lbj;

    move-result-object v1

    .line 75
    invoke-virtual {v0}, Lbl;->a()[Lp;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
