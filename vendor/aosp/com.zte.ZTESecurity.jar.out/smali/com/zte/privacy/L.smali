.class Lcom/zte/privacy/L;
.super Ljava/lang/Object;


# static fields
.field private static final hD:I = 0x0

.field private static final hE:I = 0x2

.field private static final hF:I = 0x3

.field private static final hG:I = 0x4

.field private static final hH:I = 0x6

.field private static final hI:I = 0x10

.field private static final hJ:I = 0x11

.field private static final hK:I = 0x17

.field private static final hL:I = 0x18

.field private static final hM:I = 0x19

.field private static final hN:I = 0x1a

.field private static final hO:I = 0x1b

.field private static final hP:I = 0x1c

.field private static final hQ:I = 0x1d

.field private static final hR:I = 0x1e

.field private static final hS:I = 0x1f


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zte/privacy/o;I)J
    .locals 7

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v3, v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-interface {p0}, Lcom/zte/privacy/o;->aa()I

    move-result v4

    int-to-long v4, v4

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v3, 0x8

    mul-int/lit8 v0, v0, 0x8

    shl-long/2addr v1, v0

    shr-long v0, v1, v0

    return-wide v0
.end method

.method public static a(Lcom/zte/privacy/B;Lcom/zte/privacy/o;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/zte/privacy/o;->aa()I

    move-result v3

    and-int/lit8 v2, v3, 0x1f

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/zte/privacy/DexException;

    const-string v1, "Not support yet."

    invoke-direct {v0, v1}, Lcom/zte/privacy/DexException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/lang/Byte;

    invoke-static {p1, v3}, Lcom/zte/privacy/L;->a(Lcom/zte/privacy/o;I)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    :cond_0
    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/Short;

    invoke-static {p1, v3}, Lcom/zte/privacy/L;->a(Lcom/zte/privacy/o;I)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/Integer;

    invoke-static {p1, v3}, Lcom/zte/privacy/L;->a(Lcom/zte/privacy/o;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/Long;

    invoke-static {p1, v3}, Lcom/zte/privacy/L;->a(Lcom/zte/privacy/o;I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/Character;

    invoke-static {p1, v3}, Lcom/zte/privacy/L;->b(Lcom/zte/privacy/o;I)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-char v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1, v3}, Lcom/zte/privacy/L;->b(Lcom/zte/privacy/o;I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p1, v3}, Lcom/zte/privacy/L;->c(Lcom/zte/privacy/o;I)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {p1, v3}, Lcom/zte/privacy/L;->c(Lcom/zte/privacy/o;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_a
    new-instance v2, Ljava/lang/Boolean;

    shr-int/lit8 v3, v3, 0x5

    and-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_1

    :goto_1
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_b
    invoke-static {p1, v3}, Lcom/zte/privacy/L;->b(Lcom/zte/privacy/o;I)J

    move-result-wide v0

    long-to-int v1, v0

    new-instance v0, Lcom/zte/privacy/h;

    invoke-virtual {p0, v1}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/privacy/h;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    invoke-static {p1, v3}, Lcom/zte/privacy/L;->b(Lcom/zte/privacy/o;I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-static {p1, v3}, Lcom/zte/privacy/L;->b(Lcom/zte/privacy/o;I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zte/privacy/B;->C(I)Lcom/zte/privacy/az;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    invoke-static {p1, v3}, Lcom/zte/privacy/L;->b(Lcom/zte/privacy/o;I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/zte/privacy/B;->B(I)Lcom/zte/privacy/ac;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    invoke-interface {p1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [Ljava/lang/Object;

    :goto_2
    if-ge v1, v2, :cond_0

    invoke-static {p0, p1}, Lcom/zte/privacy/L;->a(Lcom/zte/privacy/B;Lcom/zte/privacy/o;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_10
    invoke-interface {p1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v4

    long-to-int v4, v4

    new-instance v2, Lcom/zte/privacy/G;

    invoke-direct {v2, v3, v0}, Lcom/zte/privacy/G;-><init>(Ljava/lang/String;Z)V

    :goto_3
    if-ge v1, v4, :cond_2

    invoke-interface {p1}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v5

    long-to-int v0, v5

    invoke-virtual {p0, v0}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/zte/privacy/L;->a(Lcom/zte/privacy/B;Lcom/zte/privacy/o;)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v2, Lcom/zte/privacy/G;->items:Ljava/util/List;

    new-instance v6, Lcom/zte/privacy/H;

    invoke-direct {v6, v0, v3}, Lcom/zte/privacy/H;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move-object v0, v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public static b(Lcom/zte/privacy/o;I)J
    .locals 7

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v3, v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-interface {p0}, Lcom/zte/privacy/o;->aa()I

    move-result v4

    int-to-long v4, v4

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static c(Lcom/zte/privacy/o;I)J
    .locals 7

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v3, v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-interface {p0}, Lcom/zte/privacy/o;->aa()I

    move-result v4

    int-to-long v4, v4

    mul-int/lit8 v6, v0, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v3, 0x8

    mul-int/lit8 v0, v0, 0x8

    shl-long v0, v1, v0

    return-wide v0
.end method
