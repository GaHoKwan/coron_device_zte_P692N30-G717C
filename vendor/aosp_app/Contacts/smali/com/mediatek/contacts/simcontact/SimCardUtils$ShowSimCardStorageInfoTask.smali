.class public Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;
.super Landroid/os/AsyncTask;
.source "SimCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simcontact/SimCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowSimCardStorageInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

.field private static sNeedPopUp:Z

.field private static sSurplugMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDlgContent:Ljava/lang/String;

.field private mIsCancelled:Z

.field private mIsException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    .line 435
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sNeedPopUp:Z

    .line 436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 450
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 431
    iput-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    .line 432
    iput-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 433
    iput-object v1, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mDlgContent:Ljava/lang/String;

    .line 434
    iput-object v1, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    .line 451
    iput-object p1, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    .line 452
    const-string v0, "SimCardUtils"

    const-string v1, "[ShowSimCardStorageInfoTask] onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method

.method public static getSurplugCount(I)I
    .locals 4
    .parameter "slotId"

    .prologue
    .line 534
    const-string v1, "SimCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSurplugCount sSurplugMap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-object v1, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    sget-object v1, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 537
    .local v0, result:I
    const-string v1, "SimCardUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSurplugCount result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v0           #result:I
    :goto_0
    return v0

    .line 540
    :cond_0
    const-string v1, "SimCardUtils"

    const-string v2, "getSurplugCount return -1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static showSimCardStorageInfo(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "needPopUp"

    .prologue
    .line 439
    sput-boolean p1, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sNeedPopUp:Z

    .line 440
    const-string v0, "SimCardUtils"

    const-string v1, "[ShowSimCardStorageInfoTask]_beg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    invoke-virtual {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->cancel()V

    .line 443
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    .line 445
    :cond_0
    new-instance v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    .line 446
    sget-object v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 447
    const-string v0, "SimCardUtils"

    const-string v1, "[ShowSimCardStorageInfoTask]_end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 515
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 516
    iput-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    .line 517
    const-string v0, "SimCardUtils"

    const-string v1, "[ShowSimCardStorageInfoTask]: mIsCancelled = true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 429
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "args"

    .prologue
    .line 457
    const-string v8, "SimCardUtils"

    const-string v9, "[ShowSimCardStorageInfoTask]: doInBackground_beg"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    sget-object v8, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 459
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimInfoList()Ljava/util/List;

    move-result-object v6

    .line 460
    .local v6, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const-string v8, "SimCardUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ShowSimCardStorageInfoTask]: simInfos.size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-boolean v8, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-nez v8, :cond_8

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .local v0, build:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 464
    .local v4, simId:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 465
    .local v5, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-lez v4, :cond_1

    .line 466
    const-string v8, "\n\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 469
    const/4 v7, 0x0

    .line 470
    .local v7, storageInfos:[I
    const-string v8, "SimCardUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ShowSimCardStorageInfoTask] simName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; simSlot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; simId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v8, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v8, ":\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :try_start_0
    const-string v8, "phoneEx"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v3

    .line 477
    .local v3, phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    iget-boolean v8, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-nez v8, :cond_4

    if-eqz v3, :cond_4

    .line 478
    iget v8, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-interface {v3, v8}, Lcom/mediatek/common/telephony/ITelephonyEx;->getAdnStorageInfo(I)[I

    move-result-object v7

    .line 479
    if-nez v7, :cond_2

    .line 480
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 481
    const-string v8, "SimCardUtils"

    const-string v9, " storageInfos is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v8, 0x0

    .line 511
    .end local v0           #build:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    .end local v4           #simId:I
    .end local v5           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v7           #storageInfos:[I
    :goto_0
    return-object v8

    .line 484
    .restart local v0       #build:Ljava/lang/StringBuilder;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    .restart local v4       #simId:I
    .restart local v5       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v7       #storageInfos:[I
    :cond_2
    const-string v8, "SimCardUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ShowSimCardStorageInfoTask] infos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    const-string v9, "SimCardUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slotId:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v10, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "||storage:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v7, :cond_5

    const-string v8, "NULL"

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "||used:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v7, :cond_6

    const-string v8, "NULL"

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz v7, :cond_3

    const/4 v8, 0x1

    aget v8, v7, v8

    if-lez v8, :cond_3

    .line 500
    sget-object v8, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sSurplugMap:Ljava/util/HashMap;

    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v7, v10

    const/4 v11, 0x0

    aget v11, v7, v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_3
    iget-object v8, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00b4

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    aget v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget v12, v7, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-boolean v8, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-eqz v8, :cond_0

    .line 505
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 487
    :cond_4
    :try_start_1
    const-string v8, "SimCardUtils"

    const-string v9, "[ShowSimCardStorageInfoTask]: phone = null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 491
    .end local v3           #phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    :catch_0
    move-exception v1

    .line 492
    .local v1, ex:Landroid/os/RemoteException;
    const-string v8, "SimCardUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ShowSimCardStorageInfoTask]_exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 494
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 496
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v3       #phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    :cond_5
    const/4 v8, 0x1

    aget v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_1

    :cond_6
    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_2

    .line 508
    .end local v3           #phoneEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    .end local v5           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v7           #storageInfos:[I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mDlgContent:Ljava/lang/String;

    .line 510
    .end local v0           #build:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #simId:I
    :cond_8
    const-string v8, "SimCardUtils"

    const-string v9, "[ShowSimCardStorageInfoTask]: doInBackground_end"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 429
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 522
    sput-object v3, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sInstance:Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;

    .line 523
    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->sNeedPopUp:Z

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mDlgContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 529
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsCancelled:Z

    .line 530
    iput-boolean v2, p0, Lcom/mediatek/contacts/simcontact/SimCardUtils$ShowSimCardStorageInfoTask;->mIsException:Z

    .line 531
    return-void
.end method
