.class public final Lcom/nuance/dragon/toolkit/speechkit/SKCloudConfig;
.super Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[BZ)V
    .locals 10

    const/4 v1, 0x0

    new-instance v4, Lcom/nuance/dragon/toolkit/speechkit/SKCloudConfig$1;

    invoke-direct {v4, p5}, Lcom/nuance/dragon/toolkit/speechkit/SKCloudConfig$1;-><init>(Z)V

    sget-object v8, Lcom/nuance/dragon/toolkit/audio/AudioType;->SPEEX_WB:Lcom/nuance/dragon/toolkit/audio/AudioType;

    sget-object v9, Lcom/nuance/dragon/toolkit/audio/AudioType;->SPEEX_WB:Lcom/nuance/dragon/toolkit/audio/AudioType;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    invoke-direct/range {v0 .. v9}, Lcom/nuance/dragon/toolkit/cloudservices/CloudConfig;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;[BLjava/lang/String;Lcom/nuance/dragon/toolkit/audio/AudioType;Lcom/nuance/dragon/toolkit/audio/AudioType;)V

    return-void
.end method
