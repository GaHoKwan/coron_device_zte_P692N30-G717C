.class public Lcom/zte/update/tools/Verifiction;
.super Ljava/lang/Object;
.source "Verifiction.java"


# static fields
.field private static final preStorageRetio:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAavailableStorage(J)Z
    .locals 4
    .parameter "size"

    .prologue
    .line 31
    invoke-static {}, Lcom/zte/update/tools/MemoryTools;->getAvailableDataStorage()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, p0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
