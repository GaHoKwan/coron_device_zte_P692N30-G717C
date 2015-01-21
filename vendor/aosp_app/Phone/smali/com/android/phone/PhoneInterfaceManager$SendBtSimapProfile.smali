.class Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendBtSimapProfile"
.end annotation


# static fields
.field private static final BTSAP_CONNECT_COMPLETE:I = 0x12c

.field private static final BTSAP_DISCONNECT_COMPLETE:I = 0x12d

.field private static final BTSAP_POWEROFF_COMPLETE:I = 0x12f

.field private static final BTSAP_POWERON_COMPLETE:I = 0x12e

.field private static final BTSAP_RESETSIM_COMPLETE:I = 0x130

.field private static final BTSAP_TRANSFER_APDU_COMPLETE:I = 0x131

.field static final sInstSync:Ljava/lang/Object;

.field private static sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;


# instance fields
.field private mBtRsp:Landroid/telephony/BtSimapOperResponse;

.field private mBtSapPhone:Lcom/android/internal/telephony/Phone;

.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:Ljava/util/ArrayList;

.field private mRet:I

.field private mStrResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2428
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstSync:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    .line 2445
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2421
    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;

    .line 2423
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    .line 2446
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    .line 2447
    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    .line 2448
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2418
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mStrResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)Landroid/telephony/BtSimapOperResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2418
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2418
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 2418
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2418
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    return p1
.end method

