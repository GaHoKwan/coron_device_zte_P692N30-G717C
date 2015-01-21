.class public Lcom/mediatek/apst/util/command/sysinfo/NotifyStorageReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "NotifyStorageReq.java"


# static fields
.field public static final EXTERNAL:I = 0x2

.field public static final INTERNAL:I = 0x1

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private availableSpace:J

.field private storageType:I

.field private totalSpace:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public getAvailableSpace()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifyStorageReq;->availableSpace:J

    return-wide v0
.end method

.method public getStorageType()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifyStorageReq;->storageType:I

    return v0
.end method

.method public getTotalSpace()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifyStorageReq;->totalSpace:J

    return-wide v0
.end method

.method public setAvailableSpace(J)V
    .locals 0
    .parameter "availableSpace"

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifyStorageReq;->availableSpace:J

    .line 110
    return-void
.end method

.method public setStorageType(I)V
    .locals 0
    .parameter "storageType"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifyStorageReq;->storageType:I

    .line 102
    return-void
.end method

.method public setTotalSpace(J)V
    .locals 0
    .parameter "totalSpace"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifyStorageReq;->totalSpace:J

    .line 106
    return-void
.end method
