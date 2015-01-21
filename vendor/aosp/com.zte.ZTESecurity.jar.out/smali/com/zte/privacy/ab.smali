.class Lcom/zte/privacy/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/au;
.implements Lcom/zte/privacy/s;


# instance fields
.field private dL:Lcom/zte/privacy/B;

.field private ku:Lcom/zte/privacy/A;

.field private kv:Ljava/util/Map;

.field private offset:I


# direct methods
.method constructor <init>(Lcom/zte/privacy/B;Ljava/util/Map;Lcom/zte/privacy/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    iput-object p2, p0, Lcom/zte/privacy/ab;->kv:Ljava/util/Map;

    iput-object p3, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    return-void
.end method

.method private J(I)Lcom/zte/privacy/C;
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/ab;->kv:Ljava/util/Map;

    iget v1, p0, Lcom/zte/privacy/ab;->offset:I

    add-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/C;

    return-object v0
.end method

.method private b(I[ILcom/zte/privacy/az;)[I
    .locals 11

    const/16 v5, 0x71

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/zte/privacy/az;->dp()[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-ne p1, v5, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    array-length v3, p2

    if-eq v0, v3, :cond_4

    new-array v4, v0, [I

    if-eq p1, v5, :cond_5

    aget v0, p2, v1

    aput v0, v4, v1

    move v0, v2

    move v3, v2

    :goto_1
    invoke-virtual {p3}, Lcom/zte/privacy/az;->dp()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v10, v0

    move v0, v3

    move v3, v10

    :goto_2
    if-ge v1, v7, :cond_3

    aget-object v8, v6, v1

    add-int/lit8 v5, v0, 0x1

    aget v9, p2, v3

    aput v9, v4, v0

    const-string v0, "J"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "D"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    :goto_3
    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v0, v5

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    move-object p2, v4

    :cond_4
    return-object p2

    :cond_5
    move v0, v1

    move v3, v1

    goto :goto_1
.end method


# virtual methods
.method K(I)V
    .locals 2

    iput p1, p0, Lcom/zte/privacy/ab;->offset:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/privacy/ab;->J(I)Lcom/zte/privacy/C;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v1, v0}, Lcom/zte/privacy/A;->b(Lcom/zte/privacy/C;)V

    :cond_0
    return-void
.end method

.method public L(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Lcom/zte/privacy/A;->e(I)V

    :sswitch_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xe -> :sswitch_0
        0xf1 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(IIIIIIII)V
    .locals 7

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v0, v5, [I

    :goto_0
    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-array v0, v6, [I

    aput p3, v0, v5

    goto :goto_0

    :pswitch_2
    new-array v0, v3, [I

    aput p3, v0, v5

    aput p4, v0, v6

    goto :goto_0

    :pswitch_3
    new-array v0, v1, [I

    aput p3, v0, v5

    aput p4, v0, v6

    aput p5, v0, v3

    goto :goto_0

    :pswitch_4
    new-array v0, v2, [I

    aput p3, v0, v5

    aput p4, v0, v6

    aput p5, v0, v3

    aput p6, v0, v1

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    new-array v0, v0, [I

    aput p3, v0, v5

    aput p4, v0, v6

    aput p5, v0, v3

    aput p6, v0, v1

    aput p7, v0, v2

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p8}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/zte/privacy/A;->a(I[ILjava/lang/String;)V

    :goto_1
    return-void

    :sswitch_1
    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p8}, Lcom/zte/privacy/B;->C(I)Lcom/zte/privacy/az;

    move-result-object v1

    const/16 v2, 0xf0

    if-ne v2, p1, :cond_0

    const/16 v2, 0x70

    :try_start_0
    invoke-direct {p0, v2, v0, v1}, Lcom/zte/privacy/ab;->b(I[ILcom/zte/privacy/az;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v2, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v3, 0x70

    invoke-interface {v2, v3, v0, v1}, Lcom/zte/privacy/A;->a(I[ILcom/zte/privacy/az;)V

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/zte/privacy/DexException;

    const-string v2, "while rebuild argements for 0xF0 OP_INVOKE_DIRECT_EMPTY @0x%04x, this is typically because of a wrong apiLevel. current apiLevel is %d."

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/zte/privacy/ab;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    iget v4, v4, Lcom/zte/privacy/B;->gJ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {v1, v0, v2, v3}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/zte/privacy/ab;->b(I[ILcom/zte/privacy/az;)[I

    move-result-object v0

    iget-object v2, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v2, p1, v0, v1}, Lcom/zte/privacy/A;->a(I[ILcom/zte/privacy/az;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x6e -> :sswitch_1
        0x6f -> :sswitch_1
        0x70 -> :sswitch_1
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
        0xf0 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(IIIII[I)V
    .locals 7

    array-length v0, p6

    new-array v6, v0, [Lcom/zte/privacy/C;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p6

    if-ge v0, v1, :cond_0

    aget v1, p6, v0

    invoke-direct {p0, v1}, Lcom/zte/privacy/ab;->J(I)Lcom/zte/privacy/C;

    move-result-object v1

    aput-object v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-direct {p0, p3}, Lcom/zte/privacy/ab;->J(I)Lcom/zte/privacy/C;

    move-result-object v3

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/C;II[Lcom/zte/privacy/C;)V

    return-void
.end method

.method public a(IIII[Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIII[Ljava/lang/Object;)V

    return-void
.end method

.method public a(III[I[I)V
    .locals 6

    array-length v0, p5

    new-array v5, v0, [Lcom/zte/privacy/C;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p5

    if-ge v0, v1, :cond_0

    aget v1, p5, v0

    invoke-direct {p0, v1}, Lcom/zte/privacy/ab;->J(I)Lcom/zte/privacy/C;

    move-result-object v1

    aput-object v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-direct {p0, p3}, Lcom/zte/privacy/ab;->J(I)Lcom/zte/privacy/C;

    move-result-object v3

    move v1, p1

    move v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/C;[I[Lcom/zte/privacy/C;)V

    return-void
.end method

.method public a(IIJ)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x14

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/zte/privacy/A;->a(IILjava/lang/Object;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public b(IIIIIIII)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v0, v1, [I

    move-object v1, v0

    :goto_0
    packed-switch p1, :pswitch_data_1

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    new-array v0, v2, [I

    aput p3, v0, v1

    move-object v1, v0

    goto :goto_0

    :pswitch_2
    new-array v0, v3, [I

    aput p3, v0, v1

    aput p4, v0, v2

    move-object v1, v0

    goto :goto_0

    :pswitch_3
    new-array v0, v4, [I

    aput p3, v0, v1

    aput p4, v0, v2

    aput p5, v0, v3

    move-object v1, v0

    goto :goto_0

    :pswitch_4
    new-array v0, v5, [I

    aput p3, v0, v1

    aput p4, v0, v2

    aput p5, v0, v3

    aput p6, v0, v4

    move-object v1, v0

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x5

    new-array v0, v0, [I

    aput p3, v0, v1

    aput p4, v0, v2

    aput p5, v0, v3

    aput p6, v0, v4

    aput p7, v0, v5

    move-object v1, v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    invoke-interface {v0, p1, v1, p8}, Lcom/zte/privacy/am;->a(I[II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xee
        :pswitch_6
    .end packed-switch
.end method

.method public c(IIIIIIII)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v0, v1, [I

    move-object v1, v0

    :goto_0
    packed-switch p1, :pswitch_data_1

    :cond_0
    :goto_1
    :pswitch_1
    return-void

    :pswitch_2
    new-array v0, v2, [I

    aput p3, v0, v1

    move-object v1, v0

    goto :goto_0

    :pswitch_3
    new-array v0, v3, [I

    aput p3, v0, v1

    aput p4, v0, v2

    move-object v1, v0

    goto :goto_0

    :pswitch_4
    new-array v0, v4, [I

    aput p3, v0, v1

    aput p4, v0, v2

    aput p5, v0, v3

    move-object v1, v0

    goto :goto_0

    :pswitch_5
    new-array v0, v5, [I

    aput p3, v0, v1

    aput p4, v0, v2

    aput p5, v0, v3

    aput p6, v0, v4

    move-object v1, v0

    goto :goto_0

    :pswitch_6
    const/4 v0, 0x5

    new-array v0, v0, [I

    aput p3, v0, v1

    aput p4, v0, v2

    aput p5, v0, v3

    aput p6, v0, v4

    aput p7, v0, v5

    move-object v1, v0

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    invoke-interface {v0, p1, v1, p8}, Lcom/zte/privacy/am;->a(I[II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf8
        :pswitch_7
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public d(III)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/16 v4, 0x67

    const/16 v3, 0x60

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x1a

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p3}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2, v5}, Lcom/zte/privacy/A;->a(IILjava/lang/Object;I)V

    :goto_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p3}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2, v5}, Lcom/zte/privacy/A;->a(IILjava/lang/Object;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p3}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/zte/privacy/A;->a(IILjava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x22

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p3}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lcom/zte/privacy/A;->a(IILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    invoke-interface {v0, v3, p2, v1, v6}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    invoke-interface {v0, v3, p2, v1, v5}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    invoke-interface {v0, v4, p2, v1, v6}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    invoke-interface {v0, v4, p2, v1, v5}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x1c -> :sswitch_1
        0x1f -> :sswitch_2
        0x22 -> :sswitch_3
        0x60 -> :sswitch_4
        0x61 -> :sswitch_5
        0x62 -> :sswitch_6
        0x63 -> :sswitch_7
        0x64 -> :sswitch_8
        0x65 -> :sswitch_9
        0x66 -> :sswitch_a
        0x67 -> :sswitch_b
        0x68 -> :sswitch_c
        0x69 -> :sswitch_d
        0x6a -> :sswitch_e
        0x6b -> :sswitch_f
        0x6c -> :sswitch_10
        0x6d -> :sswitch_11
        0xe5 -> :sswitch_4
        0xe6 -> :sswitch_b
        0xea -> :sswitch_5
        0xeb -> :sswitch_c
        0xfd -> :sswitch_6
        0xfe -> :sswitch_d
        0xff -> :sswitch_1
        0x1ff -> :sswitch_2
        0x3ff -> :sswitch_3
        0x14ff -> :sswitch_4
        0x15ff -> :sswitch_5
        0x16ff -> :sswitch_6
        0x17ff -> :sswitch_7
        0x18ff -> :sswitch_8
        0x19ff -> :sswitch_9
        0x1aff -> :sswitch_a
        0x1bff -> :sswitch_b
        0x1cff -> :sswitch_c
        0x1dff -> :sswitch_d
        0x1eff -> :sswitch_e
        0x1fff -> :sswitch_f
        0x20ff -> :sswitch_10
        0x21ff -> :sswitch_11
        0xf9ff -> :sswitch_4
        0xfaff -> :sswitch_5
        0xfbff -> :sswitch_6
        0xfcff -> :sswitch_b
        0xfdff -> :sswitch_c
        0xfeff -> :sswitch_d
    .end sparse-switch
.end method

.method public d(IIII)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/high16 v1, -0xff

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/zte/privacy/A;->a(IIII)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public e(III)V
    .locals 5

    const/16 v4, 0x14

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    shl-int/lit8 v1, p3, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILjava/lang/Object;I)V

    :goto_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    int-to-long v1, p3

    const/16 v3, 0x30

    shl-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v4, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILjava/lang/Object;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public e(IIII)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x59

    const/16 v1, 0x52

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/A;->a(IIILjava/lang/String;)V

    :goto_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x23

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/A;->a(IIILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    move v2, p2

    move v3, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    move v2, p2

    move v3, p3

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    const/4 v5, 0x3

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    const/4 v5, 0x4

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    const/4 v5, 0x5

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v2, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v2, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    const/4 v5, 0x6

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    move v1, v2

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    move v1, v2

    move v2, p2

    move v3, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    move v1, v2

    move v2, p2

    move v3, p3

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    const/4 v5, 0x3

    move v1, v2

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    const/4 v5, 0x4

    move v1, v2

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    const/4 v5, 0x5

    move v1, v2

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    iget-object v1, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v1, p4}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v4

    const/4 v5, 0x6

    move v1, v2

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/ac;I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x23 -> :sswitch_1
        0x52 -> :sswitch_2
        0x53 -> :sswitch_3
        0x54 -> :sswitch_4
        0x55 -> :sswitch_5
        0x56 -> :sswitch_6
        0x57 -> :sswitch_7
        0x58 -> :sswitch_8
        0x59 -> :sswitch_9
        0x5a -> :sswitch_a
        0x5b -> :sswitch_b
        0x5c -> :sswitch_c
        0x5d -> :sswitch_d
        0x5e -> :sswitch_e
        0x5f -> :sswitch_f
        0xe3 -> :sswitch_2
        0xe4 -> :sswitch_9
        0xe7 -> :sswitch_4
        0xe8 -> :sswitch_3
        0xe9 -> :sswitch_a
        0xfc -> :sswitch_b
        0x2ff -> :sswitch_0
        0x4ff -> :sswitch_1
        0x6ff -> :sswitch_2
        0x7ff -> :sswitch_3
        0x8ff -> :sswitch_4
        0x9ff -> :sswitch_5
        0xaff -> :sswitch_6
        0xbff -> :sswitch_7
        0xcff -> :sswitch_8
        0xdff -> :sswitch_9
        0xeff -> :sswitch_a
        0xfff -> :sswitch_b
        0x10ff -> :sswitch_c
        0x11ff -> :sswitch_d
        0x12ff -> :sswitch_e
        0x13ff -> :sswitch_f
        0xf3ff -> :sswitch_2
        0xf4ff -> :sswitch_3
        0xf5ff -> :sswitch_4
        0xf6ff -> :sswitch_9
        0xf7ff -> :sswitch_a
        0xf8ff -> :sswitch_b
    .end sparse-switch
.end method

.method public f(III)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILjava/lang/Object;I)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x14

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/zte/privacy/A;->a(IILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public f(IIII)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, -0xff0008

    sub-int v1, p1, v1

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/zte/privacy/A;->a(IIII)V

    return-void

    :pswitch_data_0
    .packed-switch 0xd0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public g(III)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x14

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, p2, v2, v3}, Lcom/zte/privacy/A;->a(IILjava/lang/Object;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public g(IIII)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-direct {p0, p4}, Lcom/zte/privacy/ab;->J(I)Lcom/zte/privacy/C;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/zte/privacy/A;->a(IIILcom/zte/privacy/C;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public h(III)V
    .locals 4

    const/16 v3, 0x14

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILjava/lang/Object;I)V

    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    int-to-long v1, p3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v3, p2, v1, v2}, Lcom/zte/privacy/A;->a(IILjava/lang/Object;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public h(IIII)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0xa

    const/16 v5, 0x8

    const/16 v2, 0x4b

    const/16 v1, 0x44

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff002f

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->c(IIIII)V

    :goto_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0030

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->c(IIIII)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff002f

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->c(IIIII)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0030

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->c(IIIII)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0031

    const/16 v5, 0x9

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->c(IIIII)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x3

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x4

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x5

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x6

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x1

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x2

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x3

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x4

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x5

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v5, 0x6

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->a(IIIII)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/high16 v1, -0xff

    sub-int v1, p1, v1

    const/4 v5, 0x7

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->b(IIIII)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, -0xfefff5

    sub-int v1, p1, v1

    const/16 v5, 0x9

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->b(IIIII)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, -0xfeffea

    sub-int v1, p1, v1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->b(IIIII)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, -0xfeffe5

    sub-int v1, p1, v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->b(IIIII)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_0
        0x2e -> :sswitch_1
        0x2f -> :sswitch_2
        0x30 -> :sswitch_3
        0x31 -> :sswitch_4
        0x44 -> :sswitch_5
        0x45 -> :sswitch_6
        0x46 -> :sswitch_7
        0x47 -> :sswitch_8
        0x48 -> :sswitch_9
        0x49 -> :sswitch_a
        0x4a -> :sswitch_b
        0x4b -> :sswitch_c
        0x4c -> :sswitch_d
        0x4d -> :sswitch_e
        0x4e -> :sswitch_f
        0x4f -> :sswitch_10
        0x50 -> :sswitch_11
        0x51 -> :sswitch_12
        0x90 -> :sswitch_13
        0x91 -> :sswitch_13
        0x92 -> :sswitch_13
        0x93 -> :sswitch_13
        0x94 -> :sswitch_13
        0x95 -> :sswitch_13
        0x96 -> :sswitch_13
        0x97 -> :sswitch_13
        0x98 -> :sswitch_13
        0x99 -> :sswitch_13
        0x9a -> :sswitch_13
        0x9b -> :sswitch_14
        0x9c -> :sswitch_14
        0x9d -> :sswitch_14
        0x9e -> :sswitch_14
        0x9f -> :sswitch_14
        0xa0 -> :sswitch_14
        0xa1 -> :sswitch_14
        0xa2 -> :sswitch_14
        0xa3 -> :sswitch_14
        0xa4 -> :sswitch_14
        0xa5 -> :sswitch_14
        0xa6 -> :sswitch_15
        0xa7 -> :sswitch_15
        0xa8 -> :sswitch_15
        0xa9 -> :sswitch_15
        0xaa -> :sswitch_15
        0xab -> :sswitch_16
        0xac -> :sswitch_16
        0xad -> :sswitch_16
        0xae -> :sswitch_16
        0xaf -> :sswitch_16
    .end sparse-switch
.end method

.method public i(III)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-direct {p0, p3}, Lcom/zte/privacy/ab;->J(I)Lcom/zte/privacy/C;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/zte/privacy/A;->a(IILcom/zte/privacy/C;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public i(IIII)V
    .locals 6

    const/16 v4, 0xf0

    const/4 v1, 0x0

    new-array v2, p2, [I

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v3, p4, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x24

    iget-object v3, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v3, p3}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/privacy/A;->a(I[ILjava/lang/String;)V

    :goto_1
    return-void

    :sswitch_1
    if-eq p1, v4, :cond_1

    const v0, 0xf2ff

    if-ne p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x70

    :goto_2
    iget-object v3, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v3, p3}, Lcom/zte/privacy/B;->C(I)Lcom/zte/privacy/az;

    move-result-object v3

    if-ne p1, v4, :cond_4

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/zte/privacy/ab;->b(I[ILcom/zte/privacy/az;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v2, v0, v1, v3}, Lcom/zte/privacy/A;->a(I[ILcom/zte/privacy/az;)V

    goto :goto_1

    :cond_2
    shr-int/lit8 v0, p1, 0x4

    const/16 v3, 0xff

    if-ne v0, v3, :cond_3

    const/16 v0, 0x22ff

    :goto_3
    add-int/lit8 v0, v0, -0x6e

    sub-int v0, p1, v0

    goto :goto_2

    :cond_3
    const/16 v0, 0x74

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v2, Lcom/zte/privacy/DexException;

    const-string v3, "while rebuild argements for 0xF0 OP_INVOKE_OBJECT_INIT_RANGE @0x%04x, this is typically because of a wrong apiLevel. current apiLevel is %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/zte/privacy/ab;->offset:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    iget v5, v5, Lcom/zte/privacy/B;->gJ:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-direct {v2, v0, v3, v4}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_4
    invoke-direct {p0, v0, v2, v3}, Lcom/zte/privacy/ab;->b(I[ILcom/zte/privacy/az;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v2, v0, v1, v3}, Lcom/zte/privacy/A;->a(I[ILcom/zte/privacy/az;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x74 -> :sswitch_1
        0x75 -> :sswitch_1
        0x76 -> :sswitch_1
        0x77 -> :sswitch_1
        0x78 -> :sswitch_1
        0xf0 -> :sswitch_1
        0x5ff -> :sswitch_0
        0x22ff -> :sswitch_1
        0x23ff -> :sswitch_1
        0x24ff -> :sswitch_1
        0x25ff -> :sswitch_1
        0x26ff -> :sswitch_1
        0xf2ff -> :sswitch_1
    .end sparse-switch
.end method

.method public j(III)V
    .locals 6

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/A;->b(IIII)V

    :goto_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/A;->b(IIII)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/A;->b(IIII)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x21

    const/4 v2, 0x7

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/A;->c(IIII)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/high16 v1, -0xff

    sub-int v1, p1, v1

    const/4 v2, 0x7

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/A;->c(IIII)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, -0xfefffe

    sub-int v1, p1, v1

    const/16 v2, 0x9

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/A;->c(IIII)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff007b

    const/16 v2, 0x8

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/A;->c(IIII)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff007b

    const/16 v2, 0xa

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/zte/privacy/A;->c(IIII)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/16 v5, 0x9

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/16 v5, 0x8

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/16 v5, 0xa

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/16 v4, 0x9

    const/4 v5, 0x7

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/16 v4, 0x9

    const/16 v5, 0x8

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/16 v4, 0x9

    const/16 v5, 0xa

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/16 v4, 0x8

    const/4 v5, 0x7

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/16 v4, 0x8

    const/16 v5, 0x9

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/16 v4, 0x8

    const/16 v5, 0xa

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/16 v4, 0xa

    const/4 v5, 0x7

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_12
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/16 v4, 0xa

    const/16 v5, 0x9

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/16 v4, 0xa

    const/16 v5, 0x8

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/4 v5, 0x4

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/4 v5, 0x5

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_16
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, 0xff0081

    const/4 v4, 0x7

    const/4 v5, 0x6

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->d(IIIII)V

    goto/16 :goto_0

    :sswitch_17
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, -0xfeffe0

    sub-int v1, p1, v1

    const/4 v5, 0x7

    move v2, p2

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->b(IIIII)V

    goto/16 :goto_0

    :sswitch_18
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, -0xfeffd5

    sub-int v1, p1, v1

    const/16 v5, 0x9

    move v2, p2

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->b(IIIII)V

    goto/16 :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, -0xfeffca

    sub-int v1, p1, v1

    const/16 v5, 0x8

    move v2, p2

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->b(IIIII)V

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const v1, -0xfeffc5

    sub-int v1, p1, v1

    const/16 v5, 0xa

    move v2, p2

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/A;->b(IIIII)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0x21 -> :sswitch_3
        0x7b -> :sswitch_4
        0x7c -> :sswitch_4
        0x7d -> :sswitch_5
        0x7e -> :sswitch_5
        0x7f -> :sswitch_6
        0x80 -> :sswitch_7
        0x81 -> :sswitch_8
        0x82 -> :sswitch_9
        0x83 -> :sswitch_a
        0x84 -> :sswitch_b
        0x85 -> :sswitch_c
        0x86 -> :sswitch_d
        0x87 -> :sswitch_e
        0x88 -> :sswitch_f
        0x89 -> :sswitch_10
        0x8a -> :sswitch_11
        0x8b -> :sswitch_12
        0x8c -> :sswitch_13
        0x8d -> :sswitch_14
        0x8e -> :sswitch_15
        0x8f -> :sswitch_16
        0xb0 -> :sswitch_17
        0xb1 -> :sswitch_17
        0xb2 -> :sswitch_17
        0xb3 -> :sswitch_17
        0xb4 -> :sswitch_17
        0xb5 -> :sswitch_17
        0xb6 -> :sswitch_17
        0xb7 -> :sswitch_17
        0xb8 -> :sswitch_17
        0xb9 -> :sswitch_17
        0xba -> :sswitch_17
        0xbb -> :sswitch_18
        0xbc -> :sswitch_18
        0xbd -> :sswitch_18
        0xbe -> :sswitch_18
        0xbf -> :sswitch_18
        0xc0 -> :sswitch_18
        0xc1 -> :sswitch_18
        0xc2 -> :sswitch_18
        0xc3 -> :sswitch_18
        0xc4 -> :sswitch_18
        0xc5 -> :sswitch_18
        0xc6 -> :sswitch_19
        0xc7 -> :sswitch_19
        0xc8 -> :sswitch_19
        0xc9 -> :sswitch_19
        0xca -> :sswitch_19
        0xcb -> :sswitch_1a
        0xcc -> :sswitch_1a
        0xcd -> :sswitch_1a
        0xce -> :sswitch_1a
        0xcf -> :sswitch_1a
    .end sparse-switch
.end method

.method public j(IIII)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v2, 0xf5

    const/16 v1, 0xf2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/am;->e(IIIII)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/am;->e(IIIII)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/am;->e(IIIII)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/am;->e(IIIII)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/am;->e(IIIII)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    move v1, v2

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/zte/privacy/am;->e(IIIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xf2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public k(III)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    shr-int/lit8 v0, p2, 0x6

    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v0, p3}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    and-int/lit8 v2, p2, 0x3f

    invoke-interface {v0, p1, v2, v1}, Lcom/zte/privacy/am;->a(IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v0, p3}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/zte/privacy/ab;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v0, p3}, Lcom/zte/privacy/B;->C(I)Lcom/zte/privacy/az;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xed
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public k(IIII)V
    .locals 3

    new-array v1, p2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p4, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2, v1, p3}, Lcom/zte/privacy/am;->a(I[II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public l(III)V
    .locals 0

    return-void
.end method

.method public l(IIII)V
    .locals 3

    new-array v1, p2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v2, p4, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    instance-of v0, v0, Lcom/zte/privacy/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    check-cast v0, Lcom/zte/privacy/am;

    const/16 v2, 0xee

    invoke-interface {v0, v2, v1, p3}, Lcom/zte/privacy/am;->a(I[II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xef
        :pswitch_0
    .end packed-switch
.end method

.method public p(II)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0x28

    invoke-direct {p0, p2}, Lcom/zte/privacy/ab;->J(I)Lcom/zte/privacy/C;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/zte/privacy/A;->a(ILcom/zte/privacy/C;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public q(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xf

    const/16 v1, 0xa

    const/4 v2, 0x2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v0, v1, p2, v4}, Lcom/zte/privacy/A;->a(III)V

    :goto_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v0, v1, p2, v5}, Lcom/zte/privacy/A;->a(III)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v0, v1, p2, v2}, Lcom/zte/privacy/A;->a(III)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    const/16 v1, 0xd

    invoke-interface {v0, v1, p2, v2}, Lcom/zte/privacy/A;->a(III)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v0, v3, p2, v4}, Lcom/zte/privacy/A;->b(III)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v0, v3, p2, v5}, Lcom/zte/privacy/A;->b(III)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v0, v3, p2, v2}, Lcom/zte/privacy/A;->b(III)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v0, p1, p2, v2}, Lcom/zte/privacy/A;->b(III)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/zte/privacy/ab;->ku:Lcom/zte/privacy/A;

    invoke-interface {v0, p1, p2}, Lcom/zte/privacy/A;->a(II)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x1d -> :sswitch_8
        0x1e -> :sswitch_8
        0x27 -> :sswitch_7
    .end sparse-switch
.end method
