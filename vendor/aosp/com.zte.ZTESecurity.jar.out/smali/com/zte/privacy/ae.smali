.class Lcom/zte/privacy/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/aE;


# instance fields
.field private dK:Lcom/zte/privacy/o;

.field private dL:Lcom/zte/privacy/B;

.field private kE:Z

.field private kF:Lcom/zte/privacy/az;

.field kv:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/zte/privacy/B;Lcom/zte/privacy/o;ZLcom/zte/privacy/az;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    iput-object p1, p0, Lcom/zte/privacy/ae;->dL:Lcom/zte/privacy/B;

    iput-object p2, p0, Lcom/zte/privacy/ae;->dK:Lcom/zte/privacy/o;

    iput-object p4, p0, Lcom/zte/privacy/ae;->kF:Lcom/zte/privacy/az;

    iput-boolean p3, p0, Lcom/zte/privacy/ae;->kE:Z

    return-void
.end method

.method private static a(Lcom/zte/privacy/o;)J
    .locals 5

    invoke-interface {p0}, Lcom/zte/privacy/o;->ad()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p0}, Lcom/zte/privacy/o;->ad()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-interface {p0}, Lcom/zte/privacy/o;->ad()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-interface {p0}, Lcom/zte/privacy/o;->ad()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private a(Lcom/zte/privacy/o;ILcom/zte/privacy/ab;)V
    .locals 15

    iget-object v1, p0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->getCurrentPosition()I

    move-result v12

    invoke-direct/range {p0 .. p2}, Lcom/zte/privacy/ae;->e(Lcom/zte/privacy/o;I)V

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v2, v12

    div-int/lit8 v2, v2, 0x2

    move v3, v2

    :goto_1
    move/from16 v0, p2

    if-ge v3, v0, :cond_a

    const/4 v2, 0x0

    :goto_2
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v3, :cond_2

    move-object v10, v1

    move v1, v2

    :goto_3
    if-nez v1, :cond_0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/zte/privacy/ab;->K(I)V

    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v2, v1, 0xff

    const/16 v4, 0xff

    if-eq v2, v4, :cond_c

    :goto_4
    iget-object v1, p0, Lcom/zte/privacy/ae;->dL:Lcom/zte/privacy/B;

    iget v1, v1, Lcom/zte/privacy/B;->gJ:I

    invoke-static {v2, v1}, Lcom/zte/privacy/OpcodeFormat;->j(II)Lcom/zte/privacy/OpcodeFormat;

    move-result-object v1

    sget-object v4, Lcom/zte/privacy/af;->kG:[I

    invoke-virtual {v1}, Lcom/zte/privacy/OpcodeFormat;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    :goto_5
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v1, v12

    div-int/lit8 v1, v1, 0x2

    move v3, v1

    move-object v1, v10

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ne v4, v3, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/zte/privacy/ab;->K(I)V

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_6
    move-object v10, v1

    move v1, v2

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_6

    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/zte/privacy/ab;->K(I)V

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :pswitch_0
    int-to-byte v1, v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1}, Lcom/zte/privacy/ab;->p(II)V

    goto :goto_5

    :pswitch_1
    packed-switch v2, :pswitch_data_1

    :goto_7
    :pswitch_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/zte/privacy/ab;->L(I)V

    goto :goto_5

    :pswitch_3
    packed-switch v3, :pswitch_data_2

    goto :goto_7

    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/zte/privacy/o;->skip(I)V

    goto :goto_7

    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/zte/privacy/o;->skip(I)V

    goto :goto_7

    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ab()I

    move-result v3

    mul-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/zte/privacy/o;->skip(I)V

    goto :goto_7

    :pswitch_7
    int-to-byte v1, v3

    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1, v3}, Lcom/zte/privacy/ab;->g(III)V

    goto/16 :goto_5

    :pswitch_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Lcom/zte/privacy/ab;->q(II)V

    goto/16 :goto_5

    :pswitch_9
    and-int/lit8 v1, v3, 0xf

    shr-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1, v3}, Lcom/zte/privacy/ab;->j(III)V

    goto/16 :goto_5

    :pswitch_a
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->k(III)V

    goto/16 :goto_5

    :pswitch_b
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Z()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1}, Lcom/zte/privacy/ab;->p(II)V

    goto/16 :goto_5

    :pswitch_c
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->d(III)V

    goto/16 :goto_5

    :pswitch_d
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Z()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->e(III)V

    goto/16 :goto_5

    :pswitch_e
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Z()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->h(III)V

    goto/16 :goto_5

    :pswitch_f
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Z()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->i(III)V

    goto/16 :goto_5

    :pswitch_10
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Z()I

    move-result v1

    and-int/lit16 v4, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/zte/privacy/ab;->d(IIII)V

    goto/16 :goto_5

    :pswitch_11
    and-int/lit8 v1, v3, 0xf

    shr-int/lit8 v3, v3, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/zte/privacy/ab;->e(IIII)V

    goto/16 :goto_5

    :pswitch_12
    and-int/lit8 v1, v3, 0xf

    shr-int/lit8 v3, v3, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/zte/privacy/ab;->j(IIII)V

    goto/16 :goto_5

    :pswitch_13
    and-int/lit8 v1, v3, 0xf

    shr-int/lit8 v3, v3, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Z()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/zte/privacy/ab;->f(IIII)V

    goto/16 :goto_5

    :pswitch_14
    and-int/lit8 v1, v3, 0xf

    shr-int/lit8 v3, v3, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Z()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/zte/privacy/ab;->g(IIII)V

    goto/16 :goto_5

    :pswitch_15
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->j(III)V

    goto/16 :goto_5

    :pswitch_16
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    and-int/lit16 v4, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/zte/privacy/ab;->h(IIII)V

    goto/16 :goto_5

    :pswitch_17
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/ae;->c(Lcom/zte/privacy/o;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1}, Lcom/zte/privacy/ab;->p(II)V

    goto/16 :goto_5

    :pswitch_18
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/ae;->c(Lcom/zte/privacy/o;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->d(III)V

    goto/16 :goto_5

    :pswitch_19
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/ae;->b(Lcom/zte/privacy/o;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->f(III)V

    goto/16 :goto_5

    :pswitch_1a
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/ae;->b(Lcom/zte/privacy/o;)I

    move-result v1

    sparse-switch v2, :sswitch_data_0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->i(III)V

    goto/16 :goto_5

    :sswitch_0
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->push()V

    add-int/lit8 v1, v1, -0x3

    mul-int/lit8 v1, v1, 0x2

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/zte/privacy/o;->skip(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v2, :sswitch_data_1

    :goto_8
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Q()V

    goto/16 :goto_5

    :sswitch_1
    const/4 v1, 0x2

    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    new-array v5, v4, [I

    new-array v6, v4, [I

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v4, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->X()I

    move-result v7

    aput v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_6
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v4, :cond_7

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->X()I

    move-result v7

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_7
    const/4 v4, 0x3

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lcom/zte/privacy/ab;->a(III[I[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Q()V

    throw v1

    :sswitch_2
    const/4 v1, 0x2

    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->X()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    add-int v6, v1, v4

    new-array v7, v4, [I

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v4, :cond_8

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->X()I

    move-result v8

    aput v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_8
    const/4 v4, 0x3

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v7}, Lcom/zte/privacy/ab;->a(IIIII[I)V

    goto :goto_8

    :sswitch_3
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ab()I

    move-result v5

    new-array v6, v5, [Ljava/lang/Object;

    packed-switch v4, :pswitch_data_3

    :cond_9
    :pswitch_1b
    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lcom/zte/privacy/ab;->a(IIII[Ljava/lang/Object;)V

    goto :goto_8

    :pswitch_1c
    const/4 v1, 0x0

    :goto_c
    if-ge v1, v5, :cond_9

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->W()I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :pswitch_1d
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v5, :cond_9

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Z()I

    move-result v7

    int-to-short v7, v7

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :pswitch_1e
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v5, :cond_9

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->X()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :pswitch_1f
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v5, :cond_9

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->X()I

    move-result v7

    int-to-long v7, v7

    const-wide v13, 0xffffffffL

    and-long/2addr v7, v13

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->X()I

    move-result v9

    int-to-long v13, v9

    const/16 v9, 0x20

    shl-long/2addr v13, v9

    or-long/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :pswitch_20
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->aa()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->Z()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/zte/privacy/ab;->f(IIII)V

    goto/16 :goto_5

    :pswitch_21
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v1, v3}, Lcom/zte/privacy/ab;->j(III)V

    goto/16 :goto_5

    :pswitch_22
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    and-int/lit16 v3, v1, 0xff

    shr-int/lit8 v1, v1, 0x8

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/zte/privacy/ab;->h(IIII)V

    goto/16 :goto_5

    :pswitch_23
    and-int/lit8 v8, v3, 0xf

    shr-int/lit8 v3, v3, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    and-int/lit8 v4, v1, 0xf

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    shr-int/lit8 v6, v1, 0x8

    and-int/lit8 v6, v6, 0xf

    shr-int/lit8 v7, v1, 0xc

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v9}, Lcom/zte/privacy/ab;->a(IIIIIIII)V

    goto/16 :goto_5

    :pswitch_24
    and-int/lit8 v8, v3, 0xf

    shr-int/lit8 v3, v3, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    and-int/lit8 v4, v1, 0xf

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    shr-int/lit8 v6, v1, 0x8

    and-int/lit8 v6, v6, 0xf

    shr-int/lit8 v7, v1, 0xc

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v9}, Lcom/zte/privacy/ab;->b(IIIIIIII)V

    goto/16 :goto_5

    :pswitch_25
    and-int/lit8 v8, v3, 0xf

    shr-int/lit8 v3, v3, 0x4

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    and-int/lit8 v4, v1, 0xf

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    shr-int/lit8 v6, v1, 0x8

    and-int/lit8 v6, v6, 0xf

    shr-int/lit8 v7, v1, 0xc

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v9}, Lcom/zte/privacy/ab;->c(IIIIIIII)V

    goto/16 :goto_5

    :pswitch_26
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/zte/privacy/ab;->i(IIII)V

    goto/16 :goto_5

    :pswitch_27
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/zte/privacy/ab;->l(IIII)V

    goto/16 :goto_5

    :pswitch_28
    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/zte/privacy/ab;->k(IIII)V

    goto/16 :goto_5

    :pswitch_29
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/ae;->c(Lcom/zte/privacy/o;)I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->l(III)V

    goto/16 :goto_5

    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/ae;->c(Lcom/zte/privacy/o;)I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1}, Lcom/zte/privacy/ab;->d(III)V

    goto/16 :goto_5

    :pswitch_2b
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/ae;->a(Lcom/zte/privacy/o;)J

    move-result-wide v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/zte/privacy/ab;->a(IIJ)V

    goto/16 :goto_5

    :pswitch_2c
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/ae;->c(Lcom/zte/privacy/o;)I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/zte/privacy/ab;->e(IIII)V

    goto/16 :goto_5

    :pswitch_2d
    invoke-static/range {p1 .. p1}, Lcom/zte/privacy/ae;->c(Lcom/zte/privacy/o;)I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/o;->ad()I

    move-result v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/zte/privacy/ab;->i(IIII)V

    goto/16 :goto_5

    :cond_a
    :goto_10
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/zte/privacy/ab;->K(I)V

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_10

    :cond_b
    return-void

    :cond_c
    move v2, v1

    goto/16 :goto_4

    :cond_d
    move-object v10, v1

    move v1, v2

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x26 -> :sswitch_3
        0x2b -> :sswitch_2
        0x2c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1d
        :pswitch_1b
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1f
    .end packed-switch
.end method

.method private a(Lcom/zte/privacy/o;Lcom/zte/privacy/A;II)V
    .locals 13

    invoke-interface {p1}, Lcom/zte/privacy/o;->getCurrentPosition()I

    move-result v1

    mul-int/lit8 v2, p3, 0x8

    add-int v6, v1, v2

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    move/from16 v0, p3

    if-ge v5, v0, :cond_3

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v7

    invoke-interface {p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    invoke-interface {p1}, Lcom/zte/privacy/o;->ad()I

    move-result v2

    move/from16 v0, p4

    if-le v7, v0, :cond_0

    :goto_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v7}, Lcom/zte/privacy/ae;->M(I)V

    add-int v8, v7, v1

    invoke-virtual {p0, v8}, Lcom/zte/privacy/ae;->M(I)V

    add-int v1, v6, v2

    invoke-interface {p1, v1}, Lcom/zte/privacy/o;->r(I)V

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Lcom/zte/privacy/o;->Y()J

    move-result-wide v3

    long-to-int v1, v3

    if-gtz v1, :cond_4

    neg-int v2, v1

    add-int/lit8 v1, v2, 0x1

    const/4 v3, 0x1

    move v4, v3

    move v3, v2

    :goto_2
    new-array v9, v1, [Lcom/zte/privacy/C;

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_1

    invoke-interface {p1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v11

    long-to-int v1, v11

    invoke-interface {p1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-virtual {p0, v11}, Lcom/zte/privacy/ae;->M(I)V

    iget-object v12, p0, Lcom/zte/privacy/ae;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v12, v1}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v2

    iget-object v1, p0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/C;

    aput-object v1, v9, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {p1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/zte/privacy/ae;->M(I)V

    iget-object v2, p0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/C;

    aput-object v1, v9, v3

    :cond_2
    iget-object v1, p0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/privacy/C;

    iget-object v2, p0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/privacy/C;

    invoke-interface {p2, v1, v2, v9, v10}, Lcom/zte/privacy/A;->a(Lcom/zte/privacy/C;Lcom/zte/privacy/C;[Lcom/zte/privacy/C;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/zte/privacy/o;->Q()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {p1}, Lcom/zte/privacy/o;->Q()V

    throw v1

    :cond_3
    return-void

    :cond_4
    move v3, v1

    move v4, v2

    goto :goto_2
.end method

.method private static b(Lcom/zte/privacy/o;)I
    .locals 2

    invoke-interface {p0}, Lcom/zte/privacy/o;->ad()I

    move-result v0

    invoke-interface {p0}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static c(Lcom/zte/privacy/o;)I
    .locals 2

    invoke-interface {p0}, Lcom/zte/privacy/o;->ad()I

    move-result v0

    invoke-interface {p0}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private d(Lcom/zte/privacy/o;I)V
    .locals 7

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/zte/privacy/o;->getCurrentPosition()I

    move-result v4

    invoke-direct {p0, p1, p2}, Lcom/zte/privacy/ae;->e(Lcom/zte/privacy/o;I)V

    invoke-interface {p1}, Lcom/zte/privacy/o;->getCurrentPosition()I

    move-result v0

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_2

    invoke-interface {p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v0, v1, 0xff

    const/16 v6, 0xff

    if-eq v0, v6, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/zte/privacy/ae;->dL:Lcom/zte/privacy/B;

    iget v1, v1, Lcom/zte/privacy/B;->gJ:I

    invoke-static {v0, v1}, Lcom/zte/privacy/OpcodeFormat;->j(II)Lcom/zte/privacy/OpcodeFormat;

    move-result-object v1

    sparse-switch v0, :sswitch_data_0

    :try_start_0
    invoke-virtual {v1}, Lcom/zte/privacy/OpcodeFormat;->getSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :pswitch_0
    invoke-interface {p1}, Lcom/zte/privacy/o;->getCurrentPosition()I

    move-result v0

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    move v3, v0

    goto :goto_0

    :sswitch_0
    int-to-byte v0, v5

    add-int/2addr v0, v3

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/zte/privacy/ae;->M(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zte/privacy/DexException;

    const-string v4, "while scan for label, Posotion :%04x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v1, v0, v3, v2}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :sswitch_1
    :try_start_2
    invoke-interface {p1}, Lcom/zte/privacy/o;->Z()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/zte/privacy/ae;->M(I)V

    goto :goto_2

    :sswitch_2
    invoke-static {p1}, Lcom/zte/privacy/ae;->b(Lcom/zte/privacy/o;)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/zte/privacy/ae;->M(I)V

    goto :goto_2

    :sswitch_3
    invoke-static {p1}, Lcom/zte/privacy/ae;->b(Lcom/zte/privacy/o;)I

    move-result v1

    invoke-interface {p1}, Lcom/zte/privacy/o;->push()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, -0x3

    mul-int/lit8 v1, v1, 0x2

    :try_start_3
    invoke-interface {p1, v1}, Lcom/zte/privacy/o;->skip(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_3
    :try_start_4
    invoke-interface {p1}, Lcom/zte/privacy/o;->Q()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x2

    :try_start_5
    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface {p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    mul-int/lit8 v0, v1, 0x4

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V

    move v0, v2

    :goto_4
    if-ge v0, v1, :cond_0

    invoke-interface {p1}, Lcom/zte/privacy/o;->X()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/zte/privacy/ae;->M(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_0
    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p0, v0}, Lcom/zte/privacy/ae;->M(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_6
    invoke-interface {p1}, Lcom/zte/privacy/o;->Q()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :pswitch_2
    const/4 v0, 0x2

    :try_start_7
    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface {p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V

    move v0, v2

    :goto_5
    if-ge v0, v1, :cond_1

    invoke-interface {p1}, Lcom/zte/privacy/o;->X()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/zte/privacy/ae;->M(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1
    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p0, v0}, Lcom/zte/privacy/ae;->M(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :sswitch_4
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_3
    :try_start_8
    invoke-interface {p1}, Lcom/zte/privacy/o;->ad()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V

    goto/16 :goto_2

    :pswitch_4
    invoke-interface {p1}, Lcom/zte/privacy/o;->ad()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V

    goto/16 :goto_2

    :pswitch_5
    invoke-interface {p1}, Lcom/zte/privacy/o;->ad()I

    move-result v0

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, -0x2

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_2

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x28 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2a -> :sswitch_2
        0x2b -> :sswitch_3
        0x2c -> :sswitch_3
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x39 -> :sswitch_1
        0x3a -> :sswitch_1
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x3d -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private e(Lcom/zte/privacy/o;I)V
    .locals 5

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/zte/privacy/o;->getCurrentPosition()I

    move-result v2

    invoke-interface {p1}, Lcom/zte/privacy/o;->ad()I

    move-result v1

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v0, v1, 0xff

    const/16 v4, 0xff

    if-eq v0, v4, :cond_2

    :goto_1
    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    and-int/lit8 v0, v3, 0xf

    shr-int/lit8 v1, v3, 0x4

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/zte/privacy/o;->Z()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x4

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p1, v2}, Lcom/zte/privacy/o;->h(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method M(I)V
    .locals 3

    iget-object v0, p0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/zte/privacy/C;

    invoke-direct {v2, p1}, Lcom/zte/privacy/C;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Lcom/zte/privacy/A;I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/privacy/ae;->dK:Lcom/zte/privacy/o;

    invoke-interface {v13}, Lcom/zte/privacy/o;->ad()I

    move-result v14

    invoke-interface {v13}, Lcom/zte/privacy/o;->ad()I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v13, v4}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface {v13}, Lcom/zte/privacy/o;->ad()I

    move-result v15

    invoke-interface {v13}, Lcom/zte/privacy/o;->ab()I

    move-result v16

    invoke-interface {v13}, Lcom/zte/privacy/o;->ab()I

    move-result v17

    new-array v0, v14, [Lcom/zte/privacy/ad;

    move-object/from16 v18, v0

    sub-int v4, v14, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/privacy/ae;->kF:Lcom/zte/privacy/az;

    invoke-virtual {v3}, Lcom/zte/privacy/az;->dp()[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/zte/privacy/ae;->kE:Z

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    array-length v3, v0

    add-int/lit8 v3, v3, 0x1

    new-array v10, v3, [I

    new-instance v3, Lcom/zte/privacy/ad;

    const/4 v5, 0x0

    const/4 v6, -0x1

    const-string v7, "this"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zte/privacy/ae;->kF:Lcom/zte/privacy/az;

    invoke-virtual {v8}, Lcom/zte/privacy/az;->cg()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/zte/privacy/ad;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v18, v4

    const/4 v5, 0x0

    add-int/lit8 v3, v4, 0x1

    aput v4, v10, v5

    const/4 v4, 0x1

    move/from16 v21, v3

    move v3, v4

    move/from16 v4, v21

    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/4 v5, 0x0

    move v11, v5

    move v12, v3

    :goto_1
    move/from16 v0, v20

    if-ge v11, v0, :cond_3

    aget-object v8, v19, v11

    new-instance v3, Lcom/zte/privacy/ad;

    const/4 v5, 0x0

    const/4 v6, -0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arg"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/zte/privacy/ad;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v18, v4

    add-int/lit8 v5, v12, 0x1

    add-int/lit8 v3, v4, 0x1

    aput v4, v10, v12

    const-string v4, "D"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "J"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move v12, v5

    move v4, v3

    goto :goto_1

    :cond_2
    move-object/from16 v0, v19

    array-length v3, v0

    new-array v5, v3, [I

    const/4 v3, 0x0

    move-object v10, v5

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    invoke-interface {v0, v14, v10}, Lcom/zte/privacy/A;->a(I[I)V

    if-lez v15, :cond_5

    invoke-interface {v13}, Lcom/zte/privacy/o;->push()V

    mul-int/lit8 v3, v17, 0x2

    :try_start_0
    invoke-interface {v13, v3}, Lcom/zte/privacy/o;->skip(I)V

    and-int/lit8 v3, v17, 0x1

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-interface {v13, v3}, Lcom/zte/privacy/o;->skip(I)V

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v13, v1, v15, v2}, Lcom/zte/privacy/ae;->a(Lcom/zte/privacy/o;Lcom/zte/privacy/A;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v13}, Lcom/zte/privacy/o;->Q()V

    :cond_5
    if-eqz v16, :cond_6

    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_6

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lcom/zte/privacy/o;->r(I)V

    :try_start_1
    new-instance v3, Lcom/zte/privacy/p;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/ae;->dL:Lcom/zte/privacy/B;

    move-object v4, v13

    move/from16 v6, v17

    move-object/from16 v7, p0

    move-object/from16 v8, v18

    move-object v9, v10

    invoke-direct/range {v3 .. v9}, Lcom/zte/privacy/p;-><init>(Lcom/zte/privacy/o;Lcom/zte/privacy/B;ILcom/zte/privacy/ae;[Lcom/zte/privacy/ad;[I)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/zte/privacy/p;->a(Lcom/zte/privacy/A;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v13}, Lcom/zte/privacy/o;->Q()V

    :cond_6
    invoke-interface {v13}, Lcom/zte/privacy/o;->push()V

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v1}, Lcom/zte/privacy/ae;->d(Lcom/zte/privacy/o;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-interface {v13}, Lcom/zte/privacy/o;->Q()V

    new-instance v3, Lcom/zte/privacy/ab;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/privacy/ae;->dL:Lcom/zte/privacy/B;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-direct {v3, v4, v5, v0}, Lcom/zte/privacy/ab;-><init>(Lcom/zte/privacy/B;Ljava/util/Map;Lcom/zte/privacy/A;)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v13, v1, v3}, Lcom/zte/privacy/ae;->a(Lcom/zte/privacy/o;ILcom/zte/privacy/ab;)V

    invoke-interface/range {p1 .. p1}, Lcom/zte/privacy/A;->a()V

    return-void

    :catchall_0
    move-exception v3

    invoke-interface {v13}, Lcom/zte/privacy/o;->Q()V

    throw v3

    :catchall_1
    move-exception v3

    invoke-interface {v13}, Lcom/zte/privacy/o;->Q()V

    throw v3

    :catchall_2
    move-exception v3

    invoke-interface {v13}, Lcom/zte/privacy/o;->Q()V

    throw v3
.end method
