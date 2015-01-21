.class public Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;
.super Ljava/lang/Object;


# instance fields
.field public final appId:Ljava/lang/String;

.field public final appKey:[B

.field public final appName:Ljava/lang/String;

.field public final configs:Ljava/util/List;

.field public final deviceId:Ljava/lang/String;

.field public final host:Ljava/lang/String;

.field public final playerCodec:Lcom/nuance/dragon/toolkit/audio/AudioType;

.field public final port:I

.field public final recorderCodec:Lcom/nuance/dragon/toolkit/audio/AudioType;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[BLcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 10

    const/4 v1, 0x0

    new-instance v4, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$1;

    invoke-direct {v4}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$1;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;[BLjava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[BLcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;Z)V
    .locals 11

    const/4 v2, 0x0

    new-instance v5, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$2;

    move/from16 v0, p7

    invoke-direct {v5, v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$2;-><init>(Z)V

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;[BLjava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 10

    const/4 v1, 0x0

    new-instance v4, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$3;

    invoke-direct {v4}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$3;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;[BLjava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;Z)V
    .locals 11

    const/4 v2, 0x0

    new-instance v5, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$4;

    move/from16 v0, p8

    invoke-direct {v5, v0}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig$4;-><init>(Z)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;[BLjava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;[BLjava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "appId"

    invoke-static {v0, p5}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "host"

    invoke-static {v0, p2}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "port"

    const-string v3, "greater than 0"

    if-lez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "appKey"

    invoke-static {v0, p6}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "recorderCodec"

    invoke-static {v0, p8}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "playerCodec"

    invoke-static {v0, p9}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->host:Ljava/lang/String;

    iput p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->port:I

    iput-object p4, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->configs:Ljava/util/List;

    iput-object p5, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->appId:Ljava/lang/String;

    iput-object p7, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->deviceId:Ljava/lang/String;

    iput-object p8, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->recorderCodec:Lcom/nuance/dragon/toolkit/audio/AudioType;

    iput-object p9, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->playerCodec:Lcom/nuance/dragon/toolkit/audio/AudioType;

    array-length v0, p6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->appKey:[B

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;->appKey:[B

    array-length v2, p6

    invoke-static {p6, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
