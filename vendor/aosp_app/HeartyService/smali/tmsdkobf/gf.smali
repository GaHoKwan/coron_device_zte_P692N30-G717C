.class public Ltmsdkobf/gf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/gf$a;,
        Ltmsdkobf/gf$b;
    }
.end annotation


# static fields
.field private static mU:Ltmsdkobf/gf;


# instance fields
.field private a:Z

.field public jP:Ljava/lang/String;

.field private mV:D

.field private mW:D

.field private mX:D

.field private mY:D

.field private mZ:D

.field private na:D

.field private nb:Ltmsdkobf/gf$a;

.field private nc:Ltmsdkobf/gf$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide v0, p0, Ltmsdkobf/gf;->mV:D

    .line 19
    iput-wide v0, p0, Ltmsdkobf/gf;->mW:D

    .line 21
    iput-wide v0, p0, Ltmsdkobf/gf;->mX:D

    .line 23
    iput-wide v0, p0, Ltmsdkobf/gf;->mY:D

    .line 25
    iput-wide v0, p0, Ltmsdkobf/gf;->mZ:D

    .line 27
    iput-wide v0, p0, Ltmsdkobf/gf;->na:D

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/gf;->nc:Ltmsdkobf/gf$b;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdkobf/gf;->a:Z

    .line 68
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/gf;->jP:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[B)Ltmsdkobf/dx;
    .locals 7
    .parameter "url"
    .parameter "userAgent"
    .parameter "postData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdkobf/dy;,
            Ltmsdkobf/dn;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Ltmsdkobf/dw;->S()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ltmsdkobf/dy;

    invoke-direct {v0}, Ltmsdkobf/dy;-><init>()V

    throw v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    :try_start_0
    invoke-static/range {v0 .. v6}, Ltmsdkobf/gf;->a(ZLjava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/dj;)Ltmsdkobf/dx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    throw v0
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/dj;)Ltmsdkobf/dx;
    .locals 17
    .parameter "isGetOrPost"
    .parameter "url"
    .parameter "userAgent"
    .parameter "postData"
    .parameter "keepAlive"
    .parameter "isAutoRetry"
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 198
    if-eqz p5, :cond_2

    .line 200
    :try_start_0
    invoke-static/range {p1 .. p1}, Ltmsdkobf/dw;->as(Ljava/lang/String;)Z
    :try_end_0
    .catch Ltmsdkobf/di; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ltmsdkobf/dk; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ltmsdkobf/dn; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :try_start_1
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ltmsdkobf/di; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ltmsdkobf/dk; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ltmsdkobf/dn; {:try_start_1 .. :try_end_1} :catch_3

    .line 209
    .local v14, netUrl:Ljava/net/URL;
    :try_start_2
    invoke-virtual {v14}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    .line 210
    .local v12, host:Ljava/lang/String;
    invoke-static {}, Ltmsdkobf/dt;->T()Ltmsdkobf/dt;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v12}, Ltmsdkobf/dt;->au(Ljava/lang/String;)Ltmsdkobf/dq;

    move-result-object v11

    .line 212
    .local v11, dnsIpList:Ltmsdkobf/dq;
    iget-boolean v1, v11, Ltmsdkobf/dq;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, v11, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, v11, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 214
    iget-object v1, v11, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v16

    .line 215
    .local v16, size:I
    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    .line 216
    .local v15, random:Ljava/util/Random;
    iget-object v1, v11, Ltmsdkobf/dq;->ka:Ljava/util/LinkedList;

    invoke-virtual/range {v15 .. v16}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 219
    .local v13, ip:Ljava/lang/String;
    iget-object v1, v11, Ltmsdkobf/dq;->jP:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, tmpurl:Ljava/lang/String;
    iget-object v4, v11, Ltmsdkobf/dq;->jP:Ljava/lang/String;

    .line 222
    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    .line 220
    invoke-static/range {v1 .. v8}, Ltmsdkobf/dl;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/dj;)Ltmsdkobf/dx;

    move-result-object v1

    .line 252
    .end local v2           #tmpurl:Ljava/lang/String;
    .end local v11           #dnsIpList:Ltmsdkobf/dq;
    .end local v12           #host:Ljava/lang/String;
    .end local v13           #ip:Ljava/lang/String;
    .end local v14           #netUrl:Ljava/net/URL;
    .end local v15           #random:Ljava/util/Random;
    .end local v16           #size:I
    :goto_0
    return-object v1

    .line 204
    :catch_0
    move-exception v14

    .line 205
    .restart local v14       #netUrl:Ljava/net/URL;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    const/4 v1, 0x0

    goto :goto_0

    .line 225
    .restart local v11       #dnsIpList:Ltmsdkobf/dq;
    .restart local v12       #host:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 226
    const/4 v10, 0x0

    move/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    .line 224
    invoke-static/range {v3 .. v10}, Ltmsdkobf/dl;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/dj;)Ltmsdkobf/dx;

    move-result-object v1

    goto :goto_0

    .line 230
    .end local v11           #dnsIpList:Ltmsdkobf/dq;
    .end local v12           #host:Ljava/lang/String;
    .end local v14           #netUrl:Ljava/net/URL;
    :cond_1
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    .line 229
    invoke-static/range {v3 .. v10}, Ltmsdkobf/dl;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/dj;)Ltmsdkobf/dx;
    :try_end_2
    .catch Ltmsdkobf/di; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ltmsdkobf/dk; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ltmsdkobf/dn; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    goto :goto_0

    .line 232
    :catch_1
    move-exception v1

    .line 233
    throw v1

    .line 234
    :catch_2
    move-exception v1

    .line 235
    throw v1

    .line 236
    :catch_3
    move-exception v1

    .line 237
    throw v1

    :catch_4
    move-exception v1

    .line 240
    :try_start_3
    invoke-static {}, Ltmsdkobf/dv;->X()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_5

    .line 245
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 253
    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    .line 252
    invoke-static/range {v3 .. v10}, Ltmsdkobf/dl;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZLtmsdkobf/dj;)Ltmsdkobf/dx;

    move-result-object v1

    goto :goto_0

    .line 241
    :catch_5
    move-exception v1

    .line 242
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 245
    :catchall_0
    move-exception v1

    throw v1
