.class public final Lcom/amap/api/location/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static e:Lcom/amap/api/location/e;


# instance fields
.field private a:Lcom/a/ak;

.field private volatile b:Z

.field private c:Ljava/lang/Thread;

.field private d:Landroid/content/Context;

.field private f:J

.field private g:Lcom/amap/api/location/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/amap/api/location/d;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/a/ak;

    iput-boolean v2, p0, Lcom/amap/api/location/e;->b:Z

    iput-object v0, p0, Lcom/amap/api/location/e;->c:Ljava/lang/Thread;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/e;->f:J

    iput-boolean v2, p0, Lcom/amap/api/location/e;->b:Z

    iput-object p1, p0, Lcom/amap/api/location/e;->d:Landroid/content/Context;

    invoke-static {}, Lcom/a/ai;->a()Lcom/a/ak;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/a/ak;

    invoke-static {p1}, Lcom/amap/api/location/core/b;->a(Landroid/content/Context;)Lcom/amap/api/location/core/b;

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/a/ak;

    invoke-interface {v0, p1}, Lcom/a/ak;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/a/ak;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amap/api/location/core/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/amap/api/location/core/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/a/ak;->a(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "key"

    invoke-static {p1}, Lcom/amap/api/location/core/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "X-INFO"

    invoke-static {p1}, Lcom/amap/api/location/core/b;->a(Landroid/content/Context;)Lcom/amap/api/location/core/b;

    invoke-static {}, Lcom/amap/api/location/core/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/amap/api/location/core/b;->a(Landroid/content/Context;)Lcom/amap/api/location/core/b;

    invoke-static {}, Lcom/amap/api/location/core/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ex"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/a/ac;->b([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "X-BIZ"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "User-Agent"

    sget-object v2, Lcom/amap/api/location/core/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/location/e;->a:Lcom/a/ak;

    invoke-interface {v0, v1}, Lcom/a/ak;->a(Lorg/json/JSONObject;)V

    iput-object p2, p0, Lcom/amap/api/location/e;->g:Lcom/amap/api/location/d;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Lcom/a/ad;)Lcom/amap/api/location/AMapLocation;
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Lcom/amap/api/location/AMapLocation;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const-string v3, "lbs"

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/ad;->b()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLatitude(D)V

    invoke-virtual {p0}, Lcom/a/ad;->a()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amap/api/location/AMapLocation;->setLongitude(D)V

    invoke-virtual {p0}, Lcom/a/ad;->c()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    invoke-virtual {p0}, Lcom/a/ad;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "citycode"

    invoke-virtual {p0}, Lcom/a/ad;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "desc"

    invoke-virtual {p0}, Lcom/a/ad;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "adcode"

    invoke-virtual {p0}, Lcom/a/ad;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocation;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/a/ad;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/a/ad;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/a/ad;->i()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocation;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/amap/api/location/AMapLocation;->e(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "010"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "021"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "022"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "023"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-eqz v0, :cond_3

    array-length v0, v4

    if-le v0, v7, :cond_2

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    array-length v0, v4

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->b(Ljava/lang/String;)V

    const/4 v0, 0x2

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Lcom/amap/api/location/AMapLocation;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/amap/api/location/d;)Lcom/amap/api/location/e;
    .locals 1

    sget-object v0, Lcom/amap/api/location/e;->e:Lcom/amap/api/location/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/location/e;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/location/e;-><init>(Landroid/content/Context;Lcom/amap/api/location/d;)V

    sput-object v0, Lcom/amap/api/location/e;->e:Lcom/amap/api/location/e;

    :cond_0
    sget-object v0, Lcom/amap/api/location/e;->e:Lcom/amap/api/location/e;

    return-object v0
.end method

.method private b()Lcom/a/ad;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/a/ak;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/location/e;->a:Lcom/a/ak;

    invoke-interface {v1}, Lcom/a/ak;->b()Lcom/a/ad;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/amap/api/location/c;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x5

    iget-wide v5, p0, Lcom/amap/api/location/e;->f:J

    mul-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sput-boolean v0, Lcom/amap/api/location/c;->b:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method final a()V
    .locals 4

    const-wide/16 v2, 0xbb8

    iget-wide v0, p0, Lcom/amap/api/location/e;->f:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    iput-wide v2, p0, Lcom/amap/api/location/e;->f:J

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    const/4 v2, -0x1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :goto_0
    iget-boolean v0, p0, Lcom/amap/api/location/e;->b:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/location/e;->c:Ljava/lang/Thread;

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/amap/api/location/c;->b:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/location/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/amap/api/location/c;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v1, :cond_5

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/amap/api/location/e;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    sget v0, Lcom/amap/api/location/core/a;->a:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/amap/api/location/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    :cond_2
    :try_start_2
    iget-wide v0, p0, Lcom/amap/api/location/e;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_3
    :goto_1
    return-void

    :catch_1
    move-exception v0

    sget v0, Lcom/amap/api/location/core/a;->a:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/amap/api/location/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    :cond_4
    :try_start_3
    iget-wide v0, p0, Lcom/amap/api/location/e;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-direct {p0}, Lcom/amap/api/location/e;->b()Lcom/a/ad;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/amap/api/location/e;->a(Lcom/a/ad;)Lcom/amap/api/location/AMapLocation;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_8

    sget-boolean v1, Lcom/amap/api/location/c;->d:Z

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/amap/api/location/c;->b:Z

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/amap/api/location/e;->c()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget v0, Lcom/amap/api/location/c;->a:I

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/amap/api/location/e;->g:Lcom/amap/api/location/d;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/d;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    sget v0, Lcom/amap/api/location/core/a;->a:I

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/amap/api/location/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    :cond_9
    :try_start_5
    iget-wide v0, p0, Lcom/amap/api/location/e;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    sget v0, Lcom/amap/api/location/core/a;->a:I

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/amap/api/location/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    :cond_a
    :try_start_6
    iget-wide v0, p0, Lcom/amap/api/location/e;->f:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget v1, Lcom/amap/api/location/core/a;->a:I

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/amap/api/location/e;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/location/core/a;->a(Landroid/content/Context;)Z

    :cond_b
    :try_start_7
    iget-wide v1, p0, Lcom/amap/api/location/e;->f:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    throw v0

    :catch_6
    move-exception v0

    goto :goto_1
.end method
