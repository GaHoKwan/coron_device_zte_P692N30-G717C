.class public Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "NotifySimStateReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private bInfoChanged:Z

.field private contactsCount:I

.field private sim1Accessible:Z

.field private sim1DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

.field private sim2Accessible:Z

.field private sim2DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

.field private sim3Accessible:Z

.field private sim3DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

.field private sim4Accessible:Z

.field private sim4DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

.field private simAccessible:Z

.field private simDetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

.field private slotInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->slotInfoList:Ljava/util/List;

    .line 86
    return-void
.end method


# virtual methods
.method public getContactsCount()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->contactsCount:I

    return v0
.end method

.method public getSim1DetailInfo()Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim1DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    return-object v0
.end method

.method public getSim2DetailInfo()Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim2DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    return-object v0
.end method

.method public getSim3DetailInfo()Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim3DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    return-object v0
.end method

.method public getSim4DetailInfo()Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim4DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    return-object v0
.end method

.method public getSimDetailInfo()Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->simDetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    return-object v0
.end method

.method public getSlotInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->slotInfoList:Ljava/util/List;

    return-object v0
.end method

.method public isInfoChanged()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->bInfoChanged:Z

    return v0
.end method

.method public isSim1Accessible()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim1Accessible:Z

    return v0
.end method

.method public isSim2Accessible()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim2Accessible:Z

    return v0
.end method

.method public isSim3Accessible()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim3Accessible:Z

    return v0
.end method

.method public isSim4Accessible()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim4Accessible:Z

    return v0
.end method

.method public isSimAccessible()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->simAccessible:Z

    return v0
.end method

.method public setContactsCount(I)V
    .locals 0
    .parameter "contactsCount"

    .prologue
    .line 166
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->contactsCount:I

    .line 167
    return-void
.end method

.method public setInfoChanged(Z)V
    .locals 0
    .parameter "bInfoChanged"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->bInfoChanged:Z

    .line 191
    return-void
.end method

.method public setSim1Accessible(Z)V
    .locals 0
    .parameter "sim1Accessible"

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim1Accessible:Z

    .line 151
    return-void
.end method

.method public setSim1DetailInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V
    .locals 0
    .parameter "sim1DetailInfo"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim1DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .line 175
    return-void
.end method

.method public setSim2Accessible(Z)V
    .locals 0
    .parameter "sim2Accessible"

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim2Accessible:Z

    .line 155
    return-void
.end method

.method public setSim2DetailInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V
    .locals 0
    .parameter "sim2DetailInfo"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim2DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .line 179
    return-void
.end method

.method public setSim3Accessible(Z)V
    .locals 0
    .parameter "sim3Accessible"

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim3Accessible:Z

    .line 159
    return-void
.end method

.method public setSim3DetailInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V
    .locals 0
    .parameter "sim3DetailInfo"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim3DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .line 183
    return-void
.end method

.method public setSim4Accessible(Z)V
    .locals 0
    .parameter "sim4Accessible"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim4Accessible:Z

    .line 163
    return-void
.end method

.method public setSim4DetailInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V
    .locals 0
    .parameter "sim4DetailInfo"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->sim4DetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .line 187
    return-void
.end method

.method public setSimAccessible(Z)V
    .locals 0
    .parameter "simAccessible"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->simAccessible:Z

    .line 147
    return-void
.end method

.method public setSimDetailInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V
    .locals 0
    .parameter "simDetailInfo"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->simDetailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .line 171
    return-void
.end method

.method public setSlotInfoList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, slotInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/NotifySimStateReq;->slotInfoList:Ljava/util/List;

    .line 195
    return-void
.end method
