.class public final Ltmsdkobf/gj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/gf$a;
.implements Ltmsdkobf/gh$c;
.implements Ltmsdkobf/gi$c;
.implements Ltmsdkobf/gk$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/gj$a;,
        Ltmsdkobf/gj$b;
    }
.end annotation


# static fields
.field private static nz:Ltmsdkobf/gj;


# instance fields
.field private a:Z

.field private jO:I

.field private jP:Ljava/lang/String;

.field private jQ:Ljava/lang/String;

.field private jR:[B

.field private jS:Z

.field private jU:[B

.field private jV:Ljava/lang/String;

.field private kB:Ltmsdkobf/dh;

.field private kG:Landroid/content/Context;

.field private kI:Ljava/lang/String;

.field private kS:Ljava/lang/String;

.field private kb:I

.field private kg:I

.field private kh:I

.field private ki:I

.field private kj:I

.field private kk:I

.field private kn:J

.field private lf:Ljava/lang/String;

.field private mU:Ltmsdkobf/gf;

.field private nA:Ltmsdkobf/gk$b;

.field private nB:Ltmsdkobf/gr;

.field private nC:Ltmsdkobf/gr;

.field private final nD:Landroid/content/BroadcastReceiver;

.field private nd:Ltmsdkobf/gg;

.field private nj:Ltmsdkobf/gh$b;

.field private nn:Ltmsdkobf/gh;

.field private ns:Ltmsdkobf/gi$b;

.field private nt:Ltmsdkobf/gi;

.field private nv:Ltmsdkobf/gk;

.field private nw:Ltmsdkobf/gp;

.field private nx:Ltmsdkobf/gj$b;

.field private ny:Ltmsdkobf/gj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    sput-object v0, Ltmsdkobf/gj;->nz:Ltmsdkobf/gj;

    .line 182
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object v2, p0, Ltmsdkobf/gj;->kG:Landroid/content/Context;

    .line 122
    iput-object v2, p0, Ltmsdkobf/gj;->nt:Ltmsdkobf/gi;

    .line 124
    iput-object v2, p0, Ltmsdkobf/gj;->nn:Ltmsdkobf/gh;

    .line 126
    iput-object v2, p0, Ltmsdkobf/gj;->nv:Ltmsdkobf/gk;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Ltmsdkobf/gj;->jO:I

    .line 131
    const/4 v0, 0x4

    iput v0, p0, Ltmsdkobf/gj;->kb:I

    .line 134
    iput-object v2, p0, Ltmsdkobf/gj;->nd:Ltmsdkobf/gg;

    .line 136
    iput-object v2, p0, Ltmsdkobf/gj;->mU:Ltmsdkobf/gf;

    .line 139
    iput-object v2, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    .line 144
    new-array v0, v3, [B

    iput-object v0, p0, Ltmsdkobf/gj;->jR:[B

    .line 146
    new-array v0, v3, [B

    iput-object v0, p0, Ltmsdkobf/gj;->jU:[B

    .line 148
    iput-boolean v3, p0, Ltmsdkobf/gj;->a:Z

    .line 150
    iput-object v2, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    .line 153
    iput-object v2, p0, Ltmsdkobf/gj;->ny:Ltmsdkobf/gj$a;

    .line 158
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltmsdkobf/gj;->kn:J

    .line 160
    iput-object v2, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    .line 162
    iput-object v2, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    .line 164
    iput-object v2, p0, Ltmsdkobf/gj;->nA:Ltmsdkobf/gk$b;

    .line 166
    iput-object v2, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 168
    iput-object v2, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    .line 170
    iput v3, p0, Ltmsdkobf/gj;->kj:I

    .line 177
    const/4 v0, 0x1

    iput v0, p0, Ltmsdkobf/gj;->kk:I

    .line 184
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/gj;->jP:Ljava/lang/String;

    .line 186
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/gj;->jQ:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/gj;->jV:Ljava/lang/String;

    .line 190
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/gj;->lf:Ljava/lang/String;

    .line 192
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/gj;->kS:Ljava/lang/String;

    .line 194
    const-string v0, ""

    iput-object v0, p0, Ltmsdkobf/gj;->kI:Ljava/lang/String;

    .line 196
    iput-boolean v3, p0, Ltmsdkobf/gj;->jS:Z

    .line 198
    iput-object v2, p0, Ltmsdkobf/gj;->kB:Ltmsdkobf/dh;

    .line 200
    new-instance v0, Ltmsdkobf/gj$1;

    invoke-direct {v0, p0}, Ltmsdkobf/gj$1;-><init>(Ltmsdkobf/gj;)V

    iput-object v0, p0, Ltmsdkobf/gj;->nD:Landroid/content/BroadcastReceiver;

    .line 214
    new-instance v0, Ltmsdkobf/gi;

    invoke-direct {v0}, Ltmsdkobf/gi;-><init>()V

    iput-object v0, p0, Ltmsdkobf/gj;->nt:Ltmsdkobf/gi;

    .line 215
    new-instance v0, Ltmsdkobf/gh;

    invoke-direct {v0}, Ltmsdkobf/gh;-><init>()V

    iput-object v0, p0, Ltmsdkobf/gj;->nn:Ltmsdkobf/gh;

    .line 216
    new-instance v0, Ltmsdkobf/gk;

    invoke-direct {v0}, Ltmsdkobf/gk;-><init>()V

    iput-object v0, p0, Ltmsdkobf/gj;->nv:Ltmsdkobf/gk;

    .line 217
    return-void
.end method

.method private U()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 458
    iget v0, p0, Ltmsdkobf/gj;->kb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ltmsdkobf/gj;->nA:Ltmsdkobf/gk$b;

    invoke-static {v0}, Ltmsdkobf/gm;->b(Ltmsdkobf/gk$b;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    invoke-static {v1}, Ltmsdkobf/gm;->b(Ltmsdkobf/gh$b;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Ltmsdkobf/gj;->jP:Ljava/lang/String;

    iget-object v3, p0, Ltmsdkobf/gj;->jQ:Ljava/lang/String;

    iget-object v4, p0, Ltmsdkobf/gj;->jV:Ljava/lang/String;

    iget-object v5, p0, Ltmsdkobf/gj;->lf:Ljava/lang/String;

    iget-boolean v10, p0, Ltmsdkobf/gj;->jS:Z

    invoke-static {v1, v3, v4, v5, v10}, Ltmsdkobf/gm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v1}, Ltmsdkobf/gi$b;->S()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-static {v1}, Ltmsdkobf/gm;->b(Ltmsdkobf/gi$b;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"version\":\"0.1.6\",\"address\":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ltmsdkobf/gj;->kh:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\"source\":203,\"access_token\":\""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltmsdkobf/gj;->kS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\"app_name\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ltmsdkobf/gj;->kI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\"bearing\":1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ",\"attribute\":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"location\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",\"cells\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"wifis\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 459
    .local v8, postContent:Ljava/lang/String;
    invoke-static {v8}, Ltmsdkobf/gm;->aR(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 485
    :cond_0
    :goto_2
    return-void

    .line 458
    .end local v8           #postContent:Ljava/lang/String;
    :cond_1
    const-string v0, "[]"

    goto/16 :goto_0

    :cond_2
    const-string v1, "{}"

    goto/16 :goto_1

    .line 462
    .restart local v8       #postContent:Ljava/lang/String;
    :cond_3
    iget v0, p0, Ltmsdkobf/gj;->kg:I

    if-nez v0, :cond_4

    iget-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    if-eqz v0, :cond_4

    .line 463
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ltmsdkobf/gn;->i([B)[B

    move-result-object v7

    .line 464
    .local v7, locateRawData:[B
    iget-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    invoke-virtual {v0, v7}, Ltmsdkobf/gp;->onLocationDataUpdate([B)V

    goto :goto_2

    .line 467
    .end local v7           #locateRawData:[B
    :cond_4
    iget-object v0, p0, Ltmsdkobf/gj;->nd:Ltmsdkobf/gg;

    if-nez v0, :cond_5

    move-object v6, v9

    .line 468
    .local v6, historyRes:Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_6

    .line 469
    invoke-direct {p0, v6}, Ltmsdkobf/gj;->ax(Ljava/lang/String;)V

    goto :goto_2

    .line 467
    .end local v6           #historyRes:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltmsdkobf/gj;->nA:Ltmsdkobf/gk$b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltmsdkobf/gj;->nd:Ltmsdkobf/gg;

    iget-object v1, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    iget v1, v1, Ltmsdkobf/gh$b;->kb:I

    iget-object v2, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    iget v2, v2, Ltmsdkobf/gh$b;->kg:I

    iget-object v3, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    iget v3, v3, Ltmsdkobf/gh$b;->kh:I

    iget-object v4, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    iget v4, v4, Ltmsdkobf/gh$b;->ki:I

    iget-object v5, p0, Ltmsdkobf/gj;->nA:Ltmsdkobf/gk$b;

    invoke-virtual {v5}, Ltmsdkobf/gk$b;->bK()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ltmsdkobf/gg;->b(IIIILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v6, v0

    goto :goto_3

    .line 472
    .restart local v6       #historyRes:Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Ltmsdkobf/gj;->nd:Ltmsdkobf/gg;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltmsdkobf/gj;->nA:Ltmsdkobf/gk$b;

    if-eqz v0, :cond_7

    .line 473
    iget-object v0, p0, Ltmsdkobf/gj;->nd:Ltmsdkobf/gg;

    iget-object v1, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    iget v1, v1, Ltmsdkobf/gh$b;->kb:I

    iget-object v2, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    iget v2, v2, Ltmsdkobf/gh$b;->kg:I

    .line 474
    iget-object v3, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    iget v3, v3, Ltmsdkobf/gh$b;->kh:I

    iget-object v4, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    iget v4, v4, Ltmsdkobf/gh$b;->ki:I

    iget-object v5, p0, Ltmsdkobf/gj;->nA:Ltmsdkobf/gk$b;

    invoke-virtual {v5}, Ltmsdkobf/gk$b;->bK()Ljava/util/List;

    move-result-object v5

    .line 473
    invoke-virtual/range {v0 .. v5}, Ltmsdkobf/gg;->a(IIIILjava/util/List;)V

    .line 476
    :cond_7
    const-string v0, "Need PostThread"

    invoke-static {v0}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 478
    iget-boolean v0, p0, Ltmsdkobf/gj;->a:Z

    if-nez v0, :cond_0

    .line 480
    iget-object v0, p0, Ltmsdkobf/gj;->ny:Ltmsdkobf/gj$a;

    if-eqz v0, :cond_8

    .line 481
    iget-object v0, p0, Ltmsdkobf/gj;->ny:Ltmsdkobf/gj$a;

    invoke-virtual {v0}, Ltmsdkobf/gj$a;->interrupt()V

    .line 482
    :cond_8
    iput-object v9, p0, Ltmsdkobf/gj;->ny:Ltmsdkobf/gj$a;

    .line 483
    new-instance v0, Ltmsdkobf/gj$a;

    invoke-direct {v0, p0, v8}, Ltmsdkobf/gj$a;-><init>(Ltmsdkobf/gj;Ljava/lang/String;)V

    iput-object v0, p0, Ltmsdkobf/gj;->ny:Ltmsdkobf/gj$a;

    .line 484
    iget-object v0, p0, Ltmsdkobf/gj;->ny:Ltmsdkobf/gj$a;

    invoke-virtual {v0}, Ltmsdkobf/gj$a;->start()V

    goto/16 :goto_2

    .end local v6           #historyRes:Ljava/lang/String;
    :cond_9
    move-object v0, v9

    goto :goto_4
.end method

.method private V()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 744
    new-instance v0, Ltmsdkobf/gr;

    invoke-direct {v0}, Ltmsdkobf/gr;-><init>()V

    iput-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 745
    iput v2, p0, Ltmsdkobf/gj;->kj:I

    .line 746
    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iput v2, v0, Ltmsdkobf/gr;->oh:I

    .line 747
    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const/4 v1, -0x1

    iput v1, v0, Ltmsdkobf/gr;->oi:I

    .line 748
    iget-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    if-eqz v0, :cond_0

    iget v0, p0, Ltmsdkobf/gj;->kg:I

    if-ne v0, v2, :cond_0

    .line 749
    iget-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    iget-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    invoke-virtual {v0, v1}, Ltmsdkobf/gp;->onLocationUpdate(Ltmsdkobf/gr;)V

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/gj;->kn:J

    .line 752
    :cond_0
    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 14
    .parameter "jsonPOIList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/gq;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 532
    .local v13, poiSize:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v10, POIList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/gq;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-lt v11, v13, :cond_0

    .line 544
    return-object v10

    .line 534
    :cond_0
    invoke-virtual {p0, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 535
    .local v12, jsonPOI:Lorg/json/JSONObject;
    const-string v0, "name"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, name:Ljava/lang/String;
    const-string v0, "addr"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, addr:Ljava/lang/String;
    const-string v0, "catalog"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, catalog:Ljava/lang/String;
    const-string v0, "dist"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 539
    .local v4, dist:D
    const-string v0, "latitude"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 540
    .local v6, lat:D
    const-string v0, "longitude"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 541
    .local v8, lng:D
    new-instance v0, Ltmsdkobf/gq;

    .line 542
    invoke-direct/range {v0 .. v9}, Ltmsdkobf/gq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V

    .line 541
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method static synthetic a(Ltmsdkobf/gj;)Ltmsdkobf/gj$b;
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/gj;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 409
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Ltmsdkobf/gj;->jO:I

    iget-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    iget v1, p0, Ltmsdkobf/gj;->jO:I

    invoke-virtual {v0, v1}, Ltmsdkobf/gp;->onStatusUpdate(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic a(Ltmsdkobf/gj;Landroid/location/Location;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const-wide v2, 0x4076700000000000L

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 589
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    if-eqz v0, :cond_a

    iget-object v0, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v0}, Ltmsdkobf/gi$b;->S()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v4}, Ltmsdkobf/gj;->c(Z)V

    :cond_1
    :goto_0
    new-instance v0, Ltmsdkobf/gr;

    invoke-direct {v0}, Ltmsdkobf/gr;-><init>()V

    iput-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iput v6, v0, Ltmsdkobf/gr;->oi:I

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iput v6, v0, Ltmsdkobf/gr;->oh:I

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/gr;->nT:D

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/gr;->nU:D

    iget-object v0, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v0}, Ltmsdkobf/gi$b;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v1}, Ltmsdkobf/gi$b;->bI()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2, v4}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/gr;->nW:D

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v1}, Ltmsdkobf/gi$b;->bI()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    invoke-static {v1, v2, v4}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/gr;->nV:D

    :cond_2
    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iput-boolean v4, v0, Ltmsdkobf/gr;->og:Z

    iget v0, p0, Ltmsdkobf/gj;->kh:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    if-eqz v0, :cond_6

    iget v0, p0, Ltmsdkobf/gj;->kj:I

    if-nez v0, :cond_6

    iget v0, p0, Ltmsdkobf/gj;->kh:I

    if-ne v0, v7, :cond_3

    iget-object v0, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget v0, v0, Ltmsdkobf/gr;->oi:I

    iget v1, p0, Ltmsdkobf/gj;->kh:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v1, v1, Ltmsdkobf/gr;->nP:Ljava/lang/String;

    iput-object v1, v0, Ltmsdkobf/gr;->nP:Ljava/lang/String;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v1, v1, Ltmsdkobf/gr;->nQ:Ljava/lang/String;

    iput-object v1, v0, Ltmsdkobf/gr;->nQ:Ljava/lang/String;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iput v7, v0, Ltmsdkobf/gr;->oi:I

    :cond_3
    iget v0, p0, Ltmsdkobf/gj;->kh:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Ltmsdkobf/gj;->kh:I

    if-ne v0, v5, :cond_5

    :cond_4
    iget v0, p0, Ltmsdkobf/gj;->kh:I

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget v1, v1, Ltmsdkobf/gr;->oi:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v1, v1, Ltmsdkobf/gr;->nX:Ljava/lang/String;

    iput-object v1, v0, Ltmsdkobf/gr;->nX:Ljava/lang/String;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v1, v1, Ltmsdkobf/gr;->nY:Ljava/lang/String;

    iput-object v1, v0, Ltmsdkobf/gr;->nY:Ljava/lang/String;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v1, v1, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    iput-object v1, v0, Ltmsdkobf/gr;->nZ:Ljava/lang/String;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v1, v1, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    iput-object v1, v0, Ltmsdkobf/gr;->oa:Ljava/lang/String;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v1, v1, Ltmsdkobf/gr;->ob:Ljava/lang/String;

    iput-object v1, v0, Ltmsdkobf/gr;->ob:Ljava/lang/String;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v1, v1, Ltmsdkobf/gr;->oc:Ljava/lang/String;

    iput-object v1, v0, Ltmsdkobf/gr;->oc:Ljava/lang/String;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v1, v1, Ltmsdkobf/gr;->od:Ljava/lang/String;

    iput-object v1, v0, Ltmsdkobf/gr;->od:Ljava/lang/String;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v1, v1, Ltmsdkobf/gr;->oe:Ljava/lang/String;

    iput-object v1, v0, Ltmsdkobf/gr;->oe:Ljava/lang/String;

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const/4 v1, 0x3

    iput v1, v0, Ltmsdkobf/gr;->oi:I

    :cond_5
    iget v0, p0, Ltmsdkobf/gj;->kh:I

    if-ne v0, v5, :cond_6

    iget v0, p0, Ltmsdkobf/gj;->kh:I

    iget-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget v1, v1, Ltmsdkobf/gr;->oi:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v0, v0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    iget-object v0, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    iget-object v0, v0, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iput v5, v0, Ltmsdkobf/gr;->oi:I

    :cond_6
    iget v0, p0, Ltmsdkobf/gj;->kj:I

    if-nez v0, :cond_7

    iget-object v0, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    if-eqz v0, :cond_9

    :cond_7
    iget v0, p0, Ltmsdkobf/gj;->kj:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget v1, p0, Ltmsdkobf/gj;->kj:I

    iput v1, v0, Ltmsdkobf/gr;->oh:I

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ltmsdkobf/gj;->kn:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    iget-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    if-eqz v0, :cond_9

    iget v0, p0, Ltmsdkobf/gj;->kg:I

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    iget-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    invoke-virtual {v0, v1}, Ltmsdkobf/gp;->onLocationUpdate(Ltmsdkobf/gr;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ltmsdkobf/gj;->kn:J

    :cond_9
    return-void

    :cond_a
    invoke-direct {p0}, Ltmsdkobf/gj;->V()V

    goto/16 :goto_0

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/gq;

    iget-object v2, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v2, v2, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    new-instance v3, Ltmsdkobf/gq;

    invoke-direct {v3, v0}, Ltmsdkobf/gq;-><init>(Ltmsdkobf/gq;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic a(Ltmsdkobf/gj;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 667
    invoke-direct {p0, p1}, Ltmsdkobf/gj;->ax(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ltmsdkobf/gj;Ltmsdkobf/gh$b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    iget-object v0, p0, Ltmsdkobf/gj;->nv:Ltmsdkobf/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/gj;->nv:Ltmsdkobf/gk;

    invoke-virtual {v0}, Ltmsdkobf/gk;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/gj;->nv:Ltmsdkobf/gk;

    invoke-virtual {v0}, Ltmsdkobf/gk;->ab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/gj;->nv:Ltmsdkobf/gk;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ltmsdkobf/gk;->h(J)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Ltmsdkobf/gj;->U()V

    goto :goto_0
.end method

.method static synthetic a(Ltmsdkobf/gj;Ltmsdkobf/gi$b;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 401
    if-eqz p1, :cond_0

    iput-object p1, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    iget v0, p0, Ltmsdkobf/gj;->kg:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v0}, Ltmsdkobf/gi$b;->S()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Ltmsdkobf/gj;->ki:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltmsdkobf/gj;->c(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Ltmsdkobf/gj;->ki:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltmsdkobf/gj;->mU:Ltmsdkobf/gf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/gj;->mU:Ltmsdkobf/gf;

    iget-object v1, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v1}, Ltmsdkobf/gi$b;->bI()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v3}, Ltmsdkobf/gi$b;->bI()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    iget-object v5, p0, Ltmsdkobf/gj;->kG:Landroid/content/Context;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Ltmsdkobf/gf;->a(DDLtmsdkobf/gf$a;)V

    goto :goto_0
.end method

.method static synthetic a(Ltmsdkobf/gj;Ltmsdkobf/gk$b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 430
    if-eqz p1, :cond_0

    iput-object p1, p0, Ltmsdkobf/gj;->nA:Ltmsdkobf/gk$b;

    invoke-direct {p0}, Ltmsdkobf/gj;->U()V

    :cond_0
    return-void
.end method

.method static synthetic a(Ltmsdkobf/gj;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 148
    iput-boolean p1, p0, Ltmsdkobf/gj;->a:Z

    return-void
.end method

.method private ax(Ljava/lang/String;)V
    .locals 11
    .parameter "locRes"

    .prologue
    .line 668
    :try_start_0
    new-instance v6, Ltmsdkobf/gr;

    invoke-direct {v6}, Ltmsdkobf/gr;-><init>()V

    iput-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 672
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 673
    .local v3, jsonResultObject:Lorg/json/JSONObject;
    const-string v6, "location"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 674
    .local v1, jsonInfoObject:Lorg/json/JSONObject;
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 675
    const-string v7, "latitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const/4 v9, 0x6

    .line 674
    invoke-static {v7, v8, v9}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v7

    iput-wide v7, v6, Ltmsdkobf/gr;->nT:D

    .line 676
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 677
    const-string v7, "longitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const/4 v9, 0x6

    .line 676
    invoke-static {v7, v8, v9}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v7

    iput-wide v7, v6, Ltmsdkobf/gr;->nU:D

    .line 678
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 679
    const-string v7, "altitude"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const/4 v9, 0x1

    .line 678
    invoke-static {v7, v8, v9}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v7

    iput-wide v7, v6, Ltmsdkobf/gr;->nV:D

    .line 680
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 681
    const-string v7, "accuracy"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    const/4 v9, 0x1

    .line 680
    invoke-static {v7, v8, v9}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v7

    iput-wide v7, v6, Ltmsdkobf/gr;->nW:D

    .line 682
    iget-object v7, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget v6, p0, Ltmsdkobf/gj;->ki:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_9

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v7, Ltmsdkobf/gr;->og:Z

    .line 683
    const-string v6, "bearing"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, bearing:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, um:I
    const/16 v4, -0x64

    .line 685
    .local v4, mr:I
    if-eqz v0, :cond_0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 686
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 688
    :cond_0
    iget-object v6, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    if-eqz v6, :cond_1

    .line 689
    iget-object v6, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    iget v4, v6, Ltmsdkobf/gh$b;->kj:I

    .line 691
    :cond_1
    iget-object v8, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iget-wide v6, v6, Ltmsdkobf/gr;->nW:D

    const/4 v9, 0x6

    if-lt v5, v9, :cond_a

    const-wide/high16 v6, 0x4044

    :goto_1
    iput-wide v6, v8, Ltmsdkobf/gr;->nW:D

    .line 692
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const/4 v7, 0x0

    iput v7, v6, Ltmsdkobf/gr;->oi:I

    .line 694
    iget v6, p0, Ltmsdkobf/gj;->kh:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iget v6, p0, Ltmsdkobf/gj;->ki:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 695
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const-string v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ltmsdkobf/gr;->nP:Ljava/lang/String;

    .line 696
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const-string v7, "addr"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ltmsdkobf/gr;->nQ:Ljava/lang/String;

    .line 697
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const/4 v7, 0x2

    iput v7, v6, Ltmsdkobf/gr;->oi:I

    .line 700
    :cond_2
    iget v6, p0, Ltmsdkobf/gj;->kh:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    iget v6, p0, Ltmsdkobf/gj;->kh:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 701
    :cond_3
    iget v6, p0, Ltmsdkobf/gj;->ki:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 702
    const-string v6, "details"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 703
    const-string v7, "subnation"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 704
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const-string v7, "name"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ltmsdkobf/gr;->aS(Ljava/lang/String;)V

    .line 705
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const-string v7, "town"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ltmsdkobf/gr;->ob:Ljava/lang/String;

    .line 706
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const-string v7, "village"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ltmsdkobf/gr;->oc:Ljava/lang/String;

    .line 707
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const-string v7, "street"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ltmsdkobf/gr;->od:Ljava/lang/String;

    .line 708
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const-string v7, "street_no"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Ltmsdkobf/gr;->oe:Ljava/lang/String;

    .line 709
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const/4 v7, 0x3

    iput v7, v6, Ltmsdkobf/gr;->oi:I

    .line 712
    :cond_4
    iget v6, p0, Ltmsdkobf/gj;->kh:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_5

    iget v6, p0, Ltmsdkobf/gj;->ki:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 714
    const-string v6, "details"

    .line 713
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 714
    const-string v7, "poilist"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 715
    .local v2, jsonPOIList:Lorg/json/JSONArray;
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    invoke-static {v2}, Ltmsdkobf/gj;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v6, Ltmsdkobf/gr;->of:Ljava/util/ArrayList;

    .line 716
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const/4 v7, 0x4

    iput v7, v6, Ltmsdkobf/gr;->oi:I

    .line 719
    .end local v2           #jsonPOIList:Lorg/json/JSONArray;
    :cond_5
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const/4 v7, 0x0

    iput v7, v6, Ltmsdkobf/gr;->oh:I

    .line 720
    new-instance v6, Ltmsdkobf/gr;

    iget-object v7, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    invoke-direct {v6, v7}, Ltmsdkobf/gr;-><init>(Ltmsdkobf/gr;)V

    iput-object v6, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    .line 721
    const/4 v6, 0x0

    iput v6, p0, Ltmsdkobf/gj;->kj:I

    .line 722
    iget-object v6, p0, Ltmsdkobf/gj;->nd:Ltmsdkobf/gg;

    if-eqz v6, :cond_6

    .line 723
    iget-object v6, p0, Ltmsdkobf/gj;->nd:Ltmsdkobf/gg;

    invoke-virtual {v6, p1}, Ltmsdkobf/gg;->aw(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    .end local v0           #bearing:Ljava/lang/String;
    .end local v1           #jsonInfoObject:Lorg/json/JSONObject;
    .end local v3           #jsonResultObject:Lorg/json/JSONObject;
    .end local v4           #mr:I
    .end local v5           #um:I
    :cond_6
    :goto_2
    iget-object v6, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    if-eqz v6, :cond_8

    iget v6, p0, Ltmsdkobf/gj;->kg:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    .line 732
    iget-object v6, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    if-eqz v6, :cond_7

    iget-object v6, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v6}, Ltmsdkobf/gi$b;->S()Z

    move-result v6

    if-nez v6, :cond_8

    .line 733
    :cond_7
    iget-object v6, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    iget-object v7, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    invoke-virtual {v6, v7}, Ltmsdkobf/gp;->onLocationUpdate(Ltmsdkobf/gr;)V

    .line 734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Ltmsdkobf/gj;->kn:J

    .line 736
    :cond_8
    return-void

    .line 682
    .restart local v1       #jsonInfoObject:Lorg/json/JSONObject;
    .restart local v3       #jsonResultObject:Lorg/json/JSONObject;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 691
    .restart local v0       #bearing:Ljava/lang/String;
    .restart local v4       #mr:I
    .restart local v5       #um:I
    :cond_a
    const/4 v9, 0x5

    if-ne v5, v9, :cond_b

    const-wide/high16 v6, 0x404e

    goto/16 :goto_1

    :cond_b
    const/4 v9, 0x4

    if-ne v5, v9, :cond_c

    const-wide v6, 0x4051800000000000L

    goto/16 :goto_1

    :cond_c
    const/4 v9, 0x3

    if-ne v5, v9, :cond_d

    const-wide v6, 0x4056800000000000L

    goto/16 :goto_1

    :cond_d
    const/4 v9, 0x2

    if-ne v5, v9, :cond_e

    const-wide v6, 0x405b800000000000L

    goto/16 :goto_1

    :cond_e
    const/16 v9, -0x48

    if-lt v4, v9, :cond_f

    if-nez v5, :cond_f

    const-wide v9, 0x3fdccccccccccccdL

    mul-double/2addr v6, v9

    const-wide/high16 v9, 0x4024

    div-double/2addr v6, v9

    double-to-int v6, v6

    mul-int/lit8 v6, v6, 0xa

    :goto_3
    int-to-double v6, v6

    goto/16 :goto_1

    :cond_f
    const-wide/high16 v9, 0x4059

    cmpg-double v9, v6, v9

    if-gtz v9, :cond_10

    const-wide/high16 v9, 0x3ff0

    sub-double/2addr v6, v9

    const-wide/high16 v9, 0x4024

    div-double/2addr v6, v9

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v6, v9

    double-to-int v6, v6

    mul-int/lit8 v6, v6, 0xa

    goto :goto_3

    :cond_10
    const-wide/high16 v9, 0x4059

    cmpl-double v9, v6, v9

    if-lez v9, :cond_11

    const-wide/high16 v9, 0x4089

    cmpg-double v9, v6, v9

    if-gtz v9, :cond_11

    const-wide v9, 0x3feb333333333333L

    mul-double/2addr v6, v9

    const-wide/high16 v9, 0x4024

    div-double/2addr v6, v9

    double-to-int v6, v6

    mul-int/lit8 v6, v6, 0xa

    goto :goto_3

    :cond_11
    const-wide v9, 0x3fe999999999999aL

    mul-double/2addr v6, v9

    const-wide/high16 v9, 0x4024

    div-double/2addr v6, v9

    double-to-int v6, v6

    mul-int/lit8 v6, v6, 0xa

    goto :goto_3

    .line 726
    .end local v0           #bearing:Ljava/lang/String;
    .end local v1           #jsonInfoObject:Lorg/json/JSONObject;
    .end local v3           #jsonResultObject:Lorg/json/JSONObject;
    .end local v4           #mr:I
    .end local v5           #um:I
    :catch_0
    move-exception v6

    new-instance v6, Ltmsdkobf/gr;

    invoke-direct {v6}, Ltmsdkobf/gr;-><init>()V

    iput-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 727
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const/4 v7, -0x1

    iput v7, v6, Ltmsdkobf/gr;->oi:I

    .line 728
    iget-object v6, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const/4 v7, 0x2

    iput v7, v6, Ltmsdkobf/gr;->oh:I

    .line 729
    const/4 v6, 0x2

    iput v6, p0, Ltmsdkobf/gj;->kj:I

    goto/16 :goto_2
.end method

.method static synthetic b(Ltmsdkobf/gj;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    invoke-direct {p0}, Ltmsdkobf/gj;->U()V

    return-void
.end method

.method static synthetic b(Ltmsdkobf/gj;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x3

    .line 438
    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    :cond_0
    iput v0, p0, Ltmsdkobf/gj;->kb:I

    iget-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    iget v1, p0, Ltmsdkobf/gj;->kb:I

    invoke-virtual {v0, v1}, Ltmsdkobf/gp;->onStatusUpdate(I)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized bJ()Ltmsdkobf/gj;
    .locals 2

    .prologue
    .line 220
    const-class v1, Ltmsdkobf/gj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/gj;->nz:Ltmsdkobf/gj;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Ltmsdkobf/gj;

    invoke-direct {v0}, Ltmsdkobf/gj;-><init>()V

    sput-object v0, Ltmsdkobf/gj;->nz:Ltmsdkobf/gj;

    .line 223
    :cond_0
    sget-object v0, Ltmsdkobf/gj;->nz:Ltmsdkobf/gj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Ltmsdkobf/gj;)Ltmsdkobf/gi$b;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    return-object v0
.end method

.method private c(Z)V
    .locals 7
    .parameter "passive"

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 552
    iget-object v1, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v1}, Ltmsdkobf/gi$b;->S()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    iget-object v1, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    invoke-virtual {v1}, Ltmsdkobf/gi$b;->bI()Landroid/location/Location;

    move-result-object v0

    .line 554
    .local v0, loc:Landroid/location/Location;
    new-instance v1, Ltmsdkobf/gr;

    invoke-direct {v1}, Ltmsdkobf/gr;-><init>()V

    iput-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 555
    iget-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 556
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 555
    invoke-static {v2, v3, v6}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v2

    iput-wide v2, v1, Ltmsdkobf/gr;->nT:D

    .line 557
    iget-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 558
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 557
    invoke-static {v2, v3, v6}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v2

    iput-wide v2, v1, Ltmsdkobf/gr;->nU:D

    .line 559
    iget-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 560
    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    .line 559
    invoke-static {v2, v3, v5}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v2

    iput-wide v2, v1, Ltmsdkobf/gr;->nV:D

    .line 561
    iget-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    .line 562
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    .line 561
    invoke-static {v2, v3, v5}, Ltmsdkobf/gm;->b(DI)D

    move-result-wide v2

    iput-wide v2, v1, Ltmsdkobf/gr;->nW:D

    .line 563
    iget-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iput-boolean v4, v1, Ltmsdkobf/gr;->og:Z

    .line 564
    if-nez p1, :cond_1

    .line 565
    iget-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iput v4, v1, Ltmsdkobf/gr;->oh:I

    .line 568
    :goto_0
    iget-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iput v4, v1, Ltmsdkobf/gr;->oi:I

    .line 569
    new-instance v1, Ltmsdkobf/gr;

    iget-object v2, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    invoke-direct {v1, v2}, Ltmsdkobf/gr;-><init>(Ltmsdkobf/gr;)V

    iput-object v1, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    .line 570
    iput v4, p0, Ltmsdkobf/gj;->kj:I

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Ltmsdkobf/gj;->kn:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 572
    iget-object v1, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    if-eqz v1, :cond_0

    iget v1, p0, Ltmsdkobf/gj;->kg:I

    if-ne v1, v5, :cond_0

    .line 573
    iget-object v1, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    iget-object v2, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    invoke-virtual {v1, v2}, Ltmsdkobf/gp;->onLocationUpdate(Ltmsdkobf/gr;)V

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Ltmsdkobf/gj;->kn:J

    .line 577
    .end local v0           #loc:Landroid/location/Location;
    :cond_0
    return-void

    .line 567
    .restart local v0       #loc:Landroid/location/Location;
    :cond_1
    iget-object v1, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    iput v5, v1, Ltmsdkobf/gr;->oh:I

    goto :goto_0
.end method

.method static synthetic d(Ltmsdkobf/gj;)V
    .locals 0
    .parameter

    .prologue
    .line 743
    invoke-direct {p0}, Ltmsdkobf/gj;->V()V

    return-void
.end method

.method static synthetic e(Ltmsdkobf/gj;)I
    .locals 1
    .parameter

    .prologue
    .line 177
    iget v0, p0, Ltmsdkobf/gj;->kk:I

    return v0
.end method

.method static synthetic f(Ltmsdkobf/gj;)I
    .locals 1
    .parameter

    .prologue
    .line 141
    iget v0, p0, Ltmsdkobf/gj;->ki:I

    return v0
.end method

.method static synthetic g(Ltmsdkobf/gj;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Ltmsdkobf/gj;->kG:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final Q()V
    .locals 2

    .prologue
    .line 311
    iget-object v1, p0, Ltmsdkobf/gj;->jR:[B

    monitor-enter v1

    .line 312
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    .line 313
    iget-object v0, p0, Ltmsdkobf/gj;->nt:Ltmsdkobf/gi;

    invoke-virtual {v0}, Ltmsdkobf/gi;->Q()V

    .line 314
    iget-object v0, p0, Ltmsdkobf/gj;->nn:Ltmsdkobf/gh;

    invoke-virtual {v0}, Ltmsdkobf/gh;->Q()V

    .line 315
    iget-object v0, p0, Ltmsdkobf/gj;->nv:Ltmsdkobf/gk;

    invoke-virtual {v0}, Ltmsdkobf/gk;->Q()V

    .line 311
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ltmsdkobf/gh$b;)V
    .locals 4
    .parameter "sosoCellInfo"

    .prologue
    .line 359
    iget-object v2, p0, Ltmsdkobf/gj;->jU:[B

    monitor-enter v2

    .line 360
    :try_start_0
    const-string v1, "onCellProviderUpdate"

    invoke-static {v1}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, p1}, Ltmsdkobf/gj$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 363
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    invoke-virtual {v1, v0}, Ltmsdkobf/gj$b;->sendMessage(Landroid/os/Message;)Z

    .line 359
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Ltmsdkobf/gi$b;)V
    .locals 4
    .parameter "sosoGpsInfo"

    .prologue
    .line 339
    iget-object v2, p0, Ltmsdkobf/gj;->jU:[B

    monitor-enter v2

    .line 340
    :try_start_0
    const-string v1, "onGpsProviderUpdate"

    invoke-static {v1}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1}, Ltmsdkobf/gj$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 343
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    invoke-virtual {v1, v0}, Ltmsdkobf/gj$b;->sendMessage(Landroid/os/Message;)Z

    .line 339
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Ltmsdkobf/gk$b;)V
    .locals 4
    .parameter "sosoWifiInfo"

    .prologue
    .line 369
    iget-object v2, p0, Ltmsdkobf/gj;->jU:[B

    monitor-enter v2

    .line 370
    :try_start_0
    const-string v1, "onWifiProviderUpdate"

    invoke-static {v1}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, p1}, Ltmsdkobf/gj$b;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 373
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    invoke-virtual {v1, v0}, Ltmsdkobf/gj$b;->sendMessage(Landroid/os/Message;)Z

    .line 369
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final a(Landroid/content/Context;Ltmsdkobf/gp;)Z
    .locals 12
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    iget-object v8, p0, Ltmsdkobf/gj;->jR:[B

    monitor-enter v8

    .line 243
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 244
    :cond_0
    monitor-exit v8

    .line 306
    :goto_0
    return v5

    .line 246
    :cond_1
    :try_start_0
    iget-object v7, p0, Ltmsdkobf/gj;->kI:Ljava/lang/String;

    invoke-static {v7}, Ltmsdkobf/gm;->as(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 247
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v5

    monitor-exit v8

    throw v5

    .line 250
    :cond_2
    :try_start_1
    new-instance v7, Ltmsdkobf/gj$b;

    const/4 v9, 0x0

    invoke-direct {v7, p0, v9}, Ltmsdkobf/gj$b;-><init>(Ltmsdkobf/gj;B)V

    iput-object v7, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    .line 251
    iput-object p1, p0, Ltmsdkobf/gj;->kG:Landroid/content/Context;

    .line 252
    iput-object p2, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    .line 254
    new-instance v7, Ltmsdkobf/gj$2;

    invoke-direct {v7, p0}, Ltmsdkobf/gj$2;-><init>(Ltmsdkobf/gj;)V

    iput-object v7, p0, Ltmsdkobf/gj;->kB:Ltmsdkobf/dh;

    .line 263
    invoke-static {}, Ltmsdkobf/dw;->aa()Ltmsdkobf/dw;

    move-result-object v7

    iget-object v9, p0, Ltmsdkobf/gj;->kB:Ltmsdkobf/dh;

    invoke-virtual {v7, v9}, Ltmsdkobf/dw;->a(Ltmsdkobf/dh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :try_start_2
    iget-object v7, p0, Ltmsdkobf/gj;->kG:Landroid/content/Context;

    .line 267
    const-string v9, "phone"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 266
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 268
    .local v3, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ltmsdkobf/gj;->jP:Ljava/lang/String;

    .line 269
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ltmsdkobf/gj;->jQ:Ljava/lang/String;

    .line 270
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Ltmsdkobf/gj;->jV:Ljava/lang/String;

    .line 272
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 271
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 273
    .local v1, connMgr:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 274
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v7

    iput-boolean v7, p0, Ltmsdkobf/gj;->jS:Z

    .line 276
    :cond_3
    iget-object v7, p0, Ltmsdkobf/gj;->kG:Landroid/content/Context;

    iget-object v9, p0, Ltmsdkobf/gj;->nD:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    .line 277
    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v7, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    .end local v1           #connMgr:Landroid/net/ConnectivityManager;
    .end local v3           #telMgr:Landroid/telephony/TelephonyManager;
    :goto_1
    :try_start_3
    iget-object v7, p0, Ltmsdkobf/gj;->jP:Ljava/lang/String;

    if-nez v7, :cond_5

    const-string v7, ""

    :goto_2
    iput-object v7, p0, Ltmsdkobf/gj;->jP:Ljava/lang/String;

    .line 281
    iget-object v7, p0, Ltmsdkobf/gj;->jQ:Ljava/lang/String;

    if-nez v7, :cond_6

    const-string v7, ""

    :goto_3
    iput-object v7, p0, Ltmsdkobf/gj;->jQ:Ljava/lang/String;

    .line 282
    iget-object v7, p0, Ltmsdkobf/gj;->jV:Ljava/lang/String;

    if-nez v7, :cond_7

    const-string v7, ""

    :goto_4
    iput-object v7, p0, Ltmsdkobf/gj;->jV:Ljava/lang/String;

    .line 285
    iget-object v7, p0, Ltmsdkobf/gj;->jP:Ljava/lang/String;

    if-nez v7, :cond_8

    const-string v7, "0123456789ABCDEF"

    :goto_5
    invoke-static {v7}, Ltmsdkobf/gn;->aA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 284
    iput-object v7, p0, Ltmsdkobf/gj;->kS:Ljava/lang/String;

    .line 287
    iget-object v7, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    invoke-virtual {v7}, Ltmsdkobf/gp;->getReqType()I

    move-result v7

    iput v7, p0, Ltmsdkobf/gj;->kg:I

    .line 288
    iget-object v7, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    invoke-virtual {v7}, Ltmsdkobf/gp;->getReqLevel()I

    move-result v7

    iput v7, p0, Ltmsdkobf/gj;->kh:I

    .line 289
    iget-object v7, p0, Ltmsdkobf/gj;->nw:Ltmsdkobf/gp;

    invoke-virtual {v7}, Ltmsdkobf/gp;->getReqGeoType()I

    move-result v7

    iput v7, p0, Ltmsdkobf/gj;->ki:I

    .line 291
    iget-object v7, p0, Ltmsdkobf/gj;->nt:Ltmsdkobf/gi;

    .line 292
    iget-object v9, p0, Ltmsdkobf/gj;->kG:Landroid/content/Context;

    .line 291
    invoke-virtual {v7, p0, v9}, Ltmsdkobf/gi;->a(Ltmsdkobf/gi$c;Landroid/content/Context;)Z

    move-result v2

    .line 293
    .local v2, gpsStarted:Z
    iget-object v7, p0, Ltmsdkobf/gj;->nn:Ltmsdkobf/gh;

    .line 294
    iget-object v9, p0, Ltmsdkobf/gj;->kG:Landroid/content/Context;

    .line 293
    invoke-virtual {v7, v9, p0}, Ltmsdkobf/gh;->a(Landroid/content/Context;Ltmsdkobf/gh$c;)Z

    move-result v0

    .line 295
    .local v0, cellStarted:Z
    iget-object v7, p0, Ltmsdkobf/gj;->nv:Ltmsdkobf/gk;

    .line 296
    iget-object v9, p0, Ltmsdkobf/gj;->kG:Landroid/content/Context;

    const/4 v10, 0x1

    .line 295
    invoke-virtual {v7, v9, p0, v10}, Ltmsdkobf/gk;->a(Landroid/content/Context;Ltmsdkobf/gk$c;I)Z

    move-result v4

    .line 297
    .local v4, wifiStarted:Z
    invoke-static {}, Ltmsdkobf/gg;->bH()Ltmsdkobf/gg;

    move-result-object v7

    iput-object v7, p0, Ltmsdkobf/gj;->nd:Ltmsdkobf/gg;

    .line 298
    invoke-static {}, Ltmsdkobf/gf;->bG()Ltmsdkobf/gf;

    move-result-object v7

    iput-object v7, p0, Ltmsdkobf/gj;->mU:Ltmsdkobf/gf;

    .line 299
    const/4 v7, 0x0

    iput-object v7, p0, Ltmsdkobf/gj;->ns:Ltmsdkobf/gi$b;

    const/4 v7, 0x0

    iput-object v7, p0, Ltmsdkobf/gj;->nj:Ltmsdkobf/gh$b;

    const/4 v7, 0x0

    iput-object v7, p0, Ltmsdkobf/gj;->nA:Ltmsdkobf/gk$b;

    const/4 v7, 0x0

    iput-object v7, p0, Ltmsdkobf/gj;->nB:Ltmsdkobf/gr;

    const/4 v7, 0x0

    iput-object v7, p0, Ltmsdkobf/gj;->nC:Ltmsdkobf/gr;

    const/4 v7, 0x0

    iput v7, p0, Ltmsdkobf/gj;->kj:I

    iget-object v7, p0, Ltmsdkobf/gj;->nd:Ltmsdkobf/gg;

    if-eqz v7, :cond_4

    iget-object v7, p0, Ltmsdkobf/gj;->nd:Ltmsdkobf/gg;

    invoke-virtual {v7}, Ltmsdkobf/gg;->Q()V

    .line 301
    :cond_4
    if-eqz v2, :cond_9

    iget v7, p0, Ltmsdkobf/gj;->kg:I

    if-nez v7, :cond_9

    .line 302
    monitor-exit v8

    move v5, v6

    goto/16 :goto_0

    .line 280
    .end local v0           #cellStarted:Z
    .end local v2           #gpsStarted:Z
    .end local v4           #wifiStarted:Z
    :cond_5
    iget-object v7, p0, Ltmsdkobf/gj;->jP:Ljava/lang/String;

    goto/16 :goto_2

    .line 281
    :cond_6
    iget-object v7, p0, Ltmsdkobf/gj;->jQ:Ljava/lang/String;

    goto :goto_3

    .line 282
    :cond_7
    iget-object v7, p0, Ltmsdkobf/gj;->jV:Ljava/lang/String;

    goto :goto_4

    .line 285
    :cond_8
    iget-object v7, p0, Ltmsdkobf/gj;->jP:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 303
    .restart local v0       #cellStarted:Z
    .restart local v2       #gpsStarted:Z
    .restart local v4       #wifiStarted:Z
    :cond_9
    if-nez v0, :cond_a

    if-eqz v4, :cond_b

    .line 304
    :cond_a
    monitor-exit v8

    move v5, v6

    goto/16 :goto_0

    .line 306
    :cond_b
    monitor-exit v8

    goto/16 :goto_0

    .end local v0           #cellStarted:Z
    .end local v2           #gpsStarted:Z
    .end local v4           #wifiStarted:Z
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method

.method public final aB(I)V
    .locals 5
    .parameter "wifiState"

    .prologue
    .line 379
    iget-object v2, p0, Ltmsdkobf/gj;->jU:[B

    monitor-enter v2

    .line 380
    :try_start_0
    const-string v1, "onWifiProviderUpdate"

    invoke-static {v1}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    const/4 v3, 0x5

    .line 382
    const/4 v4, 0x0

    .line 381
    invoke-virtual {v1, v3, p1, v4}, Ltmsdkobf/gj$b;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 383
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    invoke-virtual {v1, v0}, Ltmsdkobf/gj$b;->sendMessage(Landroid/os/Message;)Z

    .line 379
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final av(I)V
    .locals 5
    .parameter "gpsState"

    .prologue
    .line 349
    iget-object v2, p0, Ltmsdkobf/gj;->jU:[B

    monitor-enter v2

    .line 350
    :try_start_0
    const-string v1, "onWifiProviderUpdate"

    invoke-static {v1}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    const/4 v3, 0x4

    .line 352
    const/4 v4, 0x0

    .line 351
    invoke-virtual {v1, v3, p1, v4}, Ltmsdkobf/gj$b;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 353
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    invoke-virtual {v1, v0}, Ltmsdkobf/gj$b;->sendMessage(Landroid/os/Message;)Z

    .line 349
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final b(DD)V
    .locals 5
    .parameter "curLatitude"
    .parameter "curLongitude"

    .prologue
    .line 389
    iget-object v3, p0, Ltmsdkobf/gj;->jU:[B

    monitor-enter v3

    .line 390
    :try_start_0
    const-string v2, "onGetDeflectData"

    invoke-static {v2}, Ltmsdkobf/gl;->aw(Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ltmsdkobf/gj$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 392
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/location/Location;

    const-string v2, "Deflect"

    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, loc:Landroid/location/Location;
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 394
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 395
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    iget-object v2, p0, Ltmsdkobf/gj;->nx:Ltmsdkobf/gj$b;

    invoke-virtual {v2, v1}, Ltmsdkobf/gj$b;->sendMessage(Landroid/os/Message;)Z

    .line 389
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v0           #loc:Landroid/location/Location;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "appName"
    .parameter "regCode"

    .prologue
    .line 324
    invoke-static {}, Ltmsdkobf/ge;->bF()Ltmsdkobf/ge;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltmsdkobf/ge;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iput-object p1, p0, Ltmsdkobf/gj;->kI:Ljava/lang/String;

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
