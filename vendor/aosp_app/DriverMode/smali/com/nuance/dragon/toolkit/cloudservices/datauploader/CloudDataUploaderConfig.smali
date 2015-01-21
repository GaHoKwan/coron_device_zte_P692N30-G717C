.class public Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;
.super Ljava/lang/Object;


# instance fields
.field public final commandChunkSize:I

.field public final commandName:Ljava/lang/String;

.field public final commandSettings:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

.field public final commandTimeoutMs:I

.field public final commandTotalSize:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v1, "NVC_DATA_UPLOAD_CMD"

    const/4 v2, 0x0

    const v3, 0x9c40

    const/16 v4, 0x32

    const/16 v5, 0xc8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;-><init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nuance/dragon/toolkit/data/Data$Dictionary;III)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "commandName"

    invoke-static {v0, p1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "commandTimeoutMs"

    const-string v4, "stricly greater than 0"

    if-lez p3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "commandChunkSize"

    const-string v4, "stricly greater than 0"

    if-lez p4, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v3, v4, v0}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "commandTotalSize"

    const-string v3, "stricly greater than 0"

    if-lez p5, :cond_2

    :goto_2
    invoke-static {v0, v3, v1}, Lcom/nuance/dragon/toolkit/util/internal/d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandName:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandSettings:Lcom/nuance/dragon/toolkit/data/Data$Dictionary;

    iput p3, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandTimeoutMs:I

    iput p4, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandChunkSize:I

    iput p5, p0, Lcom/nuance/dragon/toolkit/cloudservices/datauploader/CloudDataUploaderConfig;->commandTotalSize:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