.method public static getInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;
    .locals 2
    .parameter "phone"

    .prologue
    .line 2438
    sget-object v1, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2439
    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    if-nez v0, :cond_0

    .line 2440
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    .line 2442
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2443
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->sInstance:Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;

    return-object v0

    .line 2442
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized btSimapApduRequest(ILjava/lang/String;)I
    .locals 9
    .parameter "type"
    .parameter "cmdAPDU"

    .prologue
    .line 2859
    monitor-enter p0

    const/4 v7, 0x0

    .line 2860
    .local v7, ret:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2862
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2863
    :catch_0
    move-exception v6

    .line 2864
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2859
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2867
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2868
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x131

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2870
    .local v4, callback:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2871
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v5

    .line 2872
    .local v5, slotId:I
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapApduRequest GEMINI connect slotId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    invoke-static {v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2874
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x5

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2883
    .end local v5           #slotId:I
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2885
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2887
    :catch_1
    move-exception v6

    .line 2889
    .restart local v6       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2876
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v5       #slotId:I
    :cond_1
    const/4 v7, 0x7

    move v8, v7

    .line 2900
    .end local v5           #slotId:I
    .end local v7           #ret:I
    .local v8, ret:I
    :goto_2
    monitor-exit p0

    return v8

    .line 2880
    .end local v8           #ret:I
    .restart local v7       #ret:I
    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1, p2, v4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2892
    :cond_3
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v0, :cond_4

    .line 2894
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btSimapApduRequest APDU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getApduString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    :goto_3
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapApduRequest ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2900
    .end local v7           #ret:I
    .restart local v8       #ret:I
    goto :goto_2

    .line 2896
    .end local v8           #ret:I
    .restart local v7       #ret:I
    :cond_4
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method declared-synchronized btSimapConnectSIM(I)I
    .locals 8
    .parameter "simId"

    .prologue
    .line 2639
    monitor-enter p0

    const/4 v7, 0x0

    .line 2640
    .local v7, ret:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2642
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2643
    :catch_0
    move-exception v6

    .line 2644
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2639
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2647
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2648
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2649
    .local v4, callback:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2650
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2655
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_2

    .line 2657
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2659
    :catch_1
    move-exception v6

    .line 2661
    .restart local v6       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 2652
    .end local v6           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2665
    :cond_2
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v0, :cond_4

    .line 2668
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2669
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setBtConnectedSimId(I)V

    .line 2670
    const-string v1, "PhoneInterfaceManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapConnectSIM GEMINI connect Sim is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :cond_3
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btSimapConnectSIM curType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SupType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getSupportType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ATR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    :goto_2
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapConnectSIM ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2680
    monitor-exit p0

    return v7

    .line 2676
    :cond_4
    :try_start_6
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method declared-synchronized btSimapDisconnectSIM()I
    .locals 9

    .prologue
    .line 2684
    monitor-enter p0

    const/4 v7, 0x0

    .line 2685
    .local v7, ret:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2687
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2688
    :catch_0
    move-exception v6

    .line 2689
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2684
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2692
    :cond_0
    :try_start_3
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "synchronized btSimapDisconnectSIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2694
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12d

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2695
    .local v4, callback:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2696
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v5

    .line 2697
    .local v5, slotId:I
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapDisconnectSIM GEMINI connect Sim is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2698
    invoke-static {v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2699
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2709
    .end local v5           #slotId:I
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2711
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2713
    :catch_1
    move-exception v6

    .line 2715
    .restart local v6       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2701
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v5       #slotId:I
    :cond_1
    const/4 v7, 0x7

    move v8, v7

    .line 2726
    .end local v5           #slotId:I
    .end local v7           #ret:I
    .local v8, ret:I
    :goto_2
    monitor-exit p0

    return v8

    .line 2705
    .end local v8           #ret:I
    .restart local v7       #ret:I
    :cond_2
    :try_start_6
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "synchronized btSimapDisconnectSIM  not gemini "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2718
    :cond_3
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v0, :cond_4

    .line 2720
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2721
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setBtConnectedSimId(I)V

    .line 2724
    :cond_4
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    .line 2725
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapDisconnectSIM ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v8, v7

    .line 2726
    .end local v7           #ret:I
    .restart local v8       #ret:I
    goto :goto_2
.end method

.method declared-synchronized btSimapPowerOffSIM()I
    .locals 9

    .prologue
    .line 2819
    monitor-enter p0

    const/4 v7, 0x0

    .line 2820
    .local v7, ret:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2822
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2823
    :catch_0
    move-exception v6

    .line 2824
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2819
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2827
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2828
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2830
    .local v4, callback:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2831
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v5

    .line 2832
    .local v5, slotId:I
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapResetSIM GEMINI connect slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    invoke-static {v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2834
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2843
    .end local v5           #slotId:I
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2845
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2847
    :catch_1
    move-exception v6

    .line 2849
    .restart local v6       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2836
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v5       #slotId:I
    :cond_1
    const/4 v7, 0x7

    move v8, v7

    .line 2855
    .end local v5           #slotId:I
    .end local v7           #ret:I
    .local v8, ret:I
    :goto_2
    monitor-exit p0

    return v8

    .line 2840
    .end local v8           #ret:I
    .restart local v7       #ret:I
    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2852
    :cond_3
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    .line 2854
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapPowerOffSIM ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v8, v7

    .line 2855
    .end local v7           #ret:I
    .restart local v8       #ret:I
    goto :goto_2
.end method

.method declared-synchronized btSimapPowerOnSIM(I)I
    .locals 9
    .parameter "type"

    .prologue
    .line 2775
    monitor-enter p0

    const/4 v7, 0x0

    .line 2776
    .local v7, ret:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2778
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2779
    :catch_0
    move-exception v6

    .line 2780
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2775
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2783
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2784
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2786
    .local v4, callback:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2787
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v5

    .line 2788
    .local v5, slotId:I
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapResetSIM GEMINI connect slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    invoke-static {v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2790
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x2

    const/4 v3, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2799
    .end local v5           #slotId:I
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2801
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2803
    :catch_1
    move-exception v6

    .line 2805
    .restart local v6       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2792
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v5       #slotId:I
    :cond_1
    const/4 v7, 0x7

    move v8, v7

    .line 2815
    .end local v5           #slotId:I
    .end local v7           #ret:I
    .local v8, ret:I
    :goto_2
    monitor-exit p0

    return v8

    .line 2796
    .end local v8           #ret:I
    .restart local v7       #ret:I
    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, v4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2808
    :cond_3
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v0, :cond_4

    .line 2810
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btSimapPowerOnSIM curType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ATR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    :goto_3
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapPowerOnSIM ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2815
    .end local v7           #ret:I
    .restart local v8       #ret:I
    goto :goto_2

    .line 2812
    .end local v8           #ret:I
    .restart local v7       #ret:I
    :cond_4
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method declared-synchronized btSimapResetSIM(I)I
    .locals 9
    .parameter "type"

    .prologue
    .line 2730
    monitor-enter p0

    const/4 v7, 0x0

    .line 2731
    .local v7, ret:I
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2733
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2734
    :catch_0
    move-exception v6

    .line 2735
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2730
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2738
    :cond_0
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z

    .line 2739
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x130

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 2741
    .local v4, callback:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2742
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getBtConnectedSimId()I

    move-result v5

    .line 2743
    .local v5, slotId:I
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapResetSIM GEMINI connect slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    invoke-static {v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2745
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x4

    const/4 v3, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V

    .line 2754
    .end local v5           #slotId:I
    :goto_1
    iget-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    .line 2756
    :try_start_4
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "wait for done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2758
    :catch_1
    move-exception v6

    .line 2760
    .restart local v6       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2747
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v5       #slotId:I
    :cond_1
    const/4 v7, 0x7

    move v8, v7

    .line 2771
    .end local v5           #slotId:I
    .end local v7           #ret:I
    .local v8, ret:I
    :goto_2
    monitor-exit p0

    return v8

    .line 2751
    .end local v8           #ret:I
    .restart local v7       #ret:I
    :cond_2
    :try_start_6
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtSapPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, v4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2763
    :cond_3
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2764
    iget v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I

    if-nez v0, :cond_4

    .line 2765
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "btSimapResetSIM curType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getCurType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ATR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    invoke-virtual {v2}, Landroid/telephony/BtSimapOperResponse;->getAtrString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    :goto_3
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synchronized btSimapResetSIM ret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2771
    .end local v7           #ret:I
    .restart local v8       #ret:I
    goto :goto_2

    .line 2767
    .end local v8           #ret:I
    .restart local v7       #ret:I
    :cond_4
    iget v7, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mRet:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public run()V
    .locals 1

    .prologue
    .line 2457
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2458
    monitor-enter p0

    .line 2459
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mHandler:Landroid/os/Handler;

    .line 2633
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2634
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2635
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2636
    return-void

    .line 2634
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBtOperResponse(Landroid/telephony/BtSimapOperResponse;)V
    .locals 0
    .parameter "btRsp"

    .prologue
    .line 2452
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$SendBtSimapProfile;->mBtRsp:Landroid/telephony/BtSimapOperResponse;

    .line 2453
    return-void
.end method
