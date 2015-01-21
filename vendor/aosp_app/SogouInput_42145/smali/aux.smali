.class public Laux;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Laux;


# instance fields
.field private a:I

.field private a:[C

.field private a:[I

.field private a:[Lauz;

.field private b:I

.field private b:[C

.field private c:[C


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Laux;->a:[C

    .line 17
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Laux;->b:[C

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Laux;->c:[C

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Laux;->a:[I

    .line 28
    new-array v0, v4, [Lauz;

    iput-object v0, p0, Laux;->a:[Lauz;

    .line 29
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 30
    iget-object v1, p0, Laux;->a:[Lauz;

    new-instance v2, Lauz;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lauz;-><init>(Laux;Lauy;)V

    aput-object v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-void

    .line 16
    nop

    :array_0
    .array-data 0x2
        0x71t 0x0t
        0x77t 0x0t
        0x65t 0x0t
        0x72t 0x0t
        0x74t 0x0t
        0x79t 0x0t
        0x75t 0x0t
        0x69t 0x0t
        0x6ft 0x0t
        0x70t 0x0t
    .end array-data

    .line 17
    :array_1
    .array-data 0x2
        0x61t 0x0t
        0x73t 0x0t
        0x64t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
    .end array-data

    .line 18
    nop

    :array_2
    .array-data 0x2
        0x7at 0x0t
        0x78t 0x0t
        0x63t 0x0t
        0x76t 0x0t
        0x62t 0x0t
        0x6et 0x0t
        0x6dt 0x0t
    .end array-data
.end method

.method public static a()Laux;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Laux;->a:Laux;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Laux;

    invoke-direct {v0}, Laux;-><init>()V

    sput-object v0, Laux;->a:Laux;

    .line 41
    :cond_0
    sget-object v0, Laux;->a:Laux;

    return-object v0
.end method

.method static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    return-void
.end method

.method private a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 202
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(III)Lava;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Laux;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lava;

    invoke-direct {v0, p0}, Lava;-><init>(Laux;)V

    .line 68
    add-int/lit8 v1, p1, -0x61

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laux;->a(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Laux;->a:[Lauz;

    aget-object v1, v2, v1

    .line 71
    iget-char v2, v1, Lauz;->a:C

    iput-char v2, v0, Lava;->a:C

    .line 72
    invoke-virtual {v1, p2}, Lauz;->a(I)I

    move-result v2

    iput v2, v0, Lava;->a:I

    .line 73
    invoke-virtual {v1, p3}, Lauz;->b(I)I

    move-result v1

    iput v1, v0, Lava;->b:I

    goto :goto_0
.end method

.method public a(Lawx;)V
    .locals 15
    .parameter

    .prologue
    .line 87
    .line 101
    invoke-virtual/range {p1 .. p1}, Lawx;->g()I

    move-result v0

    iput v0, p0, Laux;->a:I

    .line 102
    invoke-virtual/range {p1 .. p1}, Lawx;->f()I

    move-result v0

    iput v0, p0, Laux;->b:I

    .line 103
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Landroid/graphics/Rect;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 104
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    iget v3, v0, Laxb;->h:I

    .line 105
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    iget v4, v0, Laxb;->h:I

    .line 106
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    iget v1, v0, Laxb;->i:I

    .line 107
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    invoke-virtual {v0}, Laxb;->a()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    iget v5, v0, Lawq;->b:I

    .line 108
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    iget v0, v0, Laxb;->h:I

    add-int v6, v0, v5

    .line 109
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    iget v7, v0, Laxb;->i:I

    .line 110
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v8, 0x3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    iget v8, v0, Laxb;->i:I

    .line 111
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    iget v9, v0, Laxb;->f:I

    .line 112
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    iget v10, v0, Laxb;->a:I

    .line 113
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    invoke-virtual {v0}, Laxb;->a()Ljava/util/List;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    iget v11, v0, Lawq;->c:I

    .line 114
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    invoke-virtual {v0}, Laxb;->a()Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x0

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    iget v12, v0, Lawq;->c:I

    .line 115
    invoke-virtual/range {p1 .. p1}, Lawx;->b()Ljava/util/List;

    move-result-object v0

    const/4 v13, 0x2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxb;

    invoke-virtual {v0}, Laxb;->a()Ljava/util/List;

    move-result-object v0

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    iget v0, v0, Lawq;->c:I

    .line 118
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "params:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Laux;->a:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Laux;->b:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laux;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Laux;->a:[I

    const/4 v5, 0x0

    iget v13, p0, Laux;->b:I

    aput v13, v0, v5

    .line 123
    iget-object v0, p0, Laux;->a:[I

    const/4 v5, 0x1

    iget v13, p0, Laux;->b:I

    add-int/2addr v1, v2

    sub-int v1, v13, v1

    aput v1, v0, v5

    .line 124
    iget-object v0, p0, Laux;->a:[I

    const/4 v1, 0x2

    iget v5, p0, Laux;->b:I

    add-int/2addr v7, v2

    sub-int/2addr v5, v7

    aput v5, v0, v1

    .line 125
    iget-object v0, p0, Laux;->a:[I

    const/4 v1, 0x3

    iget v5, p0, Laux;->b:I

    add-int v7, v8, v2

    sub-int/2addr v5, v7

    aput v5, v0, v1

    .line 127
    const/4 v1, 0x0

    .line 128
    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Laux;->a:[C

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 129
    iget-object v5, p0, Laux;->a:[C

    aget-char v5, v5, v0

    .line 130
    add-int/lit8 v7, v5, -0x61

    .line 132
    if-nez v0, :cond_0

    .line 133
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v7

    const/4 v8, 0x0

    iput v8, v1, Lauz;->c:I

    .line 134
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v7

    add-int v8, v3, v10

    div-int/lit8 v13, v9, 0x2

    add-int/2addr v8, v13

    iput v8, v1, Lauz;->d:I

    .line 135
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v7

    iget v1, v1, Lauz;->d:I

    .line 144
    :goto_1
    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v8, v8, v7

    iget v13, p0, Laux;->b:I

    iput v13, v8, Lauz;->e:I

    .line 145
    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v8, v8, v7

    iget-object v13, p0, Laux;->a:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    iput v13, v8, Lauz;->f:I

    .line 146
    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v8, v8, v7

    iput-char v5, v8, Lauz;->a:C

    .line 147
    iget-object v5, p0, Laux;->a:[Lauz;

    aget-object v5, v5, v7

    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v8, v8, v7

    iget v8, v8, Lauz;->c:I

    iget-object v13, p0, Laux;->a:[Lauz;

    aget-object v13, v13, v7

    iget v13, v13, Lauz;->d:I

    add-int/2addr v8, v13

    div-int/lit8 v8, v8, 0x2

    iput v8, v5, Lauz;->a:I

    .line 148
    iget-object v5, p0, Laux;->a:[Lauz;

    aget-object v5, v5, v7

    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v8, v8, v7

    iget v8, v8, Lauz;->e:I

    iget-object v13, p0, Laux;->a:[Lauz;

    aget-object v7, v13, v7

    iget v7, v7, Lauz;->f:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Lauz;->b:I

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    iget-object v8, p0, Laux;->a:[C

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_1

    .line 137
    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v8, v8, v7

    iput v1, v8, Lauz;->c:I

    .line 138
    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v8, v8, v7

    iget v13, p0, Laux;->a:I

    iput v13, v8, Lauz;->d:I

    goto :goto_1

    .line 140
    :cond_1
    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v8, v8, v7

    iput v1, v8, Lauz;->c:I

    .line 141
    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v8, v8, v7

    add-int/2addr v1, v10

    add-int/2addr v1, v9

    iput v1, v8, Lauz;->d:I

    .line 142
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v7

    iget v1, v1, Lauz;->d:I

    goto :goto_1

    .line 151
    :cond_2
    const/4 v1, 0x0

    .line 152
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Laux;->b:[C

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 153
    iget-object v3, p0, Laux;->b:[C

    aget-char v3, v3, v0

    .line 154
    add-int/lit8 v5, v3, -0x61

    .line 156
    if-nez v0, :cond_3

    .line 157
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v5

    const/4 v7, 0x0

    iput v7, v1, Lauz;->c:I

    .line 158
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v5

    add-int v7, v4, v10

    div-int/lit8 v8, v9, 0x2

    add-int/2addr v7, v8

    iput v7, v1, Lauz;->d:I

    .line 159
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v5

    iget v1, v1, Lauz;->d:I

    .line 168
    :goto_3
    iget-object v7, p0, Laux;->a:[Lauz;

    aget-object v7, v7, v5

    iget v8, p0, Laux;->b:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v11

    iput v8, v7, Lauz;->e:I

    .line 169
    iget-object v7, p0, Laux;->a:[Lauz;

    aget-object v7, v7, v5

    iget-object v8, p0, Laux;->a:[I

    const/4 v13, 0x2

    aget v8, v8, v13

    iput v8, v7, Lauz;->f:I

    .line 170
    iget-object v7, p0, Laux;->a:[Lauz;

    aget-object v7, v7, v5

    iput-char v3, v7, Lauz;->a:C

    .line 171
    iget-object v3, p0, Laux;->a:[Lauz;

    aget-object v3, v3, v5

    iget-object v7, p0, Laux;->a:[Lauz;

    aget-object v7, v7, v5

    iget v7, v7, Lauz;->c:I

    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v8, v8, v5

    iget v8, v8, Lauz;->d:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    iput v7, v3, Lauz;->a:I

    .line 172
    iget-object v3, p0, Laux;->a:[Lauz;

    aget-object v3, v3, v5

    iget-object v7, p0, Laux;->a:[Lauz;

    aget-object v7, v7, v5

    iget v7, v7, Lauz;->e:I

    iget-object v8, p0, Laux;->a:[Lauz;

    aget-object v5, v8, v5

    iget v5, v5, Lauz;->f:I

    add-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    iput v5, v3, Lauz;->b:I

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    :cond_3
    iget-object v7, p0, Laux;->b:[C

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ne v0, v7, :cond_4

    .line 161
    iget-object v7, p0, Laux;->a:[Lauz;

    aget-object v7, v7, v5

    iput v1, v7, Lauz;->c:I

    .line 162
    iget-object v7, p0, Laux;->a:[Lauz;

    aget-object v7, v7, v5

    iget v8, p0, Laux;->a:I

    iput v8, v7, Lauz;->d:I

    goto :goto_3

    .line 164
    :cond_4
    iget-object v7, p0, Laux;->a:[Lauz;

    aget-object v7, v7, v5

    iput v1, v7, Lauz;->c:I

    .line 165
    iget-object v7, p0, Laux;->a:[Lauz;

    aget-object v7, v7, v5

    add-int/2addr v1, v10

    add-int/2addr v1, v9

    iput v1, v7, Lauz;->d:I

    .line 166
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v5

    iget v1, v1, Lauz;->d:I

    goto :goto_3

    .line 175
    :cond_5
    const/4 v1, 0x0

    .line 176
    const/4 v0, 0x0

    :goto_4
    iget-object v2, p0, Laux;->c:[C

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 177
    iget-object v2, p0, Laux;->c:[C

    aget-char v2, v2, v0

    .line 178
    add-int/lit8 v3, v2, -0x61

    .line 180
    if-nez v0, :cond_6

    .line 181
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v3

    iput v6, v1, Lauz;->c:I

    .line 182
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v3

    add-int v4, v6, v10

    div-int/lit8 v5, v9, 0x2

    add-int/2addr v4, v5

    iput v4, v1, Lauz;->d:I

    .line 183
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v3

    iget v1, v1, Lauz;->d:I

    .line 192
    :goto_5
    iget-object v4, p0, Laux;->a:[Lauz;

    aget-object v4, v4, v3

    iget-object v5, p0, Laux;->a:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    sub-int/2addr v5, v12

    iput v5, v4, Lauz;->e:I

    .line 193
    iget-object v4, p0, Laux;->a:[Lauz;

    aget-object v4, v4, v3

    iget-object v5, p0, Laux;->a:[I

    const/4 v7, 0x3

    aget v5, v5, v7

    iput v5, v4, Lauz;->f:I

    .line 194
    iget-object v4, p0, Laux;->a:[Lauz;

    aget-object v4, v4, v3

    iput-char v2, v4, Lauz;->a:C

    .line 195
    iget-object v2, p0, Laux;->a:[Lauz;

    aget-object v2, v2, v3

    iget-object v4, p0, Laux;->a:[Lauz;

    aget-object v4, v4, v3

    iget v4, v4, Lauz;->c:I

    iget-object v5, p0, Laux;->a:[Lauz;

    aget-object v5, v5, v3

    iget v5, v5, Lauz;->d:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Lauz;->a:I

    .line 196
    iget-object v2, p0, Laux;->a:[Lauz;

    aget-object v2, v2, v3

    iget-object v4, p0, Laux;->a:[Lauz;

    aget-object v4, v4, v3

    iget v4, v4, Lauz;->e:I

    iget-object v5, p0, Laux;->a:[Lauz;

    aget-object v3, v5, v3

    iget v3, v3, Lauz;->f:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Lauz;->b:I

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 184
    :cond_6
    iget-object v4, p0, Laux;->c:[C

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_7

    .line 185
    iget-object v4, p0, Laux;->a:[Lauz;

    aget-object v4, v4, v3

    iput v1, v4, Lauz;->c:I

    .line 186
    iget-object v4, p0, Laux;->a:[Lauz;

    aget-object v4, v4, v3

    add-int v5, v1, v10

    div-int/lit8 v7, v9, 0x2

    add-int/2addr v5, v7

    iput v5, v4, Lauz;->d:I

    goto :goto_5

    .line 188
    :cond_7
    iget-object v4, p0, Laux;->a:[Lauz;

    aget-object v4, v4, v3

    iput v1, v4, Lauz;->c:I

    .line 189
    iget-object v4, p0, Laux;->a:[Lauz;

    aget-object v4, v4, v3

    add-int/2addr v1, v10

    add-int/2addr v1, v9

    iput v1, v4, Lauz;->d:I

    .line 190
    iget-object v1, p0, Laux;->a:[Lauz;

    aget-object v1, v1, v3

    iget v1, v1, Lauz;->d:I

    goto :goto_5

    .line 199
    :cond_8
    return-void
.end method
