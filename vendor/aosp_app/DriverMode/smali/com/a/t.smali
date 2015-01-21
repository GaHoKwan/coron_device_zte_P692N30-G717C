.class public final Lcom/a/t;
.super Ljava/lang/Object;


# static fields
.field private static c:I

.field private static d:I

.field private static e:I


# instance fields
.field protected a:Lcom/a/x;

.field protected b:Lcom/a/u;

.field private f:Lcom/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lcom/a/t;->c:I

    const/16 v0, 0x32

    sput v0, Lcom/a/t;->d:I

    const/16 v0, 0xc8

    sput v0, Lcom/a/t;->e:I

    return-void
.end method

.method protected constructor <init>(Lcom/a/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/x;

    invoke-direct {v0}, Lcom/a/x;-><init>()V

    iput-object v0, p0, Lcom/a/t;->a:Lcom/a/x;

    new-instance v0, Lcom/a/u;

    invoke-direct {v0}, Lcom/a/u;-><init>()V

    iput-object v0, p0, Lcom/a/t;->b:Lcom/a/u;

    iput-object p1, p0, Lcom/a/t;->f:Lcom/a/f;

    return-void
.end method

.method protected static a(II)V
    .locals 1

    sput p0, Lcom/a/t;->c:I

    div-int/lit8 v0, p1, 0x4

    sput v0, Lcom/a/t;->d:I

    sput p1, Lcom/a/t;->e:I

    return-void
.end method


# virtual methods
.method protected final a(Landroid/location/Location;)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/t;->f:Lcom/a/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/a/t;->f:Lcom/a/f;

    invoke-virtual {v0}, Lcom/a/f;->j()Ljava/util/List;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cell.list.size: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_3

    new-instance v3, Lcom/a/v;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    invoke-direct {v3, v0}, Lcom/a/v;-><init>(Landroid/telephony/CellLocation;)V

    iget-object v0, p0, Lcom/a/t;->b:Lcom/a/u;

    iget-object v0, v0, Lcom/a/u;->b:Landroid/location/Location;

    if-nez v0, :cond_4

    :cond_2
    :goto_1
    move-object v0, v3

    move v2, v1

    :cond_3
    :goto_2
    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/a/t;->b:Lcom/a/u;

    iput-object v0, v1, Lcom/a/u;->a:Lcom/a/v;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "cell diff:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "loc\'s time:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "cell\'s time:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-wide/32 v7, 0x5b8d80

    cmp-long v0, v5, v7

    if-gtz v0, :cond_5

    move v0, v1

    :goto_3
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/a/t;->b:Lcom/a/u;

    iget-object v0, v0, Lcom/a/u;->a:Lcom/a/v;

    iget v4, v3, Lcom/a/v;->e:I

    iget v5, v0, Lcom/a/v;->e:I

    if-ne v4, v5, :cond_6

    iget v4, v3, Lcom/a/v;->d:I

    iget v5, v0, Lcom/a/v;->d:I

    if-ne v4, v5, :cond_6

    iget v4, v3, Lcom/a/v;->c:I

    iget v5, v0, Lcom/a/v;->c:I

    if-ne v4, v5, :cond_6

    iget v4, v3, Lcom/a/v;->b:I

    iget v5, v0, Lcom/a/v;->b:I

    if-ne v4, v5, :cond_6

    iget v4, v3, Lcom/a/v;->a:I

    iget v0, v0, Lcom/a/v;->a:I

    if-ne v4, v0, :cond_6

    move v0, v1

    :goto_4
    if-nez v0, :cond_7

    move v0, v1

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "collect cell?: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v2, v0

    move-object v0, v3

    goto/16 :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "cell.location\'s distance:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/a/t;->b:Lcom/a/u;

    iget-object v4, v4, Lcom/a/u;->b:Landroid/location/Location;

    invoke-virtual {p1, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/a/t;->b:Lcom/a/u;

    iget-object v0, v0, Lcom/a/u;->b:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    sget v4, Lcom/a/t;->e:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_2

    move v1, v2

    goto/16 :goto_1
.end method

.method protected final b(Landroid/location/Location;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/t;->f:Lcom/a/f;

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/a/t;->f:Lcom/a/f;

    invoke-virtual {v0}, Lcom/a/f;->k()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_10

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/a/t;->a:Lcom/a/x;

    iget-object v1, v1, Lcom/a/x;->b:Landroid/location/Location;

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    move v1, v2

    move-object v2, v0

    :goto_2
    if-eqz v1, :cond_c

    iget-object v0, p0, Lcom/a/t;->a:Lcom/a/x;

    iget-object v0, v0, Lcom/a/x;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_3
    if-ge v3, v4, :cond_c

    iget-object v0, p0, Lcom/a/t;->a:Lcom/a/x;

    iget-object v5, v0, Lcom/a/x;->a:Ljava/util/List;

    new-instance v6, Lcom/a/w;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v6}, Lcom/a/w;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "wifi diff: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " loc\'s time:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " wifi\'s time:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " MIN_TIME,"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/a/t;->c:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-wide/32 v7, 0x927c0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_6

    move v1, v2

    :goto_4
    if-eqz v1, :cond_b

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    iget-object v1, p0, Lcom/a/t;->a:Lcom/a/x;

    iget-object v1, v1, Lcom/a/x;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "new WifiResult size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    if-eqz v1, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Last WifiResult size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    if-nez v0, :cond_7

    if-eqz v1, :cond_e

    :cond_5
    move v1, v3

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "the two wifiresult is same? "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_6
    if-nez v1, :cond_a

    move v1, v2

    :goto_7
    if-eqz v1, :cond_d

    move-object v2, v0

    goto/16 :goto_2

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v4, v1, :cond_8

    move v1, v2

    goto :goto_6

    :cond_8
    move v1, v3

    goto :goto_6

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    float-to-double v4, v1

    const-wide v6, 0x3fc999999999999aL

    cmpg-double v1, v4, v6

    if-gez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_a
    move v1, v3

    goto :goto_7

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "distance interval:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/a/t;->a:Lcom/a/x;

    iget-object v4, v4, Lcom/a/x;->b:Landroid/location/Location;

    invoke-virtual {p1, v4}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/a/t;->a:Lcom/a/x;

    iget-object v1, v1, Lcom/a/x;->b:Landroid/location/Location;

    invoke-virtual {p1, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    sget v4, Lcom/a/t;->d:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_1

    move v2, v3

    goto/16 :goto_1

    :cond_c
    move v3, v1

    goto/16 :goto_0

    :cond_d
    move-object v2, v0

    goto/16 :goto_2

    :cond_e
    move v1, v2

    goto :goto_5

    :cond_f
    move-object v2, v0

    move v1, v3

    goto/16 :goto_2

    :cond_10
    move-object v2, v0

    move v1, v3

    goto/16 :goto_2
.end method
