.class public final Lbv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbt;


# direct methods
.method public constructor <init>(Lbt;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lbv;->a:Lbt;

    .line 47
    return-void
.end method

.method private a(Lbu;)[I
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 148
    invoke-virtual {p1}, Lbu;->a()I

    move-result v4

    .line 149
    if-ne v4, v2, :cond_0

    .line 150
    new-array v0, v2, [I

    invoke-virtual {p1, v2}, Lbu;->a(I)I

    move-result v1

    aput v1, v0, v3

    .line 163
    :goto_0
    return-object v0

    .line 152
    :cond_0
    new-array v1, v4, [I

    move v0, v3

    .line 154
    :goto_1
    const/16 v3, 0x100

    if-ge v2, v3, :cond_2

    if-ge v0, v4, :cond_2

    .line 155
    invoke-virtual {p1, v2}, Lbu;->b(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 156
    iget-object v3, p0, Lbv;->a:Lbt;

    invoke-virtual {v3, v2}, Lbt;->c(I)I

    move-result v3

    aput v3, v1, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    .line 154
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_2
    if-eq v0, v4, :cond_3

    .line 161
    new-instance v0, Lbx;

    const-string v1, "Error locator degree does not match number of roots"

    invoke-direct {v0, v1}, Lbx;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    .line 163
    goto :goto_0
.end method

.method private a(Lbu;[IZ)[I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 168
    array-length v5, p2

    .line 169
    new-array v6, v5, [I

    move v4, v3

    .line 170
    :goto_0
    if-ge v4, v5, :cond_3

    .line 171
    iget-object v0, p0, Lbv;->a:Lbt;

    aget v1, p2, v4

    invoke-virtual {v0, v1}, Lbt;->c(I)I

    move-result v7

    .line 172
    const/4 v1, 0x1

    move v2, v3

    .line 173
    :goto_1
    if-ge v2, v5, :cond_1

    .line 174
    if-eq v4, v2, :cond_4

    .line 179
    iget-object v0, p0, Lbv;->a:Lbt;

    aget v8, p2, v2

    invoke-virtual {v0, v8, v7}, Lbt;->b(II)I

    move-result v0

    .line 180
    and-int/lit8 v8, v0, 0x1

    if-nez v8, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 181
    :goto_2
    iget-object v8, p0, Lbv;->a:Lbt;

    invoke-virtual {v8, v1, v0}, Lbt;->b(II)I

    move-result v0

    .line 173
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 180
    :cond_0
    and-int/lit8 v0, v0, -0x2

    goto :goto_2

    .line 184
    :cond_1
    iget-object v0, p0, Lbv;->a:Lbt;

    invoke-virtual {p1, v7}, Lbu;->b(I)I

    move-result v2

    iget-object v8, p0, Lbv;->a:Lbt;

    invoke-virtual {v8, v1}, Lbt;->c(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lbt;->b(II)I

    move-result v0

    aput v0, v6, v4

    .line 187
    if-eqz p3, :cond_2

    .line 188
    iget-object v0, p0, Lbv;->a:Lbt;

    aget v1, v6, v4

    invoke-virtual {v0, v1, v7}, Lbt;->b(II)I

    move-result v0

    aput v0, v6, v4

    .line 170
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 191
    :cond_3
    return-object v6

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method private a(Lbu;Lbu;I)[Lbu;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual {p1}, Lbu;->a()I

    move-result v0

    invoke-virtual {p2}, Lbu;->a()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 101
    :goto_0
    iget-object v0, p0, Lbv;->a:Lbt;

    invoke-virtual {v0}, Lbt;->b()Lbu;

    move-result-object v3

    .line 102
    iget-object v0, p0, Lbv;->a:Lbt;

    invoke-virtual {v0}, Lbt;->a()Lbu;

    move-result-object v2

    .line 103
    iget-object v0, p0, Lbv;->a:Lbt;

    invoke-virtual {v0}, Lbt;->a()Lbu;

    move-result-object v1

    .line 104
    iget-object v0, p0, Lbv;->a:Lbt;

    invoke-virtual {v0}, Lbt;->b()Lbu;

    move-result-object v0

    .line 107
    :goto_1
    invoke-virtual {p1}, Lbu;->a()I

    move-result v4

    div-int/lit8 v5, p3, 0x2

    if-lt v4, v5, :cond_2

    .line 116
    invoke-virtual {p1}, Lbu;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    new-instance v0, Lbx;

    const-string v1, "r_{i-1} was zero"

    invoke-direct {v0, v1}, Lbx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v4, p0, Lbv;->a:Lbt;

    invoke-virtual {v4}, Lbt;->a()Lbu;

    move-result-object v4

    .line 122
    invoke-virtual {p1}, Lbu;->a()I

    move-result v5

    invoke-virtual {p1, v5}, Lbu;->a(I)I

    move-result v5

    .line 123
    iget-object v6, p0, Lbv;->a:Lbt;

    invoke-virtual {v6, v5}, Lbt;->c(I)I

    move-result v6

    move-object v5, v4

    move-object v4, p2

    .line 124
    :goto_2
    invoke-virtual {v4}, Lbu;->a()I

    move-result v7

    invoke-virtual {p1}, Lbu;->a()I

    move-result v8

    if-lt v7, v8, :cond_1

    invoke-virtual {v4}, Lbu;->a()Z

    move-result v7

    if-nez v7, :cond_1

    .line 125
    invoke-virtual {v4}, Lbu;->a()I

    move-result v7

    invoke-virtual {p1}, Lbu;->a()I

    move-result v8

    sub-int/2addr v7, v8

    .line 126
    iget-object v8, p0, Lbv;->a:Lbt;

    invoke-virtual {v4}, Lbu;->a()I

    move-result v9

    invoke-virtual {v4, v9}, Lbu;->a(I)I

    move-result v9

    invoke-virtual {v8, v9, v6}, Lbt;->b(II)I

    move-result v8

    .line 127
    iget-object v9, p0, Lbv;->a:Lbt;

    invoke-virtual {v9, v7, v8}, Lbt;->a(II)Lbu;

    move-result-object v9

    invoke-virtual {v5, v9}, Lbu;->a(Lbu;)Lbu;

    move-result-object v5

    .line 128
    invoke-virtual {p1, v7, v8}, Lbu;->a(II)Lbu;

    move-result-object v7

    invoke-virtual {v4, v7}, Lbu;->a(Lbu;)Lbu;

    move-result-object v4

    goto :goto_2

    .line 131
    :cond_1
    invoke-virtual {v5, v2}, Lbu;->b(Lbu;)Lbu;

    move-result-object v6

    invoke-virtual {v6, v3}, Lbu;->a(Lbu;)Lbu;

    move-result-object v3

    .line 132
    invoke-virtual {v5, v0}, Lbu;->b(Lbu;)Lbu;

    move-result-object v5

    invoke-virtual {v5, v1}, Lbu;->a(Lbu;)Lbu;

    move-result-object v1

    move-object p2, p1

    move-object p1, v4

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    .line 133
    goto :goto_1

    .line 135
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbu;->a(I)I

    move-result v1

    .line 136
    if-nez v1, :cond_3

    .line 137
    new-instance v0, Lbx;

    const-string v1, "sigmaTilde(0) was zero"

    invoke-direct {v0, v1}, Lbx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_3
    iget-object v2, p0, Lbv;->a:Lbt;

    invoke-virtual {v2, v1}, Lbt;->c(I)I

    move-result v1

    .line 141
    invoke-virtual {v0, v1}, Lbu;->a(I)Lbu;

    move-result-object v0

    .line 142
    invoke-virtual {p1, v1}, Lbu;->a(I)Lbu;

    move-result-object v1

    .line 143
    const/4 v2, 0x2

    new-array v2, v2, [Lbu;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2

    :cond_4
    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    goto/16 :goto_0
.end method


# virtual methods
.method public a([II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v5, Lbu;

    iget-object v0, p0, Lbv;->a:Lbt;

    invoke-direct {v5, v0, p1}, Lbu;-><init>(Lbt;[I)V

    .line 60
    new-array v6, p2, [I

    .line 61
    iget-object v0, p0, Lbv;->a:Lbt;

    sget-object v1, Lbt;->b:Lbt;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v1, v2

    move v3, v4

    .line 63
    :goto_0
    if-ge v1, p2, :cond_1

    .line 65
    iget-object v8, p0, Lbv;->a:Lbt;

    if-eqz v7, :cond_0

    add-int/lit8 v0, v1, 0x1

    :goto_1
    invoke-virtual {v8, v0}, Lbt;->a(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lbu;->b(I)I

    move-result v0

    .line 66
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v1

    aput v0, v6, v8

    .line 67
    if-eqz v0, :cond_5

    move v0, v2

    .line 63
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 65
    goto :goto_1

    .line 71
    :cond_1
    if-eqz v3, :cond_3

    .line 88
    :cond_2
    return-void

    .line 74
    :cond_3
    new-instance v0, Lbu;

    iget-object v1, p0, Lbv;->a:Lbt;

    invoke-direct {v0, v1, v6}, Lbu;-><init>(Lbt;[I)V

    .line 75
    iget-object v1, p0, Lbv;->a:Lbt;

    invoke-virtual {v1, p2, v4}, Lbt;->a(II)Lbu;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lbv;->a(Lbu;Lbu;I)[Lbu;

    move-result-object v0

    .line 77
    aget-object v1, v0, v2

    .line 78
    aget-object v0, v0, v4

    .line 79
    invoke-direct {p0, v1}, Lbv;->a(Lbu;)[I

    move-result-object v1

    .line 80
    invoke-direct {p0, v0, v1, v7}, Lbv;->a(Lbu;[IZ)[I

    move-result-object v0

    .line 81
    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 82
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lbv;->a:Lbt;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Lbt;->b(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 83
    if-gez v3, :cond_4

    .line 84
    new-instance v0, Lbx;

    const-string v1, "Bad error location"

    invoke-direct {v0, v1}, Lbx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_4
    aget v4, p1, v3

    aget v5, v0, v2

    invoke-static {v4, v5}, Lbt;->a(II)I

    move-result v4

    aput v4, p1, v3

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_2
.end method
