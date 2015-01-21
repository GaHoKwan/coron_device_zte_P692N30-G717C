.class public Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "NotifySDStateReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private sdCardAvailableSpace:J

.field private sdCardPath:Ljava/lang/String;

.field private sdCardTotalSpace:J

.field private sdMounted:Z

.field private sdWriteable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public getSdCardAvailableSpace()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->sdCardAvailableSpace:J

    return-wide v0
.end method

.method public getSdCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->sdCardPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSdCardTotalSpace()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->sdCardTotalSpace:J

    return-wide v0
.end method

.method public isSdMounted()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->sdMounted:Z

    return v0
.end method

.method public isSdWriteable()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->sdWriteable:Z

    return v0
.end method

.method public setSdCardAvailableSpace(J)V
    .locals 0
    .parameter "sdCardAvailableSpace"

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->sdCardAvailableSpace:J

    .line 117
    return-void
.end method

.method public setSdCardPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sdCardPath"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->sdCardPath:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSdCardTotalSpace(J)V
    .locals 0
    .parameter "sdCardTotalSpace"

    .prologue
    .line 112
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->sdCardTotalSpace:J

    .line 113
    return-void
.end method

.method public setSdMounted(Z)V
    .locals 0
    .parameter "sdMounted"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->sdMounted:Z

    .line 101
    return-void
.end method

.method public setSdWriteable(Z)V
    .locals 0
    .parameter "sdWriteable"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySDStateReq;->sdWriteable:Z

    .line 105
    return-void
.end method
