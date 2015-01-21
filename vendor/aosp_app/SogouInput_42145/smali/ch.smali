.class public final Lch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Integer;


# instance fields
.field private final a:Lbe;

.field private final a:Lbs;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v6

    sput-object v0, Lch;->a:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lbe;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lch;->a:Lbe;

    .line 51
    new-instance v0, Lbs;

    invoke-direct {v0, p1}, Lbs;-><init>(Lbe;)V

    iput-object v0, p0, Lch;->a:Lbs;

    .line 52
    return-void
.end method

.method private static a(F)I
    .locals 1
    .parameter

    .prologue
    .line 222
    const/high16 v0, 0x3f00

    add-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private static a(Lp;Lp;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-virtual {p0}, Lp;->a()F

    move-result v0

    invoke-virtual {p1}, Lp;->a()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lp;->a()F

    move-result v1

    invoke-virtual {p1}, Lp;->a()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lp;->b()F

    move-result v1

    invoke-virtual {p1}, Lp;->b()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lp;->b()F

    move-result v2

    invoke-virtual {p1}, Lp;->b()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Lch;->a(F)I

    move-result v0

    return v0
.end method

.method private static a(Lbe;Lp;Lp;Lp;Lp;I)Lbe;
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v1

    .line 249
    const/high16 v4, 0x3f00

    const/high16 v5, 0x3f00

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v6, v2, v3

    const/high16 v7, 0x3f00

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v8, v2, v3

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v9, v2, v3

    const/high16 v10, 0x3f00

    move/from16 v0, p5

    int-to-float v2, v0

    const/high16 v3, 0x3f00

    sub-float v11, v2, v3

    invoke-virtual/range {p1 .. p1}, Lp;->a()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lp;->b()F

    move-result v13

    invoke-virtual/range {p4 .. p4}, Lp;->a()F

    move-result v14

    invoke-virtual/range {p4 .. p4}, Lp;->b()F

    move-result v15

    invoke-virtual/range {p3 .. p3}, Lp;->a()F

    move-result v16

    invoke-virtual/range {p3 .. p3}, Lp;->b()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lp;->a()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Lp;->b()F

    move-result v19

    move-object/from16 v2, p0

    move/from16 v3, p5

    invoke-virtual/range {v1 .. v19}, Lbo;->a(Lbe;IFFFFFFFFFFFFFFFF)Lbe;

    move-result-object v1

    return-object v1
.end method

.method private a(Lp;Lp;)Lcj;
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-virtual/range {p1 .. p1}, Lp;->a()F

    move-result v2

    float-to-int v4, v2

    .line 275
    invoke-virtual/range {p1 .. p1}, Lp;->b()F

    move-result v2

    float-to-int v5, v2

    .line 276
    invoke-virtual/range {p2 .. p2}, Lp;->a()F

    move-result v2

    float-to-int v2, v2

    .line 277
    invoke-virtual/range {p2 .. p2}, Lp;->b()F

    move-result v3

    float-to-int v3, v3

    .line 278
    sub-int v6, v3, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v7, v2, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_1

    const/4 v6, 0x1

    move v13, v6

    .line 279
    :goto_0
    if-eqz v13, :cond_b

    .line 288
    :goto_1
    sub-int v6, v3, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 289
    sub-int v6, v2, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 290
    neg-int v6, v14

    shr-int/lit8 v10, v6, 0x1

    .line 291
    if-ge v4, v2, :cond_2

    const/4 v6, 0x1

    move v12, v6

    .line 292
    :goto_2
    if-ge v5, v3, :cond_3

    const/4 v6, 0x1

    .line 293
    :goto_3
    const/4 v8, 0x0

    .line 294
    move-object/from16 v0, p0

    iget-object v11, v0, Lch;->a:Lbe;

    if-eqz v13, :cond_4

    move v9, v4

    :goto_4
    if-eqz v13, :cond_5

    move v7, v5

    :goto_5
    invoke-virtual {v11, v9, v7}, Lbe;->a(II)Z

    move-result v9

    move v7, v4

    move v11, v10

    .line 295
    :goto_6
    if-eq v5, v3, :cond_a

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lch;->a:Lbe;

    move-object/from16 v16, v0

    if-eqz v13, :cond_6

    move v10, v7

    :goto_7
    if-eqz v13, :cond_7

    move v4, v5

    :goto_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v4}, Lbe;->a(II)Z

    move-result v4

    .line 297
    if-eq v4, v9, :cond_0

    .line 298
    add-int/lit8 v8, v8, 0x1

    move v9, v4

    .line 301
    :cond_0
    add-int v4, v11, v15

    .line 302
    if-lez v4, :cond_9

    .line 303
    if-ne v7, v2, :cond_8

    move v2, v8

    .line 310
    :goto_9
    new-instance v3, Lcj;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v2, v4}, Lcj;-><init>(Lp;Lp;ILci;)V

    return-object v3

    .line 278
    :cond_1
    const/4 v6, 0x0

    move v13, v6

    goto :goto_0

    .line 291
    :cond_2
    const/4 v6, -0x1

    move v12, v6

    goto :goto_2

    .line 292
    :cond_3
    const/4 v6, -0x1

    goto :goto_3

    :cond_4
    move v9, v5

    .line 294
    goto :goto_4

    :cond_5
    move v7, v4

    goto :goto_5

    :cond_6
    move v10, v5

    .line 296
    goto :goto_7

    :cond_7
    move v4, v7

    goto :goto_8

    .line 306
    :cond_8
    add-int/2addr v7, v12

    .line 307
    sub-int/2addr v4, v14

    .line 295
    :cond_9
    add-int/2addr v5, v6

    move v11, v4

    goto :goto_6

    :cond_a
    move v2, v8

    goto :goto_9

    :cond_b
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    goto :goto_1
.end method

