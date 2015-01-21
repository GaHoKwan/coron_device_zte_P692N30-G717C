.class public abstract Lbo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lbo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lbk;

    invoke-direct {v0}, Lbk;-><init>()V

    sput-object v0, Lbo;->a:Lbo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbo;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lbo;->a:Lbo;

    return-object v0
.end method

.method protected static a(Lbe;[F)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x1

    .line 119
    invoke-virtual {p0}, Lbe;->a()I

    move-result v4

    .line 120
    invoke-virtual {p0}, Lbe;->b()I

    move-result v5

    move v0, v1

    move v2, v3

    .line 123
    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_5

    if-eqz v2, :cond_5

    .line 124
    aget v2, p1, v0

    float-to-int v2, v2

    .line 125
    add-int/lit8 v6, v0, 0x1

    aget v6, p1, v6

    float-to-int v6, v6

    .line 126
    if-lt v2, v7, :cond_0

    if-gt v2, v4, :cond_0

    if-lt v6, v7, :cond_0

    if-le v6, v5, :cond_1

    .line 127
    :cond_0
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 130
    :cond_1
    if-ne v2, v7, :cond_3

    .line 131
    aput v8, p1, v0

    move v2, v3

    .line 137
    :goto_1
    if-ne v6, v7, :cond_4

    .line 138
    add-int/lit8 v2, v0, 0x1

    aput v8, p1, v2

    move v2, v3

    .line 123
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 133
    :cond_3
    if-ne v2, v4, :cond_d

    .line 134
    add-int/lit8 v2, v4, -0x1

    int-to-float v2, v2

    aput v2, p1, v0

    move v2, v3

    .line 135
    goto :goto_1

    .line 140
    :cond_4
    if-ne v6, v5, :cond_2

    .line 141
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    aput v6, p1, v2

    move v2, v3

    .line 142
    goto :goto_2

    .line 147
    :cond_5
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    move v2, v0

    move v0, v3

    :goto_3
    if-ltz v2, :cond_b

    if-eqz v0, :cond_b

    .line 148
    aget v0, p1, v2

    float-to-int v0, v0

    .line 149
    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    float-to-int v6, v6

    .line 150
    if-lt v0, v7, :cond_6

    if-gt v0, v4, :cond_6

    if-lt v6, v7, :cond_6

    if-le v6, v5, :cond_7

    .line 151
    :cond_6
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 154
    :cond_7
    if-ne v0, v7, :cond_9

    .line 155
    aput v8, p1, v2

    move v0, v3

    .line 161
    :goto_4
    if-ne v6, v7, :cond_a

    .line 162
    add-int/lit8 v0, v2, 0x1

    aput v8, p1, v0

    move v0, v3

    .line 147
    :cond_8
    :goto_5
    add-int/lit8 v2, v2, -0x2

    goto :goto_3

    .line 157
    :cond_9
    if-ne v0, v4, :cond_c

    .line 158
    add-int/lit8 v0, v4, -0x1

    int-to-float v0, v0

    aput v0, p1, v2

    move v0, v3

    .line 159
    goto :goto_4

    .line 164
    :cond_a
    if-ne v6, v5, :cond_8

    .line 165
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v6, v5, -0x1

    int-to-float v6, v6

    aput v6, p1, v0

    move v0, v3

    .line 166
    goto :goto_5

    .line 169
    :cond_b
    return-void

    :cond_c
    move v0, v1

    goto :goto_4

    :cond_d
    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public abstract a(Lbe;IFFFFFFFFFFFFFFFF)Lbe;
.end method

.method public a(Lbe;ILbq;)Lbe;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
