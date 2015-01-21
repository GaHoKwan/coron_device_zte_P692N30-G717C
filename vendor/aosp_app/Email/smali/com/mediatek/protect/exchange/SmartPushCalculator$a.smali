.class Lcom/mediatek/protect/exchange/SmartPushCalculator$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/protect/exchange/SmartPushCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:[[I

.field private b:[F


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v0, 0x3

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    .line 243
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->b:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/protect/exchange/SmartPushCalculator$1;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;-><init>()V

    return-void
.end method

.method private a()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/16 v12, 0xc

    const/4 v11, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 285
    move v0, v6

    move v7, v6

    move v8, v6

    move v9, v6

    .line 289
    :goto_0
    if-ge v0, v12, :cond_0

    .line 290
    iget-object v2, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v2, v2, v0

    aget v2, v2, v6

    add-int v4, v9, v2

    .line 291
    iget-object v2, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v2, v2, v0

    aget v2, v2, v11

    add-int v3, v8, v2

    .line 292
    iget-object v2, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v2, v2, v0

    aget v2, v2, v13

    add-int/2addr v2, v7

    .line 289
    add-int/lit8 v0, v0, 0x1

    move v7, v2

    move v8, v3

    move v9, v4

    goto :goto_0

    .line 298
    :cond_0
    if-nez v9, :cond_1

    if-nez v8, :cond_1

    if-nez v7, :cond_1

    .line 299
    :goto_1
    if-ge v6, v12, :cond_6

    .line 300
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->b:[F

    aput v1, v0, v6

    .line 299
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v5, v6

    .line 305
    :goto_2
    if-ge v5, v12, :cond_5

    .line 306
    if-nez v9, :cond_2

    move v4, v1

    .line 307
    :goto_3
    if-nez v8, :cond_3

    move v3, v1

    .line 308
    :goto_4
    if-nez v7, :cond_4

    move v0, v1

    .line 311
    :goto_5
    iget-object v2, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v2, v2, v5

    aget v2, v2, v6

    iget-object v10, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v10, v10, v5

    aget v10, v10, v11

    add-int/2addr v2, v10

    .line 313
    if-eqz v2, :cond_7

    .line 314
    iget-object v10, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v10, v10, v5

    aget v10, v10, v6

    int-to-float v10, v10

    int-to-float v2, v2

    div-float v2, v10, v2

    .line 317
    :goto_6
    mul-float/2addr v3, v2

    .line 318
    mul-float/2addr v0, v2

    .line 319
    iget-object v2, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->b:[F

    const v10, 0x3f19999a

    mul-float/2addr v4, v10

    const v10, 0x3dcccccd

    mul-float/2addr v3, v10

    add-float/2addr v3, v4

    const v4, 0x3e99999a

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    aput v0, v2, v5

    .line 305
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v0, v0, v5

    aget v0, v0, v6

    int-to-float v0, v0

    int-to-float v2, v9

    div-float/2addr v0, v2

    move v4, v0

    goto :goto_3

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v0, v0, v5

    aget v0, v0, v11

    int-to-float v0, v0

    int-to-float v2, v8

    div-float/2addr v0, v2

    move v3, v0

    goto :goto_4

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v0, v0, v5

    aget v0, v0, v13

    int-to-float v0, v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    goto :goto_5

    .line 323
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->b()V

    .line 324
    :cond_6
    return-void

    :cond_7
    move v2, v1

    goto :goto_6
.end method

.method static synthetic a(Lcom/mediatek/protect/exchange/SmartPushCalculator$a;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mediatek/protect/exchange/SmartPushCalculator$a;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;

    .line 252
    invoke-static {v0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->a(Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;)J

    move-result-wide v3

    const-wide/32 v5, 0x6ddd00

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 255
    const/16 v3, 0xc

    if-ne v1, v3, :cond_0

    .line 256
    const/16 v1, 0xb

    .line 258
    :cond_0
    invoke-static {v0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->b(Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;)I

    move-result v3

    .line 260
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v1, v3, v1

    const/4 v3, 0x1

    aget v4, v1, v3

    int-to-long v4, v4

    invoke-static {v0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->c(Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v0, v4

    aput v0, v1, v3

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v1, v3, v1

    const/4 v3, 0x2

    aget v4, v1, v3

    int-to-long v4, v4

    invoke-static {v0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->c(Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v0, v4

    aput v0, v1, v3

    goto :goto_0

    .line 268
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v1, v3, v1

    const/4 v3, 0x0

    aget v4, v1, v3

    int-to-long v4, v4

    invoke-static {v0}, Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;->c(Lcom/mediatek/protect/exchange/SmartPushCalculator$b$a;)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v0, v4

    aput v0, v1, v3

    goto :goto_0

    .line 274
    :cond_1
    return-void

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 330
    const-string v0, "SmartPushService"

    const-string v2, "------------------------------------\n"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 331
    :goto_0
    const/16 v2, 0xc

    if-ge v0, v2, :cond_0

    .line 332
    const-string v2, "SmartPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->a:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->b:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v2, "SmartPushService"

    const-string v3, "\n"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mediatek/protect/exchange/SmartPushCalculator$a;)[F
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mediatek/protect/exchange/SmartPushCalculator$a;->b:[F

    return-object v0
.end method