.method private a(Lp;Lp;Lp;Lp;I)Lp;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-static {p1, p2}, Lch;->a(Lp;Lp;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p5

    div-float/2addr v0, v1

    .line 181
    invoke-static {p3, p4}, Lch;->a(Lp;Lp;)I

    move-result v1

    .line 182
    invoke-virtual {p4}, Lp;->a()F

    move-result v2

    invoke-virtual {p3}, Lp;->a()F

    move-result v3

    sub-float/2addr v2, v3

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 183
    invoke-virtual {p4}, Lp;->b()F

    move-result v3

    invoke-virtual {p3}, Lp;->b()F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v1, v1

    div-float/2addr v3, v1

    .line 185
    new-instance v1, Lp;

    invoke-virtual {p4}, Lp;->a()F

    move-result v4

    mul-float/2addr v2, v0

    add-float/2addr v2, v4

    invoke-virtual {p4}, Lp;->b()F

    move-result v4

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    invoke-direct {v1, v2, v0}, Lp;-><init>(FF)V

    .line 187
    invoke-static {p1, p2}, Lch;->a(Lp;Lp;)I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, p5

    div-float v2, v0, v2

    .line 188
    invoke-static {p2, p4}, Lch;->a(Lp;Lp;)I

    move-result v0

    .line 189
    invoke-virtual {p4}, Lp;->a()F

    move-result v3

    invoke-virtual {p2}, Lp;->a()F

    move-result v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 190
    invoke-virtual {p4}, Lp;->b()F

    move-result v4

    invoke-virtual {p2}, Lp;->b()F

    move-result v5

    sub-float/2addr v4, v5

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 192
    new-instance v0, Lp;

    invoke-virtual {p4}, Lp;->a()F

    move-result v5

    mul-float/2addr v3, v2

    add-float/2addr v3, v5

    invoke-virtual {p4}, Lp;->b()F

    move-result v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-direct {v0, v3, v2}, Lp;-><init>(FF)V

    .line 194
    invoke-direct {p0, v1}, Lch;->a(Lp;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 195
    invoke-direct {p0, v0}, Lch;->a(Lp;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_2
    invoke-direct {p0, v0}, Lch;->a(Lp;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    .line 200
    goto :goto_0

    .line 203
    :cond_3
    invoke-direct {p0, p3, v1}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v2

    invoke-virtual {v2}, Lcj;->a()I

    move-result v2

    invoke-direct {p0, p2, v1}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v3

    invoke-virtual {v3}, Lcj;->a()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 204
    invoke-direct {p0, p3, v0}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v3

    invoke-virtual {v3}, Lcj;->a()I

    move-result v3

    invoke-direct {p0, p2, v0}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v4

    invoke-virtual {v4}, Lcj;->a()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 206
    if-gt v2, v3, :cond_0

    move-object v0, v1

    .line 207
    goto :goto_0
.end method

.method private static a(Ljava/util/Hashtable;Lp;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 237
    if-nez v0, :cond_0

    sget-object v0, Lch;->a:[Ljava/lang/Integer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-void

    .line 237
    :cond_0
    sget-object v1, Lch;->a:[Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method private a(Lp;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 214
    invoke-virtual {p1}, Lp;->a()F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lp;->a()F

    move-result v0

    iget-object v1, p0, Lch;->a:Lbe;

    iget v1, v1, Lbe;->a:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Lp;->b()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lp;->b()F

    move-result v0

    iget-object v1, p0, Lch;->a:Lbe;

    iget v1, v1, Lbe;->b:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lbl;
    .locals 13

    .prologue
    .line 62
    iget-object v0, p0, Lch;->a:Lbs;

    invoke-virtual {v0}, Lbs;->a()[Lp;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    aget-object v5, v0, v1

    .line 64
    const/4 v1, 0x1

    aget-object v6, v0, v1

    .line 65
    const/4 v1, 0x2

    aget-object v7, v0, v1

    .line 66
    const/4 v1, 0x3

    aget-object v8, v0, v1

    .line 71
    new-instance v1, Ljava/util/Vector;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 72
    invoke-direct {p0, v5, v6}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0, v5, v7}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0, v6, v8}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0, v7, v8}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 76
    new-instance v0, Lck;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lck;-><init>(Lci;)V

    invoke-static {v1, v0}, Lbh;->a(Ljava/util/Vector;Lbi;)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcj;

    .line 81
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcj;

    .line 85
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 86
    invoke-virtual {v0}, Lcj;->a()Lp;

    move-result-object v2

    invoke-static {v9, v2}, Lch;->a(Ljava/util/Hashtable;Lp;)V

    .line 87
    invoke-virtual {v0}, Lcj;->b()Lp;

    move-result-object v0

    invoke-static {v9, v0}, Lch;->a(Ljava/util/Hashtable;Lp;)V

    .line 88
    invoke-virtual {v1}, Lcj;->a()Lp;

    move-result-object v0

    invoke-static {v9, v0}, Lch;->a(Ljava/util/Hashtable;Lp;)V

    .line 89
    invoke-virtual {v1}, Lcj;->b()Lp;

    move-result-object v0

    invoke-static {v9, v0}, Lch;->a(Ljava/util/Hashtable;Lp;)V

    .line 91
    const/4 v4, 0x0

    .line 92
    const/4 v3, 0x0

    .line 93
    const/4 v2, 0x0

    .line 94
    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 95
    :goto_0
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp;

    .line 97
    invoke-virtual {v9, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v11, 0x2

    if-ne v1, v11, :cond_0

    move-object v1, v0

    move-object v0, v2

    move-object v2, v4

    :goto_1
    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    .line 108
    goto :goto_0

    .line 102
    :cond_0
    if-nez v4, :cond_1

    move-object v1, v3

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    .line 103
    goto :goto_1

    :cond_1
    move-object v1, v3

    move-object v2, v4

    .line 105
    goto :goto_1

    .line 110
    :cond_2
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    if-nez v2, :cond_4

    .line 111
    :cond_3
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 115
    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [Lp;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 117
    invoke-static {v0}, Lp;->a([Lp;)V

    .line 120
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 121
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 122
    const/4 v3, 0x2

    aget-object v3, v0, v3

    .line 126
    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v4, v5

    .line 144
    :goto_2
    invoke-direct {p0, v3, v4}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v0

    invoke-virtual {v0}, Lcj;->a()I

    move-result v0

    invoke-direct {p0, v2, v4}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v5

    invoke-virtual {v5}, Lcj;->a()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    and-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 148
    add-int/lit8 v0, v0, 0x1

    .line 150
    :cond_5
    add-int/lit8 v5, v0, 0x2

    move-object v0, p0

    .line 153
    invoke-direct/range {v0 .. v5}, Lch;->a(Lp;Lp;Lp;Lp;I)Lp;

    move-result-object v8

    .line 154
    if-nez v8, :cond_6

    move-object v8, v4

    .line 159
    :cond_6
    invoke-direct {p0, v3, v8}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v0

    invoke-virtual {v0}, Lcj;->a()I

    move-result v0

    invoke-direct {p0, v2, v8}, Lch;->a(Lp;Lp;)Lcj;

    move-result-object v4

    invoke-virtual {v4}, Lcj;->a()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 161
    add-int/lit8 v9, v0, 0x1

    .line 162
    and-int/lit8 v0, v9, 0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_7

    .line 163
    add-int/lit8 v9, v9, 0x1

    .line 166
    :cond_7
    iget-object v4, p0, Lch;->a:Lbe;

    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    invoke-static/range {v4 .. v9}, Lch;->a(Lbe;Lp;Lp;Lp;Lp;I)Lbe;

    move-result-object v0

    .line 168
    new-instance v4, Lbl;

    const/4 v5, 0x4

    new-array v5, v5, [Lp;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v1, 0x2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object v8, v5, v1

    invoke-direct {v4, v0, v5}, Lbl;-><init>(Lbe;[Lp;)V

    return-object v4

    .line 128
    :cond_8
    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move-object v4, v6

    .line 129
    goto :goto_2

    .line 130
    :cond_9
    invoke-virtual {v9, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object v4, v7

    .line 131
    goto :goto_2

    :cond_a
    move-object v4, v8

    .line 133
    goto :goto_2
.end method