.end method

.method static synthetic a(Ltmsdkobf/gf;)Ltmsdkobf/gf$a;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Ltmsdkobf/gf;->nb:Ltmsdkobf/gf$a;

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/gf;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Ltmsdkobf/gf;->a:Z

    return-void
.end method

.method static synthetic a(Ltmsdkobf/gf;[BLjava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v2, 0x4076900000000000L

    const-wide v7, 0x4076800000000000L

    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "location"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "longitude"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget-wide v5, p0, Ltmsdkobf/gf;->mX:D

    sub-double v5, v1, v5

    iput-wide v5, p0, Ltmsdkobf/gf;->mZ:D

    iget-wide v5, p0, Ltmsdkobf/gf;->mY:D

    sub-double v5, v3, v5

    iput-wide v5, p0, Ltmsdkobf/gf;->na:D

    iget-wide v5, p0, Ltmsdkobf/gf;->mX:D

    iput-wide v5, p0, Ltmsdkobf/gf;->mV:D

    iget-wide v5, p0, Ltmsdkobf/gf;->mY:D

    iput-wide v5, p0, Ltmsdkobf/gf;->mW:D

    iget-object v0, p0, Ltmsdkobf/gf;->nb:Ltmsdkobf/gf$a;

    invoke-interface {v0, v1, v2, v3, v4}, Ltmsdkobf/gf$a;->b(DD)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    iget-object v1, p0, Ltmsdkobf/gf;->nb:Ltmsdkobf/gf$a;

    invoke-interface {v1, v2, v3, v2, v3}, Ltmsdkobf/gf$a;->b(DD)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Ltmsdkobf/gf;->nb:Ltmsdkobf/gf$a;

    invoke-interface {v0, v7, v8, v7, v8}, Ltmsdkobf/gf$a;->b(DD)V

    goto :goto_1
.end method

.method public static as(Ljava/lang/String;)Z
    .locals 1
    .parameter "src"

    .prologue
    .line 16
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static bG()Ltmsdkobf/gf;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Ltmsdkobf/gf;->mU:Ltmsdkobf/gf;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ltmsdkobf/gf;

    invoke-direct {v0}, Ltmsdkobf/gf;-><init>()V

    sput-object v0, Ltmsdkobf/gf;->mU:Ltmsdkobf/gf;

    .line 41
    :cond_0
    sget-object v0, Ltmsdkobf/gf;->mU:Ltmsdkobf/gf;

    return-object v0
.end method


# virtual methods
.method public final a(DDLtmsdkobf/gf$a;)V
    .locals 9
    .parameter "curLatitude"
    .parameter "curLongitude"
    .parameter "obs"

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    iput-object p5, p0, Ltmsdkobf/gf;->nb:Ltmsdkobf/gf$a;

    .line 47
    iget-wide v0, p0, Ltmsdkobf/gf;->mZ:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Ltmsdkobf/gf;->na:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 48
    const/16 v0, 0xa

    new-array v8, v0, [F

    .line 49
    .local v8, distance:[F
    iget-wide v4, p0, Ltmsdkobf/gf;->mV:D

    .line 50
    iget-wide v6, p0, Ltmsdkobf/gf;->mW:D

    move-wide v0, p1

    move-wide v2, p3

    .line 49
    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 51
    const/4 v0, 0x0

    aget v0, v8, v0

    const v1, 0x44bb8000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 52
    iget-object v0, p0, Ltmsdkobf/gf;->nb:Ltmsdkobf/gf$a;

    iget-wide v1, p0, Ltmsdkobf/gf;->mZ:D

    add-double/2addr v1, p1

    .line 53
    iget-wide v3, p0, Ltmsdkobf/gf;->na:D

    add-double/2addr v3, p3

    .line 52
    invoke-interface {v0, v1, v2, v3, v4}, Ltmsdkobf/gf$a;->b(DD)V

    .line 58
    .end local v8           #distance:[F
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-boolean v0, p0, Ltmsdkobf/gf;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"source\":101,\"access_token\":\"160e7bd42dec9428721034e0146fc6dd\",\"location\":{\"latitude\":"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\"longitude\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}\t}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/gf;->jP:Ljava/lang/String;

    iput-wide p1, p0, Ltmsdkobf/gf;->mX:D

    iput-wide p3, p0, Ltmsdkobf/gf;->mY:D

    new-instance v0, Ltmsdkobf/gf$b;

    invoke-direct {v0, p0}, Ltmsdkobf/gf$b;-><init>(Ltmsdkobf/gf;)V

    iput-object v0, p0, Ltmsdkobf/gf;->nc:Ltmsdkobf/gf$b;

    iget-object v0, p0, Ltmsdkobf/gf;->nc:Ltmsdkobf/gf$b;

    invoke-virtual {v0}, Ltmsdkobf/gf$b;->start()V

    goto :goto_0
.end method
