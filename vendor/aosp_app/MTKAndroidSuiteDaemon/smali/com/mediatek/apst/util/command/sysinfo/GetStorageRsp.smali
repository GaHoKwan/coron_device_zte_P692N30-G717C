.class public Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "GetStorageRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private internalAvailableSpace:J

.field private internalTotalSpace:J

.field private sdCardAvailableSpace:J

.field private sdCardPath:Ljava/lang/String;

.field private sdCardTotalSpace:J

.field private sdMounted:Z

.field private sdWriteable:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 73
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 74
    return-void
.end method


# virtual methods
.method public getInternalAvailableSpace()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->internalAvailableSpace:J

    return-wide v0
.end method

.method public getInternalTotalSpace()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->internalTotalSpace:J

    return-wide v0
.end method

.method public getSdCardAvailableSpace()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->sdCardAvailableSpace:J

    return-wide v0
.end method

.method public getSdCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->sdCardPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSdCardTotalSpace()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->sdCardTotalSpace:J

    return-wide v0
.end method

.method public isSdMounted()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->sdMounted:Z

    return v0
.end method

.method public isSdWriteable()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->sdWriteable:Z

    return v0
.end method

.method public setInternalAvailableSpace(J)V
    .locals 0
    .parameter "internalAvailableSpace"

    .prologue
    .line 135
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->internalAvailableSpace:J

    .line 136
    return-void
.end method

.method public setInternalTotalSpace(J)V
    .locals 0
    .parameter "internalTotalSpace"

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->internalTotalSpace:J

    .line 132
    return-void
.end method

.method public setSdCardAvailableSpace(J)V
    .locals 0
    .parameter "sdCardAvailableSpace"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->sdCardAvailableSpace:J

    .line 128
    return-void
.end method

.method public setSdCardPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sdCardPath"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->sdCardPath:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setSdCardTotalSpace(J)V
    .locals 0
    .parameter "sdCardTotalSpace"

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->sdCardTotalSpace:J

    .line 124
    return-void
.end method

.method public setSdMounted(Z)V
    .locals 0
    .parameter "sdMounted"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->sdMounted:Z

    .line 112
    return-void
.end method

.method public setSdWriteable(Z)V
    .locals 0
    .parameter "sdWriteable"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetStorageRsp;->sdWriteable:Z

    .line 116
    return-void
.end method
