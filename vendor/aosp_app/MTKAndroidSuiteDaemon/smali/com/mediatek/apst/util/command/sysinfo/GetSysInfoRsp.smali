.class public Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "GetSysInfoRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private SDCardAndEmmcState:[Z

.field private applicationsCount:I

.field private batteryLevel:I

.field private batteryScale:I

.field private contactsCount:I

.field private device:Ljava/lang/String;

.field private firmwareVersion:Ljava/lang/String;

.field private gemini:Z

.field private gemini_3_sim:Z

.field private gemini_4_sim:Z

.field private internalAvailableSpace:J

.field private internalTotalSpace:J

.field private mFeatureOptionList:[I

.field private manufacturer:Ljava/lang/String;

.field private messagesCount:I

.field private model:Ljava/lang/String;

.field private sdCardAvailableSpace:J

.field private sdCardPath:Ljava/lang/String;

.field private sdCardTotalSpace:J

.field private sdMounted:Z

.field private sdWriteable:Z

.field private sim1Accessible:Z

.field private sim1Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

.field private sim2Accessible:Z

.field private sim2Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

.field private sim3Accessible:Z

.field private sim3Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

.field private sim4Accessible:Z

.field private sim4Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

.field private simAccessible:Z

.field private simContactsCount:I

.field private simInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

.field private simInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->slotInfoList:Ljava/util/List;

    .line 118
    return-void
.end method


# virtual methods
.method public getApplicationsCount()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->applicationsCount:I

    return v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->batteryLevel:I

    return v0
.end method

.method public getBatteryScale()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->batteryScale:I

    return v0
.end method

.method public getContactsCount()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->contactsCount:I

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureOptionList()[I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->mFeatureOptionList:[I

    return-object v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInternalAvailableSpace()J
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->internalAvailableSpace:J

    return-wide v0
.end method

.method public getInternalTotalSpace()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->internalTotalSpace:J

    return-wide v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getMessagesCount()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->messagesCount:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getSDCardAndEmmcState()[Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->SDCardAndEmmcState:[Z

    return-object v0
.end method

.method public getSdCardAvailableSpace()J
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sdCardAvailableSpace:J

    return-wide v0
.end method

.method public getSdCardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sdCardPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSdCardTotalSpace()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sdCardTotalSpace:J

    return-wide v0
.end method

.method public getSim1Info()Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim1Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    return-object v0
.end method

.method public getSim2Info()Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim2Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    return-object v0
.end method

.method public getSim3Info()Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim3Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    return-object v0
.end method

.method public getSim4Info()Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim4Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    return-object v0
.end method

.method public getSimContactsCount()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->simContactsCount:I

    return v0
.end method

.method public getSimInfo()Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->simInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    return-object v0
.end method

.method public getSimInfoList()Ljava/util/List;
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
    .line 242
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->simInfoList:Ljava/util/List;

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
    .line 246
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->slotInfoList:Ljava/util/List;

    return-object v0
.end method

.method public isGemini()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->gemini:Z

    return v0
.end method

.method public isGemini3Sim()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->gemini_3_sim:Z

    return v0
.end method

.method public isGemini4Sim()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->gemini_4_sim:Z

    return v0
.end method

.method public isSdMounted()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sdMounted:Z

    return v0
.end method

.method public isSdWriteable()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sdWriteable:Z

    return v0
.end method

.method public isSim1Accessible()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim1Accessible:Z

    return v0
.end method

.method public isSim2Accessible()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim2Accessible:Z

    return v0
.end method

.method public isSim3Accessible()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim3Accessible:Z

    return v0
.end method

.method public isSim4Accessible()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim4Accessible:Z

    return v0
.end method

.method public isSimAccessible()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->simAccessible:Z

    return v0
.end method

.method public setApplicationsCount(I)V
    .locals 0
    .parameter "applicationsCount"

    .prologue
    .line 325
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->applicationsCount:I

    .line 326
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .parameter "batteryLevel"

    .prologue
    .line 281
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->batteryLevel:I

    .line 282
    return-void
.end method

.method public setBatteryScale(I)V
    .locals 0
    .parameter "batteryScale"

    .prologue
    .line 285
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->batteryScale:I

    .line 286
    return-void
.end method

.method public setContactsCount(I)V
    .locals 0
    .parameter "contactsCount"

    .prologue
    .line 317
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->contactsCount:I

    .line 318
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->device:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setFeatureOptionList([I)V
    .locals 0
    .parameter "mFeatureOptionList"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->mFeatureOptionList:[I

    .line 394
    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "firmwareVersion"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->firmwareVersion:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setGemini(Z)V
    .locals 0
    .parameter "gemini"

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->gemini:Z

    .line 330
    return-void
.end method

.method public setGemini3Sim(Z)V
    .locals 0
    .parameter "gemini"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->gemini_3_sim:Z

    .line 334
    return-void
.end method

.method public setGemini4Sim(Z)V
    .locals 0
    .parameter "gemini"

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->gemini_4_sim:Z

    .line 338
    return-void
.end method

.method public setInternalAvailableSpace(J)V
    .locals 0
    .parameter "internalAvailableSpace"

    .prologue
    .line 313
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->internalAvailableSpace:J

    .line 314
    return-void
.end method

.method public setInternalTotalSpace(J)V
    .locals 0
    .parameter "internalTotalSpace"

    .prologue
    .line 309
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->internalTotalSpace:J

    .line 310
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .parameter "manufacturer"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->manufacturer:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setMessagesCount(I)V
    .locals 0
    .parameter "messagesCount"

    .prologue
    .line 321
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->messagesCount:I

    .line 322
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->model:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setSDCardAndEmmcState([Z)V
    .locals 0
    .parameter "sDCardAndEmmcState"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->SDCardAndEmmcState:[Z

    .line 390
    return-void
.end method

.method public setSdCardAvailableSpace(J)V
    .locals 0
    .parameter "sdCardAvailableSpace"

    .prologue
    .line 305
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sdCardAvailableSpace:J

    .line 306
    return-void
.end method

.method public setSdCardPath(Ljava/lang/String;)V
    .locals 0
    .parameter "sdCardPath"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sdCardPath:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setSdCardTotalSpace(J)V
    .locals 0
    .parameter "sdCardTotalSpace"

    .prologue
    .line 301
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sdCardTotalSpace:J

    .line 302
    return-void
.end method

.method public setSdMounted(Z)V
    .locals 0
    .parameter "sdMounted"

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sdMounted:Z

    .line 290
    return-void
.end method

.method public setSdWriteable(Z)V
    .locals 0
    .parameter "sdWriteable"

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sdWriteable:Z

    .line 294
    return-void
.end method

.method public setSim1Accessible(Z)V
    .locals 0
    .parameter "sim1Accessible"

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim1Accessible:Z

    .line 346
    return-void
.end method

.method public setSim1Info(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V
    .locals 0
    .parameter "sim1Info"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim1Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .line 366
    return-void
.end method

.method public setSim2Accessible(Z)V
    .locals 0
    .parameter "sim2Accessible"

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim2Accessible:Z

    .line 350
    return-void
.end method

.method public setSim2Info(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V
    .locals 0
    .parameter "sim2Info"

    .prologue
    .line 369
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim2Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .line 370
    return-void
.end method

.method public setSim3Accessible(Z)V
    .locals 0
    .parameter "sim3Accessible"

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim3Accessible:Z

    .line 354
    return-void
.end method

.method public setSim3Info(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V
    .locals 0
    .parameter "sim3Info"

    .prologue
    .line 373
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim3Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .line 374
    return-void
.end method

.method public setSim4Accessible(Z)V
    .locals 0
    .parameter "sim4Accessible"

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim4Accessible:Z

    .line 358
    return-void
.end method

.method public setSim4Info(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V
    .locals 0
    .parameter "sim4Info"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->sim4Info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .line 378
    return-void
.end method

.method public setSimAccessible(Z)V
    .locals 0
    .parameter "simAccessible"

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->simAccessible:Z

    .line 342
    return-void
.end method

.method public setSimContactsCount(I)V
    .locals 0
    .parameter "simContactsCount"

    .prologue
    .line 261
    iput p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->simContactsCount:I

    .line 262
    return-void
.end method

.method public setSimInfo(Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;)V
    .locals 0
    .parameter "simInfo"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->simInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .line 362
    return-void
.end method

.method public setSimInfoList(Ljava/util/List;)V
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
    .line 381
    .local p1, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->simInfoList:Ljava/util/List;

    .line 382
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
    .line 385
    .local p1, slotInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sysinfo/GetSysInfoRsp;->slotInfoList:Ljava/util/List;

    .line 386
    return-void
.end method
