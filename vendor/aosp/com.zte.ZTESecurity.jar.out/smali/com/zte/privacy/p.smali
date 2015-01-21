.class Lcom/zte/privacy/p;
.super Ljava/lang/Object;


# static fields
.field public static final dA:I = 0x3

.field public static final dB:I = 0x4

.field public static final dC:I = 0x5

.field public static final dD:I = 0x6

.field public static final dE:I = 0x7

.field public static final dF:I = 0x8

.field public static final dG:I = 0x9

.field public static final dH:I = 0xa

.field public static final dI:I = -0x4

.field public static final dJ:I = 0xf

.field public static final dx:I = 0x0

.field public static final dy:I = 0x1

.field public static final dz:I = 0x2


# instance fields
.field private dK:Lcom/zte/privacy/o;

.field private dL:Lcom/zte/privacy/B;

.field private dM:I

.field private dN:Lcom/zte/privacy/ae;

.field dO:[Lcom/zte/privacy/ad;

.field dP:[I


# direct methods
.method public constructor <init>(Lcom/zte/privacy/o;Lcom/zte/privacy/B;ILcom/zte/privacy/ae;[Lcom/zte/privacy/ad;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/privacy/p;->dK:Lcom/zte/privacy/o;

    iput-object p2, p0, Lcom/zte/privacy/p;->dL:Lcom/zte/privacy/B;

    iput p3, p0, Lcom/zte/privacy/p;->dM:I

    iput-object p4, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    iput-object p5, p0, Lcom/zte/privacy/p;->dO:[Lcom/zte/privacy/ad;

    iput-object p6, p0, Lcom/zte/privacy/p;->dP:[I

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/privacy/A;)V
    .locals 12

    iget-object v11, p0, Lcom/zte/privacy/p;->dK:Lcom/zte/privacy/o;

    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v2

    long-to-int v3, v2

    iget-object v0, p0, Lcom/zte/privacy/p;->dP:[I

    array-length v0, v0

    if-ne v3, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/zte/privacy/p;->dO:[Lcom/zte/privacy/ad;

    iget-object v5, p0, Lcom/zte/privacy/p;->dP:[I

    add-int v6, v2, v0

    aget v5, v5, v6

    const/4 v6, 0x0

    aput-object v6, v4, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/zte/privacy/p;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v5, v4}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/privacy/p;->dO:[Lcom/zte/privacy/ad;

    iget-object v6, p0, Lcom/zte/privacy/p;->dP:[I

    add-int v7, v2, v0

    aget v6, v6, v7

    aget-object v5, v5, v6

    iput-object v4, v5, Lcom/zte/privacy/ad;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    invoke-virtual {v0, v2}, Lcom/zte/privacy/ae;->M(I)V

    iget-object v0, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    iget-object v0, v0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/C;

    invoke-interface {p1, v1, v0}, Lcom/zte/privacy/A;->b(ILcom/zte/privacy/C;)V

    move v10, v1

    :goto_3
    invoke-interface {v11}, Lcom/zte/privacy/o;->aa()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v0, -0xa

    rem-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, -0x4

    add-int/2addr v10, v1

    div-int/lit8 v1, v0, 0xf

    if-eqz v1, :cond_3

    div-int/lit8 v0, v0, 0xf

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    invoke-virtual {v0, v2}, Lcom/zte/privacy/ae;->M(I)V

    iget-object v0, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    iget-object v0, v0, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/privacy/C;

    invoke-interface {p1, v10, v0}, Lcom/zte/privacy/A;->b(ILcom/zte/privacy/C;)V

    :cond_3
    move v0, v10

    :goto_4
    move v10, v0

    goto :goto_3

    :pswitch_0
    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v2, v0

    move v0, v10

    goto :goto_4

    :pswitch_1
    invoke-interface {v11}, Lcom/zte/privacy/o;->Y()J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v10, v0

    move v0, v10

    goto :goto_4

    :pswitch_2
    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v3

    long-to-int v0, v3

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v5

    long-to-int v0, v5

    add-int/lit8 v5, v0, -0x1

    if-ltz v4, :cond_4

    if-ltz v5, :cond_4

    iget-object v0, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    invoke-virtual {v0, v2}, Lcom/zte/privacy/ae;->M(I)V

    new-instance v0, Lcom/zte/privacy/ad;

    const/4 v3, -0x1

    iget-object v6, p0, Lcom/zte/privacy/p;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v6, v4}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/zte/privacy/p;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v6, v5}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/zte/privacy/ad;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/privacy/p;->dO:[Lcom/zte/privacy/ad;

    aput-object v0, v3, v1

    :cond_4
    move v0, v10

    goto :goto_4

    :pswitch_3
    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v3

    long-to-int v0, v3

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v5

    long-to-int v0, v5

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v6

    long-to-int v0, v6

    add-int/lit8 v6, v0, -0x1

    if-ltz v4, :cond_5

    if-ltz v5, :cond_5

    iget-object v0, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    invoke-virtual {v0, v2}, Lcom/zte/privacy/ae;->M(I)V

    new-instance v0, Lcom/zte/privacy/ad;

    const/4 v3, -0x1

    iget-object v7, p0, Lcom/zte/privacy/p;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v7, v4}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/zte/privacy/p;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v7, v5}, Lcom/zte/privacy/B;->getType(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/zte/privacy/p;->dL:Lcom/zte/privacy/B;

    invoke-virtual {v7, v6}, Lcom/zte/privacy/B;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/zte/privacy/ad;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zte/privacy/p;->dO:[Lcom/zte/privacy/ad;

    aput-object v0, v3, v1

    :cond_5
    move v0, v10

    goto/16 :goto_4

    :pswitch_4
    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/zte/privacy/p;->dO:[Lcom/zte/privacy/ad;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    invoke-virtual {v1, v2}, Lcom/zte/privacy/ae;->M(I)V

    iput v2, v0, Lcom/zte/privacy/ad;->end:I

    iget-object v4, v0, Lcom/zte/privacy/ad;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/zte/privacy/ad;->type:Ljava/lang/String;

    iget-object v6, v0, Lcom/zte/privacy/ad;->kz:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    iget-object v1, v1, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    iget v3, v0, Lcom/zte/privacy/ad;->start:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/privacy/C;

    iget-object v1, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    iget-object v1, v1, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/zte/privacy/C;

    iget v9, v0, Lcom/zte/privacy/ad;->kA:I

    move-object v3, p1

    invoke-interface/range {v3 .. v9}, Lcom/zte/privacy/A;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/privacy/C;Lcom/zte/privacy/C;I)V

    move v0, v10

    goto/16 :goto_4

    :pswitch_5
    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/zte/privacy/p;->dO:[Lcom/zte/privacy/ad;

    aget-object v0, v1, v0

    iput v2, v0, Lcom/zte/privacy/ad;->start:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/zte/privacy/ad;->end:I

    iget-object v0, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    invoke-virtual {v0, v2}, Lcom/zte/privacy/ae;->M(I)V

    move v0, v10

    goto/16 :goto_4

    :pswitch_6
    move v0, v10

    goto/16 :goto_4

    :pswitch_7
    move v0, v10

    goto/16 :goto_4

    :pswitch_8
    invoke-interface {v11}, Lcom/zte/privacy/o;->ac()J

    move v0, v10

    goto/16 :goto_4

    :pswitch_9
    iget-object v8, p0, Lcom/zte/privacy/p;->dO:[Lcom/zte/privacy/ad;

    array-length v9, v8

    const/4 v0, 0x0

    move v7, v0

    :goto_5
    if-ge v7, v9, :cond_7

    aget-object v0, v8, v7

    if-eqz v0, :cond_6

    iget v1, v0, Lcom/zte/privacy/ad;->end:I

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    iget v2, p0, Lcom/zte/privacy/p;->dM:I

    invoke-virtual {v1, v2}, Lcom/zte/privacy/ae;->M(I)V

    iget-object v1, v0, Lcom/zte/privacy/ad;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/zte/privacy/ad;->type:Ljava/lang/String;

    iget-object v3, v0, Lcom/zte/privacy/ad;->kz:Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    iget-object v4, v4, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    iget v5, v0, Lcom/zte/privacy/ad;->start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/privacy/C;

    iget-object v5, p0, Lcom/zte/privacy/p;->dN:Lcom/zte/privacy/ae;

    iget-object v5, v5, Lcom/zte/privacy/ae;->kv:Ljava/util/Map;

    iget v6, p0, Lcom/zte/privacy/p;->dM:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/privacy/C;

    iget v6, v0, Lcom/zte/privacy/ad;->kA:I

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/zte/privacy/A;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/privacy/C;Lcom/zte/privacy/C;I)V

    :cond_6
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_5

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
