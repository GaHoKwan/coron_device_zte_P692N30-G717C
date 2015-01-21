.class public Lcom/ant/liao/e;
.super Ljava/lang/Thread;


# instance fields
.field private A:[I

.field private B:[B

.field private bgColor:I

.field private delay:I

.field private gA:I

.field private gB:I

.field private gC:Z

.field private gD:I

.field private gE:[S

.field private gF:[B

.field private gG:[B

.field private gH:Lcom/ant/liao/a;

.field private gI:I

.field private gJ:Lcom/ant/liao/f;

.field private gK:[B

.field private gg:Z

.field private gh:I

.field private gi:I

.field private gj:[I

.field private gk:[I

.field private gl:I

.field private gm:I

.field private gn:I

.field private go:Z

.field private gp:Z

.field private gq:I

.field private gr:I

.field private gs:I

.field private gt:I

.field private gu:I

.field private gv:Landroid/graphics/Bitmap;

.field private gw:Lcom/ant/liao/a;

.field private gx:Z

.field private gy:[B

.field private gz:I

.field public height:I

.field private in:Ljava/io/InputStream;

.field private q:Landroid/graphics/Bitmap;

.field private s:I

.field public status:I

.field private t:I

.field private u:I

.field private v:I

.field public width:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/ant/liao/f;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/ant/liao/e;->gi:I

    iput-object v2, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    iput-boolean v1, p0, Lcom/ant/liao/e;->gx:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ant/liao/e;->gy:[B

    iput v1, p0, Lcom/ant/liao/e;->gz:I

    iput v1, p0, Lcom/ant/liao/e;->gA:I

    iput v1, p0, Lcom/ant/liao/e;->gB:I

    iput-boolean v1, p0, Lcom/ant/liao/e;->gC:Z

    iput v1, p0, Lcom/ant/liao/e;->delay:I

    iput-object v2, p0, Lcom/ant/liao/e;->gJ:Lcom/ant/liao/f;

    iput-object v2, p0, Lcom/ant/liao/e;->gK:[B

    iput-object p1, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/ant/liao/e;->gJ:Lcom/ant/liao/f;

    return-void
.end method

.method private aK()I
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/ant/liao/e;->gK:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/e;->gK:[B

    invoke-direct {p0}, Lcom/ant/liao/e;->aL()I

    move-result v0

    return v0
.end method

.method private aL()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/ant/liao/e;->init()V

    iget-object v0, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ant/liao/e;->aR()V

    invoke-direct {p0}, Lcom/ant/liao/e;->aN()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ant/liao/e;->aP()V

    iget v0, p0, Lcom/ant/liao/e;->gI:I

    if-gez v0, :cond_1

    iput v3, p0, Lcom/ant/liao/e;->status:I

    iget-object v0, p0, Lcom/ant/liao/e;->gJ:Lcom/ant/liao/f;

    invoke-interface {v0, v2, v1}, Lcom/ant/liao/f;->a(ZI)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/ant/liao/e;->status:I

    return v0

    :cond_1
    iput v1, p0, Lcom/ant/liao/e;->status:I

    iget-object v0, p0, Lcom/ant/liao/e;->gJ:Lcom/ant/liao/f;

    invoke-interface {v0, v3, v1}, Lcom/ant/liao/f;->a(ZI)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/ant/liao/e;->status:I

    iget-object v0, p0, Lcom/ant/liao/e;->gJ:Lcom/ant/liao/f;

    invoke-interface {v0, v2, v1}, Lcom/ant/liao/f;->a(ZI)V

    goto :goto_1
.end method

.method private aM()V
    .locals 23

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ant/liao/e;->u:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ant/liao/e;->v:I

    mul-int v16, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ant/liao/e;->B:[B

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ant/liao/e;->B:[B

    array-length v1, v1

    move/from16 v0, v16

    if-ge v1, v0, :cond_1

    :cond_0
    move/from16 v0, v16

    new-array v1, v0, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ant/liao/e;->B:[B

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ant/liao/e;->gE:[S

    if-nez v1, :cond_2

    const/16 v1, 0x1000

    new-array v1, v1, [S

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ant/liao/e;->gE:[S

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ant/liao/e;->gF:[B

    if-nez v1, :cond_3

    const/16 v1, 0x1000

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ant/liao/e;->gF:[B

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ant/liao/e;->gG:[B

    if-nez v1, :cond_4

    const/16 v1, 0x1001

    new-array v1, v1, [B

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ant/liao/e;->gG:[B

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/ant/liao/e;->read()I

    move-result v17

    const/4 v1, 0x1

    shl-int v18, v1, v17

    add-int/lit8 v19, v18, 0x1

    add-int/lit8 v11, v18, 0x2

    add-int/lit8 v3, v17, 0x1

    const/4 v1, 0x1

    shl-int/2addr v1, v3

    add-int/lit8 v4, v1, -0x1

    const/4 v1, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v1, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/e;->gE:[S

    const/4 v5, 0x0

    aput-short v5, v2, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/e;->gF:[B

    int-to-byte v5, v1

    aput-byte v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    const/4 v1, 0x0

    move v5, v12

    move v6, v12

    move v7, v12

    move v14, v1

    move v2, v12

    move v8, v12

    move v10, v15

    move v1, v12

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    if-nez v5, :cond_10

    if-ge v8, v3, :cond_9

    if-nez v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/ant/liao/e;->aO()I

    move-result v2

    if-gtz v2, :cond_7

    :cond_6
    move v1, v12

    :goto_2
    move/from16 v0, v16

    if-ge v1, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ant/liao/e;->B:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ant/liao/e;->gy:[B

    aget-byte v9, v9, v1

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v8

    add-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_9
    and-int v9, v7, v4

    shr-int/2addr v7, v3

    sub-int/2addr v8, v3

    if-gt v9, v11, :cond_6

    move/from16 v0, v19

    if-eq v9, v0, :cond_6

    move/from16 v0, v18

    if-ne v9, v0, :cond_a

    add-int/lit8 v3, v17, 0x1

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v11, v18, 0x2

    move v10, v15

    goto :goto_1

    :cond_a
    if-ne v10, v15, :cond_b

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ant/liao/e;->gG:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ant/liao/e;->gF:[B

    aget-byte v13, v13, v9

    aput-byte v13, v10, v5

    move v5, v6

    move v10, v9

    move v6, v9

    goto :goto_1

    :cond_b
    if-ne v9, v11, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/e;->gG:[B

    move-object/from16 v20, v0

    add-int/lit8 v13, v5, 0x1

    int-to-byte v6, v6

    aput-byte v6, v20, v5

    move v6, v10

    :goto_3
    move/from16 v0, v18

    if-le v6, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/e;->gG:[B

    move-object/from16 v20, v0

    add-int/lit8 v5, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/e;->gF:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v6

    aput-byte v21, v20, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ant/liao/e;->gE:[S

    aget-short v6, v13, v6

    move v13, v5

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ant/liao/e;->gF:[B

    aget-byte v5, v5, v6

    and-int/lit16 v6, v5, 0xff

    const/16 v5, 0x1000

    if-ge v11, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/e;->gG:[B

    move-object/from16 v20, v0

    add-int/lit8 v5, v13, 0x1

    int-to-byte v0, v6

    move/from16 v21, v0

    aput-byte v21, v20, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ant/liao/e;->gE:[S

    int-to-short v10, v10

    aput-short v10, v13, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/ant/liao/e;->gF:[B

    int-to-byte v13, v6

    aput-byte v13, v10, v11

    add-int/lit8 v10, v11, 0x1

    and-int v11, v10, v4

    if-nez v11, :cond_d

    const/16 v11, 0x1000

    if-ge v10, v11, :cond_d

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v10

    :cond_d
    move/from16 v22, v5

    move v5, v7

    move v7, v9

    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move/from16 v3, v22

    :goto_4
    add-int/lit8 v11, v3, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ant/liao/e;->B:[B

    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ant/liao/e;->gG:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v11

    aput-byte v20, v13, v12

    add-int/lit8 v12, v14, 0x1

    move v14, v12

    move v12, v3

    move v3, v8

    move v8, v6

    move v6, v4

    move v4, v9

    move/from16 v22, v7

    move v7, v5

    move v5, v11

    move v11, v10

    move/from16 v10, v22

    goto/16 :goto_1

    :cond_e
    return-void

    :cond_f
    move v13, v5

    move v6, v9

    goto/16 :goto_3

    :cond_10
    move v9, v4

    move v4, v6

    move v6, v8

    move v8, v3

    move v3, v5

    move v5, v7

    move v7, v10

    move v10, v11

    goto :goto_4
.end method

.method private aN()Z
    .locals 1

    iget v0, p0, Lcom/ant/liao/e;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aO()I
    .locals 4

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/e;->gz:I

    const/4 v0, 0x0

    iget v1, p0, Lcom/ant/liao/e;->gz:I

    if-lez v1, :cond_1

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/ant/liao/e;->gz:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/ant/liao/e;->gy:[B

    iget v3, p0, Lcom/ant/liao/e;->gz:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    iget v1, p0, Lcom/ant/liao/e;->gz:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/ant/liao/e;->status:I

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private aP()V
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    :sswitch_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/ant/liao/e;->aN()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iput v1, p0, Lcom/ant/liao/e;->status:I

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/ant/liao/e;->aS()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    invoke-direct {p0}, Lcom/ant/liao/e;->aX()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/ant/liao/e;->aQ()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/ant/liao/e;->aO()I

    const-string v2, ""

    move-object v4, v2

    move v2, v3

    :goto_1
    const/16 v5, 0xb

    if-ge v2, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ant/liao/e;->gy:[B

    aget-byte v5, v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string v2, "NETSCAPE2.0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/ant/liao/e;->aU()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/ant/liao/e;->aX()V

    goto :goto_0

    :sswitch_5
    move v0, v1

    goto :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private aQ()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v1

    and-int/lit8 v2, v1, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/ant/liao/e;->gA:I

    iget v2, p0, Lcom/ant/liao/e;->gA:I

    if-nez v2, :cond_0

    iput v0, p0, Lcom/ant/liao/e;->gA:I

    :cond_0
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/ant/liao/e;->gC:Z

    invoke-direct {p0}, Lcom/ant/liao/e;->aV()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/ant/liao/e;->delay:I

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/e;->gD:I

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aR()V
    .locals 3

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Lcom/ant/liao/e;->status:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/ant/liao/e;->aT()V

    iget-boolean v0, p0, Lcom/ant/liao/e;->gg:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/ant/liao/e;->aN()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ant/liao/e;->gh:I

    invoke-direct {p0, v0}, Lcom/ant/liao/e;->l(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ant/liao/e;->A:[I

    iget-object v0, p0, Lcom/ant/liao/e;->A:[I

    iget v1, p0, Lcom/ant/liao/e;->gl:I

    aget v0, v0, v1

    iput v0, p0, Lcom/ant/liao/e;->bgColor:I

    goto :goto_1
.end method

.method private aS()V
    .locals 11

    const/4 v7, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ant/liao/e;->aV()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/e;->s:I

    invoke-direct {p0}, Lcom/ant/liao/e;->aV()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/e;->t:I

    invoke-direct {p0}, Lcom/ant/liao/e;->aV()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/e;->u:I

    invoke-direct {p0}, Lcom/ant/liao/e;->aV()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/e;->v:I

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v2

    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_3

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/ant/liao/e;->go:Z

    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_4

    move v0, v7

    :goto_1
    iput-boolean v0, p0, Lcom/ant/liao/e;->gp:Z

    const/4 v0, 0x2

    and-int/lit8 v2, v2, 0x7

    shl-int/2addr v0, v2

    iput v0, p0, Lcom/ant/liao/e;->gq:I

    iget-boolean v0, p0, Lcom/ant/liao/e;->go:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/ant/liao/e;->gq:I

    invoke-direct {p0, v0}, Lcom/ant/liao/e;->l(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ant/liao/e;->gj:[I

    iget-object v0, p0, Lcom/ant/liao/e;->gj:[I

    iput-object v0, p0, Lcom/ant/liao/e;->gk:[I

    :cond_0
    :goto_2
    iget-boolean v0, p0, Lcom/ant/liao/e;->gC:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/ant/liao/e;->gk:[I

    iget v2, p0, Lcom/ant/liao/e;->gD:I

    aget v0, v0, v2

    iget-object v2, p0, Lcom/ant/liao/e;->gk:[I

    iget v3, p0, Lcom/ant/liao/e;->gD:I

    aput v1, v2, v3

    move v8, v0

    :goto_3
    iget-object v0, p0, Lcom/ant/liao/e;->gk:[I

    if-nez v0, :cond_1

    iput v7, p0, Lcom/ant/liao/e;->status:I

    :cond_1
    invoke-direct {p0}, Lcom/ant/liao/e;->aN()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    :goto_4
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/ant/liao/e;->A:[I

    iput-object v0, p0, Lcom/ant/liao/e;->gk:[I

    iget v0, p0, Lcom/ant/liao/e;->gl:I

    iget v2, p0, Lcom/ant/liao/e;->gD:I

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/ant/liao/e;->bgColor:I

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/ant/liao/e;->aM()V

    invoke-direct {p0}, Lcom/ant/liao/e;->aX()V

    invoke-direct {p0}, Lcom/ant/liao/e;->aN()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/ant/liao/e;->gI:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ant/liao/e;->gI:I

    iget v0, p0, Lcom/ant/liao/e;->gI:I

    if-ne v0, v7, :cond_7

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Lcom/ant/liao/e;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_5
    sget-object v10, Lcom/ant/liao/GifView;->lock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_1
    sget-object v0, Lcom/ant/liao/a;->A:[I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/ant/liao/e;->A:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    sput-object v0, Lcom/ant/liao/a;->A:[I

    :cond_8
    iget-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    if-nez v0, :cond_a

    const-string v0, "GifView"

    const-string v1, "firstFrame start clone!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ant/liao/a;

    iget v1, p0, Lcom/ant/liao/e;->s:I

    iget v2, p0, Lcom/ant/liao/e;->t:I

    iget v3, p0, Lcom/ant/liao/e;->u:I

    iget v4, p0, Lcom/ant/liao/e;->v:I

    iget-object v5, p0, Lcom/ant/liao/e;->B:[B

    iget v6, p0, Lcom/ant/liao/e;->delay:I

    invoke-direct/range {v0 .. v6}, Lcom/ant/liao/a;-><init>(IIII[BI)V

    iput-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    const-string v0, "GifView"

    const-string v1, "firstFrame!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    iput-object v0, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    :goto_6
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p0, Lcom/ant/liao/e;->gC:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ant/liao/e;->gk:[I

    iget v1, p0, Lcom/ant/liao/e;->gD:I

    aput v8, v0, v1

    :cond_9
    invoke-direct {p0}, Lcom/ant/liao/e;->aW()V

    iget-object v0, p0, Lcom/ant/liao/e;->gJ:Lcom/ant/liao/f;

    iget v1, p0, Lcom/ant/liao/e;->gI:I

    invoke-interface {v0, v7, v1}, Lcom/ant/liao/f;->a(ZI)V

    const-string v0, "GifDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frameCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ant/liao/e;->gI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    :cond_a
    :try_start_2
    iget-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    move-object v9, v0

    :goto_7
    iget-object v0, v9, Lcom/ant/liao/a;->r:Lcom/ant/liao/a;

    if-eqz v0, :cond_b

    iget-object v0, v9, Lcom/ant/liao/a;->r:Lcom/ant/liao/a;

    move-object v9, v0

    goto :goto_7

    :cond_b
    new-instance v0, Lcom/ant/liao/a;

    iget v1, p0, Lcom/ant/liao/e;->s:I

    iget v2, p0, Lcom/ant/liao/e;->t:I

    iget v3, p0, Lcom/ant/liao/e;->u:I

    iget v4, p0, Lcom/ant/liao/e;->v:I

    iget-object v5, p0, Lcom/ant/liao/e;->B:[B

    iget v6, p0, Lcom/ant/liao/e;->delay:I

    invoke-direct/range {v0 .. v6}, Lcom/ant/liao/a;-><init>(IIII[BI)V

    iput-object v0, v9, Lcom/ant/liao/a;->r:Lcom/ant/liao/a;

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_c
    move v8, v1

    goto/16 :goto_3
.end method

.method private aT()V
    .locals 2

    invoke-direct {p0}, Lcom/ant/liao/e;->aV()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/e;->width:I

    invoke-direct {p0}, Lcom/ant/liao/e;->aV()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/e;->height:I

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v1

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ant/liao/e;->gg:Z

    const/4 v0, 0x2

    and-int/lit8 v1, v1, 0x7

    shl-int/2addr v0, v1

    iput v0, p0, Lcom/ant/liao/e;->gh:I

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/e;->gl:I

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v0

    iput v0, p0, Lcom/ant/liao/e;->gn:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aU()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/ant/liao/e;->aO()I

    iget-object v0, p0, Lcom/ant/liao/e;->gy:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/ant/liao/e;->gy:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/ant/liao/e;->gy:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcom/ant/liao/e;->gi:I

    :cond_1
    iget v0, p0, Lcom/ant/liao/e;->gz:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/ant/liao/e;->aN()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private aV()I
    .locals 2

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v0

    invoke-direct {p0}, Lcom/ant/liao/e;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private aW()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/ant/liao/e;->gA:I

    iput v0, p0, Lcom/ant/liao/e;->gB:I

    iget v0, p0, Lcom/ant/liao/e;->s:I

    iput v0, p0, Lcom/ant/liao/e;->gr:I

    iget v0, p0, Lcom/ant/liao/e;->t:I

    iput v0, p0, Lcom/ant/liao/e;->gs:I

    iget v0, p0, Lcom/ant/liao/e;->u:I

    iput v0, p0, Lcom/ant/liao/e;->gt:I

    iget v0, p0, Lcom/ant/liao/e;->v:I

    iput v0, p0, Lcom/ant/liao/e;->gu:I

    iget-object v0, p0, Lcom/ant/liao/e;->gv:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/ant/liao/e;->q:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/ant/liao/e;->bgColor:I

    iput v0, p0, Lcom/ant/liao/e;->gm:I

    iput v1, p0, Lcom/ant/liao/e;->gA:I

    iput-boolean v1, p0, Lcom/ant/liao/e;->gC:Z

    iput v1, p0, Lcom/ant/liao/e;->delay:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ant/liao/e;->gj:[I

    return-void
.end method

.method private aX()V
    .locals 1

    :cond_0
    invoke-direct {p0}, Lcom/ant/liao/e;->aO()I

    iget v0, p0, Lcom/ant/liao/e;->gz:I

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/ant/liao/e;->aN()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v1, p0, Lcom/ant/liao/e;->status:I

    iput v1, p0, Lcom/ant/liao/e;->gI:I

    iput-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    iput-object v0, p0, Lcom/ant/liao/e;->A:[I

    iput-object v0, p0, Lcom/ant/liao/e;->gj:[I

    return-void
.end method

.method private l(I)[I
    .locals 9

    const/4 v2, 0x0

    mul-int/lit8 v3, p1, 0x3

    const/4 v0, 0x0

    new-array v4, v3, [B

    :try_start_0
    iget-object v1, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-ge v1, v3, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/ant/liao/e;->status:I

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    new-array v0, v0, [I

    move v1, v2

    :goto_1
    if-ge v2, p1, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v5, v1, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v1, v4, v3

    and-int/lit16 v7, v1, 0xff

    add-int/lit8 v1, v6, 0x1

    aget-byte v3, v4, v6

    and-int/lit16 v6, v3, 0xff

    add-int/lit8 v3, v2, 0x1

    const/high16 v8, -0x100

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v0, v2

    move v2, v3

    goto :goto_1
.end method

.method private read()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    iput v1, p0, Lcom/ant/liao/e;->status:I

    goto :goto_0
.end method


# virtual methods
.method public aI()I
    .locals 1

    iget v0, p0, Lcom/ant/liao/e;->gI:I

    return v0
.end method

.method public aJ()Lcom/ant/liao/a;
    .locals 1

    iget-boolean v0, p0, Lcom/ant/liao/e;->gx:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ant/liao/e;->gx:Z

    iget-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ant/liao/e;->status:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    iget-object v0, v0, Lcom/ant/liao/a;->r:Lcom/ant/liao/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    iget-object v0, v0, Lcom/ant/liao/a;->r:Lcom/ant/liao/a;

    iput-object v0, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    iget-object v0, v0, Lcom/ant/liao/a;->r:Lcom/ant/liao/a;

    iput-object v0, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    iget-object v0, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    iput-object v0, p0, Lcom/ant/liao/e;->gw:Lcom/ant/liao/a;

    goto :goto_1
.end method

.method public free()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    sput-object v1, Lcom/ant/liao/a;->A:[I

    :goto_0
    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/ant/liao/a;->B:[B

    iget-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    iget-object v0, v0, Lcom/ant/liao/a;->r:Lcom/ant/liao/a;

    iput-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    iget-object v0, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v1, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    :cond_1
    iput-object v1, p0, Lcom/ant/liao/e;->gK:[B

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public j(I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ant/liao/e;->k(I)Lcom/ant/liao/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/ant/liao/a;->l()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public k(I)Lcom/ant/liao/a;
    .locals 4

    iget-object v1, p0, Lcom/ant/liao/e;->gH:Lcom/ant/liao/a;

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    if-eqz v0, :cond_1

    if-ne v1, p1, :cond_0

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, v0, Lcom/ant/liao/a;->r:Lcom/ant/liao/a;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public l()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ant/liao/e;->j(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ant/liao/e;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const-string v0, "GifView"

    const-string v1, "start decode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ant/liao/e;->aL()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ant/liao/e;->gK:[B

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ant/liao/e;->aK()I

    goto :goto_0
.end method
