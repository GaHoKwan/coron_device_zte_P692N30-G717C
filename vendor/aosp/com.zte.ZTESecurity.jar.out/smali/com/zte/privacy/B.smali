.class public Lcom/zte/privacy/B;
.super Ljava/lang/Object;


# static fields
.field public static final gC:I = 0x1

.field public static final gD:I = 0x4

.field public static final gE:I = 0x8

.field public static final gF:I = 0x10

.field private static final gL:Z = true

.field private static final gM:Ljava/nio/charset/Charset; = null

.field private static final gi:[B = null

.field private static final gj:[B = null

.field private static final gk:[B = null

.field private static final gl:[B = null

.field static final gm:I = 0x12345678

.field static final gn:I = 0x78563412

.field private static final go:I = 0xd

.field private static final gp:Ljava/util/logging/Logger;


# instance fields
.field private dK:Lcom/zte/privacy/o;

.field private gA:I

.field private gB:I

.field private final gG:Z

.field private gH:Lcom/zte/privacy/o;

.field private gI:I

.field gJ:I

.field private gK:Z

.field private gq:I

.field private gr:I

.field private gs:I

.field private gt:I

.field private gu:I

.field private gv:I

.field private gw:I

.field private gx:I

.field private gy:I

.field private gz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/privacy/B;->gi:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/privacy/B;->gj:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/privacy/B;->gk:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/zte/privacy/B;->gl:[B

    const-class v0, Lcom/zte/privacy/B;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/zte/privacy/B;->gp:Ljava/util/logging/Logger;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/zte/privacy/B;->gM:Ljava/nio/charset/Charset;

    return-void

    :array_0
    .array-data 0x1
        0x64t
        0x65t
        0x78t
    .end array-data

    :array_1
    .array-data 0x1
        0x64t
        0x65t
        0x79t
    .end array-data

    :array_2
    .array-data 0x1
        0x30t
        0x33t
        0x35t
    .end array-data

    :array_3
    .array-data 0x1
        0x30t
        0x33t
        0x36t
    .end array-data
.end method

.method public constructor <init>(Lcom/zte/privacy/o;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    iput v0, p0, Lcom/zte/privacy/B;->gJ:I

    iput-boolean v2, p0, Lcom/zte/privacy/B;->gK:Z

    invoke-interface {p1, v2}, Lcom/zte/privacy/o;->h(I)V

    invoke-interface {p1, v4}, Lcom/zte/privacy/o;->s(I)[B

    move-result-object v0

    sget-object v1, Lcom/zte/privacy/B;->gi:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/zte/privacy/B;->gG:Z

    :goto_0
    invoke-interface {p1, v3}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface {p1, v4}, Lcom/zte/privacy/o;->s(I)[B

    move-result-object v0

    sget-object v1, Lcom/zte/privacy/B;->gk:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/zte/privacy/B;->gl:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/zte/privacy/DexException;

    const-string v1, "not support version."

    invoke-direct {v0, v1}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/zte/privacy/B;->gj:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/zte/privacy/B;->gG:Z

    iput-object p1, p0, Lcom/zte/privacy/B;->gH:Lcom/zte/privacy/o;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zte/privacy/DexException;

    const-string v1, "not support magic."

    invoke-direct {v0, v1}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p1, v3}, Lcom/zte/privacy/o;->skip(I)V

    iget-boolean v0, p0, Lcom/zte/privacy/B;->gG:Z

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/zte/privacy/o;->X()I

    move-result v1

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface {p1}, Lcom/zte/privacy/o;->X()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gI:I

    new-instance v0, Lcom/zte/privacy/K;

    invoke-direct {v0, p1, v1}, Lcom/zte/privacy/K;-><init>(Lcom/zte/privacy/o;I)V

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/zte/privacy/o;->skip(I)V

    move-object p1, v0

    :cond_3
    const/16 v0, 0x20

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    const v1, 0x12345678

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/zte/privacy/DexException;

    const-string v1, "not support endian_tag"

    invoke-direct {v0, v1}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p1, p0, Lcom/zte/privacy/B;->dK:Lcom/zte/privacy/o;

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gz:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gy:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gB:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gA:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gx:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gw:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gt:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gs:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gv:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gu:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gr:I

    invoke-interface {p1}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    iput v0, p0, Lcom/zte/privacy/B;->gq:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-static {p1}, Lcom/zte/ZTESecurity/j;->f(Ljava/io/File;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/privacy/B;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lcom/zte/ZTESecurity/e;->e(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/privacy/B;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-static {p1}, Lcom/zte/privacy/B;->g([B)Lcom/zte/privacy/o;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/privacy/B;-><init>(Lcom/zte/privacy/o;)V

    return-void
.end method

.method private a(Lcom/zte/privacy/a;Lcom/zte/privacy/ah;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/privacy/B;->dK:Lcom/zte/privacy/o;

    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v2

    and-int/lit8 v3, p4, 0x1

    if-nez v3, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/zte/privacy/ah;->z(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v4

    and-int/lit8 v2, p4, 0x8

    if-nez v2, :cond_5

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_e

    invoke-interface {v12, v4}, Lcom/zte/privacy/o;->r(I)V

    :try_start_0
    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v12, v4}, Lcom/zte/privacy/o;->r(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v12, v1}, Lcom/zte/privacy/b;->a(Lcom/zte/privacy/B;Lcom/zte/privacy/o;Lcom/zte/privacy/an;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v12}, Lcom/zte/privacy/o;->Q()V

    :cond_1
    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v6

    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v7

    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v8

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_2

    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v9

    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error on reading Annotation of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-interface {v12}, Lcom/zte/privacy/o;->Q()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-interface {v12}, Lcom/zte/privacy/o;->Q()V

    throw v2

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_3

    :try_start_5
    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v6

    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_4

    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v6

    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v12}, Lcom/zte/privacy/o;->Q()V

    move-object v8, v2

    move-object v9, v3

    :goto_3
    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v2

    invoke-interface {v12}, Lcom/zte/privacy/o;->ab()I

    move-result v4

    if-eqz v2, :cond_c

    invoke-interface {v12, v2}, Lcom/zte/privacy/o;->r(I)V

    :try_start_6
    invoke-interface {v12}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v2

    long-to-int v13, v2

    invoke-interface {v12}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v2

    long-to-int v14, v2

    invoke-interface {v12}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v2

    long-to-int v15, v2

    invoke-interface {v12}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v16, v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    and-int/lit8 v6, p4, 0x10

    if-nez v6, :cond_d

    if-eqz v4, :cond_d

    invoke-interface {v12, v4}, Lcom/zte/privacy/o;->r(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-interface {v12}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_6

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/zte/privacy/L;->a(Lcom/zte/privacy/B;Lcom/zte/privacy/o;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v2, v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v8, v2

    move-object v9, v3

    goto :goto_3

    :cond_6
    :try_start_8
    invoke-interface {v12}, Lcom/zte/privacy/o;->Q()V

    move-object v10, v2

    :goto_5
    const/4 v2, 0x0

    move v11, v2

    :goto_6
    if-ge v11, v13, :cond_8

    const/4 v6, 0x0

    if-eqz v10, :cond_7

    array-length v2, v10

    if-ge v11, v2, :cond_7

    aget-object v6, v10, v11

    :cond_7
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/zte/privacy/B;->a(ILcom/zte/privacy/ah;Ljava/util/Map;Ljava/lang/Object;I)I

    move-result v3

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_6

    :catchall_2
    move-exception v2

    invoke-interface {v12}, Lcom/zte/privacy/o;->Q()V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v2

    invoke-interface {v12}, Lcom/zte/privacy/o;->Q()V

    throw v2

    :cond_8
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v10, v2

    :goto_7
    if-ge v10, v14, :cond_9

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move/from16 v7, p4

    :try_start_9
    invoke-virtual/range {v2 .. v7}, Lcom/zte/privacy/B;->a(ILcom/zte/privacy/ah;Ljava/util/Map;Ljava/lang/Object;I)I

    move-result v3

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v10, v2

    :goto_8
    if-ge v10, v15, :cond_a

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object v5, v9

    move-object v6, v8

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/zte/privacy/B;->a(ILcom/zte/privacy/ah;Ljava/util/Map;Ljava/util/Map;I)I

    move-result v3

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_8

    :cond_a
    const/4 v3, 0x0

    const/4 v2, 0x0

    move v10, v2

    :goto_9
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object v5, v9

    move-object v6, v8

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/zte/privacy/B;->a(ILcom/zte/privacy/ah;Ljava/util/Map;Ljava/util/Map;I)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v3

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_9

    :cond_b
    invoke-interface {v12}, Lcom/zte/privacy/o;->Q()V

    :cond_c
    invoke-interface/range {p2 .. p2}, Lcom/zte/privacy/ah;->a()V

    return-void

    :cond_d
    move-object v10, v2

    goto :goto_5

    :cond_e
    move-object v8, v2

    move-object v9, v3

    goto/16 :goto_3
.end method

.method public static c(Ljava/io/File;)[B
    .locals 1

    invoke-static {p0}, Lcom/zte/ZTESecurity/j;->f(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/zte/privacy/B;->f([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static f([B)[B
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string v0, "de"

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "PK"

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "org.apache.commons.compress.archivers.zip.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lcom/zte/privacy/k;

    invoke-direct {v0}, Lcom/zte/privacy/k;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "classes.dex"

    invoke-virtual {v0, p0, v1}, Lcom/zte/privacy/J;->a([BLjava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/zte/privacy/J;

    invoke-direct {v0}, Lcom/zte/privacy/J;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the src file not a .dex, .odex or zip file"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static g([B)Lcom/zte/privacy/o;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/zte/privacy/Q;

    invoke-static {p0}, Lcom/zte/privacy/B;->f([B)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/privacy/Q;-><init>([BZ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/zte/privacy/DexException;

    invoke-direct {v1, v0}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method B(I)Lcom/zte/privacy/ac;
    .locals 5

    iget v0, p0, Lcom/zte/privacy/B;->gt:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id out of bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/zte/privacy/B;->dK:Lcom/zte/privacy/o;

    iget v0, p0, Lcom/zte/privacy/B;->gs:I

    mul-int/lit8 v2, p1, 0x8

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/zte/privacy/o;->r(I)V

    :try_start_0
    invoke-interface {v1}, Lcom/zte/privacy/o;->ad()I

    move-result v0

    invoke-interface {v1}, Lcom/zte/privacy/o;->ad()I

    move-result v2

    invoke-interface {v1}, Lcom/zte/privacy/o;->ab()I

    move-result v3

    new-instance v4, Lcom/zte/privacy/ac;

    invoke-virtual {p0, v0}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v3, v2}, Lcom/zte/privacy/ac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Lcom/zte/privacy/o;->Q()V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/zte/privacy/o;->Q()V

    throw v0
.end method

.method C(I)Lcom/zte/privacy/az;
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/zte/privacy/B;->gv:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id out of bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/zte/privacy/B;->dK:Lcom/zte/privacy/o;

    iget v0, p0, Lcom/zte/privacy/B;->gu:I

    mul-int/lit8 v3, p1, 0x8

    add-int/2addr v0, v3

    invoke-interface {v2, v0}, Lcom/zte/privacy/o;->r(I)V

    :try_start_0
    invoke-interface {v2}, Lcom/zte/privacy/o;->ad()I

    move-result v3

    invoke-interface {v2}, Lcom/zte/privacy/o;->ad()I

    move-result v0

    invoke-interface {v2}, Lcom/zte/privacy/o;->ab()I

    move-result v4

    iget v5, p0, Lcom/zte/privacy/B;->gx:I

    if-lt v0, v5, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id out of bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    throw v0

    :cond_2
    :try_start_1
    iget v5, p0, Lcom/zte/privacy/B;->gw:I

    mul-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v5

    invoke-interface {v2, v0}, Lcom/zte/privacy/o;->r(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x4

    :try_start_2
    invoke-interface {v2, v0}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface {v2}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    invoke-interface {v2}, Lcom/zte/privacy/o;->ab()I

    move-result v5

    invoke-virtual {p0, v0}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_4

    invoke-interface {v2, v5}, Lcom/zte/privacy/o;->r(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v2}, Lcom/zte/privacy/o;->ab()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    :goto_0
    if-ge v1, v5, :cond_3

    invoke-interface {v2}, Lcom/zte/privacy/o;->ad()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_1
    :try_start_5
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    new-instance v1, Lcom/zte/privacy/az;

    invoke-virtual {p0, v3}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0, v6}, Lcom/zte/privacy/az;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    return-object v1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_7
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    const/4 v0, 0x0

    :try_start_8
    new-array v0, v0, [Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1
.end method

.method public final D(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/privacy/B;->gK:Z

    iput p1, p0, Lcom/zte/privacy/B;->gJ:I

    return-void
.end method

.method a(ILcom/zte/privacy/ah;Ljava/util/Map;Ljava/lang/Object;I)I
    .locals 7

    iget-object v1, p0, Lcom/zte/privacy/B;->dK:Lcom/zte/privacy/o;

    invoke-interface {v1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v2

    long-to-int v0, v2

    add-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v3

    invoke-interface {v1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-interface {p2, v0, v3, p4}, Lcom/zte/privacy/ah;->a(ILcom/zte/privacy/ac;Ljava/lang/Object;)Lcom/zte/privacy/aA;

    move-result-object v4

    if-eqz v4, :cond_1

    and-int/lit8 v0, p5, 0x8

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/zte/privacy/o;->r(I)V

    :try_start_0
    invoke-static {p0, v1, v4}, Lcom/zte/privacy/b;->a(Lcom/zte/privacy/B;Lcom/zte/privacy/o;Lcom/zte/privacy/an;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Lcom/zte/privacy/o;->Q()V

    :cond_0
    invoke-interface {v4}, Lcom/zte/privacy/aA;->a()V

    :cond_1
    return v2

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/zte/privacy/DexException;

    const-string v4, "while accept annotation in field:%s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/zte/privacy/ac;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-direct {v2, v0, v4, v5}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/zte/privacy/o;->Q()V

    throw v0
.end method

.method a(ILcom/zte/privacy/ah;Ljava/util/Map;Ljava/util/Map;I)I
    .locals 9

    iget-object v2, p0, Lcom/zte/privacy/B;->dK:Lcom/zte/privacy/o;

    invoke-interface {v2}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {v2}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {v2}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v4

    long-to-int v4, v4

    add-int v5, p1, v0

    invoke-virtual {p0, v5}, Lcom/zte/privacy/B;->C(I)Lcom/zte/privacy/az;

    move-result-object v6

    :try_start_0
    invoke-interface {p2, v3, v6}, Lcom/zte/privacy/ah;->a(ILcom/zte/privacy/az;)Lcom/zte/privacy/y;

    move-result-object v7

    if-eqz v7, :cond_6

    and-int/lit8 v0, p5, 0x8

    if-nez v0, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/zte/privacy/o;->r(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0, v2, v7}, Lcom/zte/privacy/b;->a(Lcom/zte/privacy/B;Lcom/zte/privacy/o;Lcom/zte/privacy/an;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/zte/privacy/o;->r(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-interface {v2}, Lcom/zte/privacy/o;->ab()I

    move-result v8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_2

    invoke-interface {v2}, Lcom/zte/privacy/o;->ab()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/zte/privacy/o;->r(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v7, v1}, Lcom/zte/privacy/y;->A(I)Lcom/zte/privacy/an;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v2, v0}, Lcom/zte/privacy/b;->a(Lcom/zte/privacy/B;Lcom/zte/privacy/o;Lcom/zte/privacy/an;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :try_start_5
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    new-instance v1, Lcom/zte/privacy/DexException;

    const-string v3, "while accept annotation in method:%s."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/zte/privacy/az;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v1, v0, v3, v4}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/zte/privacy/DexException;

    const-string v2, "while accept method:[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v6}, Lcom/zte/privacy/az;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v0, v2, v3}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :catch_2
    move-exception v0

    :try_start_8
    new-instance v3, Lcom/zte/privacy/DexException;

    const-string v4, "while accept parameter annotation in method:[%s], parameter:[%d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v6}, Lcom/zte/privacy/az;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-direct {v3, v0, v4, v5}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_a
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    throw v0

    :cond_2
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    :cond_3
    if-eqz v4, :cond_5

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_5

    invoke-interface {v2, v4}, Lcom/zte/privacy/o;->r(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :try_start_b
    invoke-interface {v7}, Lcom/zte/privacy/y;->aq()Lcom/zte/privacy/A;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_c
    new-instance v4, Lcom/zte/privacy/ae;

    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_1
    invoke-direct {v4, p0, v2, v0, v6}, Lcom/zte/privacy/ae;-><init>(Lcom/zte/privacy/B;Lcom/zte/privacy/o;ZLcom/zte/privacy/az;)V

    invoke-virtual {v4, v1, p5}, Lcom/zte/privacy/ae;->a(Lcom/zte/privacy/A;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    :cond_4
    :try_start_d
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    :cond_5
    invoke-interface {v7}, Lcom/zte/privacy/y;->a()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :cond_6
    return v5

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_e
    new-instance v1, Lcom/zte/privacy/DexException;

    const-string v3, "while accept code in method:[%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/zte/privacy/az;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-direct {v1, v0, v3, v4}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_f
    invoke-interface {v2}, Lcom/zte/privacy/o;->Q()V

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
.end method

.method public a(Lcom/zte/privacy/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/zte/privacy/B;->a(Lcom/zte/privacy/a;I)V

    return-void
.end method

.method public a(Lcom/zte/privacy/a;I)V
    .locals 11

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/zte/privacy/B;->gG:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/privacy/B;->gK:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/privacy/B;->gp:Ljava/util/logging/Logger;

    const-string v2, "read an odex file without setting the apiLevel, use 13 as default."

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/zte/privacy/B;->gG:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/zte/privacy/ay;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/zte/privacy/B;->gH:Lcom/zte/privacy/o;

    move-object v0, p1

    check-cast v0, Lcom/zte/privacy/ay;

    iget v2, p0, Lcom/zte/privacy/B;->gI:I

    invoke-interface {v4, v2}, Lcom/zte/privacy/o;->r(I)V

    const/16 v2, 0xc

    :try_start_0
    invoke-interface {v4, v2}, Lcom/zte/privacy/o;->skip(I)V

    invoke-interface {v4}, Lcom/zte/privacy/o;->X()I

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    invoke-interface {v4}, Lcom/zte/privacy/o;->X()I

    move-result v6

    new-instance v7, Ljava/lang/String;

    invoke-interface {v4, v6}, Lcom/zte/privacy/o;->s(I)[B

    move-result-object v8

    const/4 v9, 0x0

    add-int/lit8 v6, v6, -0x1

    sget-object v10, Lcom/zte/privacy/B;->gM:Ljava/nio/charset/Charset;

    invoke-direct {v7, v8, v9, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const/16 v6, 0x14

    invoke-interface {v4, v6}, Lcom/zte/privacy/o;->s(I)[B

    move-result-object v6

    invoke-interface {v0, v7, v6}, Lcom/zte/privacy/ay;->b(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Lcom/zte/privacy/o;->Q()V

    :cond_2
    iget-object v6, p0, Lcom/zte/privacy/B;->dK:Lcom/zte/privacy/o;

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/zte/privacy/B;->gr:I

    if-ge v0, v2, :cond_6

    iget v2, p0, Lcom/zte/privacy/B;->gq:I

    mul-int/lit8 v4, v0, 0x20

    add-int/2addr v2, v4

    invoke-interface {v6, v2}, Lcom/zte/privacy/o;->r(I)V

    :try_start_1
    invoke-interface {v6}, Lcom/zte/privacy/o;->ab()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lcom/zte/privacy/o;->ab()I

    move-result v8

    invoke-interface {v6}, Lcom/zte/privacy/o;->ab()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    move-object v5, v3

    :goto_2
    invoke-interface {v6}, Lcom/zte/privacy/o;->ab()I

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v6, v2}, Lcom/zte/privacy/o;->r(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-interface {v6}, Lcom/zte/privacy/o;->ab()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    move v4, v1

    :goto_3
    if-ge v4, v9, :cond_4

    invoke-interface {v6}, Lcom/zte/privacy/o;->ad()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Lcom/zte/privacy/o;->Q()V

    throw v0

    :cond_3
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Lcom/zte/privacy/o;->Q()V

    :goto_4
    invoke-interface {p1, v8, v7, v5, v2}, Lcom/zte/privacy/a;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/zte/privacy/ah;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, v2, v7, p2}, Lcom/zte/privacy/B;->a(Lcom/zte/privacy/a;Lcom/zte/privacy/ah;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_5
    invoke-interface {v6}, Lcom/zte/privacy/o;->Q()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v6}, Lcom/zte/privacy/o;->Q()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    invoke-interface {v6}, Lcom/zte/privacy/o;->Q()V

    throw v0

    :cond_6
    invoke-interface {p1}, Lcom/zte/privacy/a;->a()V

    return-void

    :cond_7
    move-object v2, v3

    goto :goto_4
.end method

.method public final aE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/privacy/B;->gG:Z

    return v0
.end method

.method public final aF()I
    .locals 1

    iget v0, p0, Lcom/zte/privacy/B;->gr:I

    return v0
.end method

.method getString(I)Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/zte/privacy/B;->gz:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id out of bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/zte/privacy/B;->dK:Lcom/zte/privacy/o;

    iget v0, p0, Lcom/zte/privacy/B;->gy:I

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/zte/privacy/o;->r(I)V

    :try_start_0
    invoke-interface {v1}, Lcom/zte/privacy/o;->X()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/zte/privacy/o;->r(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v3

    long-to-int v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff8

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v1, v3}, Lcom/zte/privacy/t;->a(Lcom/zte/privacy/o;Ljava/lang/StringBuilder;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UTFDataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    invoke-interface {v1}, Lcom/zte/privacy/o;->Q()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {v1}, Lcom/zte/privacy/o;->Q()V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v3, Lcom/zte/privacy/DexException;

    const-string v4, "fail to load string %d@%08x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-direct {v3, v0, v4, v5}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Lcom/zte/privacy/o;->Q()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {v1}, Lcom/zte/privacy/o;->Q()V

    throw v0
.end method

.method getType(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/zte/privacy/B;->gB:I

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id out of bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/zte/privacy/B;->dK:Lcom/zte/privacy/o;

    iget v0, p0, Lcom/zte/privacy/B;->gA:I

    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/zte/privacy/o;->r(I)V

    :try_start_0
    invoke-interface {v1}, Lcom/zte/privacy/o;->X()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-interface {v1}, Lcom/zte/privacy/o;->Q()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/zte/privacy/o;->Q()V

    throw v0
.end method
