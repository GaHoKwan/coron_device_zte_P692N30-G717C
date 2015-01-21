.class public abstract Lcom/mediatek/apst/target/util/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0xc3500

.field private static sByteBuffer:Ljava/nio/ByteBuffer;

.field public static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const v0, 0xc3500

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/util/Global;->sByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllSIMList()Ljava/util/List;
    .locals 8
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
    .line 298
    sget-object v6, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    .line 299
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v1, detailInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;>;"
    sget-object v6, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 301
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v4, :cond_2

    .line 302
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 304
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 305
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 306
    .local v3, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    new-instance v0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;-><init>()V

    .line 307
    .local v0, deailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    if-eqz v3, :cond_0

    .line 308
    iget v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v0, v6}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setColor(I)V

    .line 309
    iget-object v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setDisplayName(Ljava/lang/String;)V

    .line 310
    iget-object v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setNumber(Ljava/lang/String;)V

    .line 311
    iget-wide v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v6, v6

    invoke-virtual {v0, v6}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setSimId(I)V

    .line 312
    iget-object v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setICCId(Ljava/lang/String;)V

    .line 313
    iget v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v0, v6}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setSlotId(I)V

    .line 314
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v6}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSimAccessibleBySlot(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setAccessible(Z)V

    .line 304
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 325
    .end local v0           #deailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .end local v1           #detailInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;>;"
    .end local v2           #i:I
    .end local v3           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    .end local v5           #size:I
    :cond_1
    const-string v6, "mContext is null"

    invoke-static {v6}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 328
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method public static getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/mediatek/apst/target/util/Global;->sByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static getSimIdBySlot(I)I
    .locals 7
    .parameter "slotId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, -0x1

    .line 276
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The slotId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    const/4 v2, 0x2

    if-ne v2, p0, :cond_2

    .line 278
    :cond_0
    const-string v2, "This is not 3 sim or 4 sim phone."

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 291
    :cond_1
    :goto_0
    return v1

    .line 277
    :cond_2
    const/4 v2, 0x3

    if-eq v2, p0, :cond_0

    .line 281
    sget-object v2, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 282
    sget-object v2, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 283
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_1

    .line 284
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The simId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v1, v1

    goto :goto_0

    .line 289
    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    const-string v2, "mContext is null"

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSimInfoById(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 7
    .parameter "simId"

    .prologue
    .line 158
    const/4 v4, 0x1

    if-lt p0, v4, :cond_0

    const/16 v4, 0x64

    if-le p0, v4, :cond_2

    .line 159
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The simId is wrong! The simId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;-><init>()V

    .line 210
    :cond_1
    :goto_0
    return-object v0

    .line 162
    :cond_2
    const/4 v3, 0x0

    .line 163
    .local v3, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    sget-object v4, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    if-eqz v4, :cond_5

    .line 164
    sget-object v4, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    int-to-long v5, p0

    invoke-static {v4, v5, v6}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 165
    new-instance v0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;-><init>()V

    .line 166
    .local v0, deailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    if-eqz v3, :cond_3

    .line 167
    iget v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setColor(I)V

    .line 168
    iget-object v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setDisplayName(Ljava/lang/String;)V

    .line 169
    iget-object v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setNumber(Ljava/lang/String;)V

    .line 170
    iget-wide v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setSimId(I)V

    .line 171
    iget-object v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setICCId(Ljava/lang/String;)V

    .line 172
    iget v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setSlotId(I)V

    .line 174
    iget v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v4}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSimAccessibleBySlot(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setAccessible(Z)V

    .line 181
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 183
    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 188
    :try_start_0
    const-string v4, "USIM"

    iget v5, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setSIMType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #iTel:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get simInfo is null by simId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    .end local v0           #deailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    invoke-direct {v0}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;-><init>()V

    goto :goto_0

    .line 191
    .restart local v0       #deailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .restart local v2       #iTel:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setSIMType(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 207
    .end local v0           #deailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .end local v2           #iTel:Lcom/android/internal/telephony/ITelephony;
    :cond_5
    const-string v4, "mContext is null"

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;-><init>()V

    goto/16 :goto_0
.end method

.method public static getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    .locals 9
    .parameter "slotId"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 219
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The slotId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;-><init>()V

    .line 221
    .local v0, deailInfo:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    invoke-virtual {v0, p0}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setSlotId(I)V

    .line 224
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->getSimAccessibleBySlot(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setAccessible(Z)V

    .line 226
    if-ne v7, p0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :cond_1
    if-eq v8, p0, :cond_0

    .line 229
    sget-object v4, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    if-eqz v4, :cond_4

    .line 230
    sget-object v4, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    invoke-static {v4, p0}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 232
    .local v3, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_2

    .line 233
    iget v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setColor(I)V

    .line 234
    iget-object v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setDisplayName(Ljava/lang/String;)V

    .line 235
    iget-object v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setNumber(Ljava/lang/String;)V

    .line 236
    iget-wide v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setSimId(I)V

    .line 237
    iget-object v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setICCId(Ljava/lang/String;)V

    .line 240
    :cond_2
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 242
    .local v2, iTel:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 247
    :try_start_0
    const-string v4, "USIM"

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/ITelephony;->getIccCardTypeGemini(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 248
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setSIMType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {v0, v4}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->setSIMType(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    .end local v2           #iTel:Lcom/android/internal/telephony/ITelephony;
    .end local v3           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_4
    const-string v4, "mContext is null"

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSimName(I)Ljava/lang/String;
    .locals 8
    .parameter "simId"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 98
    const-string v1, ""

    .line 99
    .local v1, simName:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The simId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    if-lt p0, v6, :cond_0

    const/16 v3, 0x64

    if-le p0, v3, :cond_1

    .line 101
    :cond_0
    const-string v3, "The simId is wrong!"

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    move-object v2, v1

    .line 115
    .end local v1           #simName:Ljava/lang/String;
    .local v2, simName:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 104
    .end local v2           #simName:Ljava/lang/String;
    .restart local v1       #simName:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 105
    sget-object v3, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    int-to-long v4, p0

    invoke-static {v3, v4, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 106
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_2

    .line 107
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 108
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The simName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    :goto_1
    move-object v2, v1

    .line 115
    .end local v1           #simName:Ljava/lang/String;
    .restart local v2       #simName:Ljava/lang/String;
    goto :goto_0

    .line 112
    .end local v2           #simName:Ljava/lang/String;
    .restart local v1       #simName:Ljava/lang/String;
    :cond_3
    const-string v3, "mContext is null"

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSourceLocationById(I)I
    .locals 7
    .parameter "simId"

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    .line 124
    const/16 v1, -0xff

    .line 125
    .local v1, sourceLocation:I
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The indicateSimOrPhone is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logD([Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    if-ne p0, v2, :cond_0

    .line 149
    :goto_0
    return v2

    .line 130
    :cond_0
    if-lt p0, v6, :cond_1

    const/16 v2, 0x64

    if-le p0, v2, :cond_2

    :cond_1
    move v2, v1

    .line 132
    goto :goto_0

    .line 134
    :cond_2
    sget-object v2, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    .line 135
    sget-object v2, Lcom/mediatek/apst/target/util/Global;->sContext:Landroid/content/Context;

    int-to-long v3, p0

    invoke-static {v2, v3, v4}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 136
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_3

    .line 138
    iget v2, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    add-int/lit8 v1, v2, 0x1

    .line 144
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The sim slot from SimInfoRecord is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .end local v0           #info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_1
    move v2, v1

    .line 149
    goto :goto_0

    .line 146
    :cond_4
    const-string v2, "mContext is null"

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static initFeatureOptionList()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/apst/util/FeatureOptionControl;->BACKUP_N_BACKAPP:I

    .line 335
    const/4 v0, 0x2

    sput v0, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    .line 336
    const/4 v0, 0x4

    sput v0, Lcom/mediatek/apst/util/FeatureOptionControl;->MESSAGE_C_DRAFTMSGDISPLAY:I

    .line 337
    const/16 v0, 0x8

    sput v0, Lcom/mediatek/apst/util/FeatureOptionControl;->BACKUP_N_SDSWAP:I

    .line 338
    return-void
.end method
