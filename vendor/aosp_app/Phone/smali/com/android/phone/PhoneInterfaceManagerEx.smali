.class public Lcom/android/phone/PhoneInterfaceManagerEx;
.super Lcom/mediatek/common/telephony/ITelephonyEx$Stub;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;,
        Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;,
        Lcom/android/phone/PhoneInterfaceManagerEx$UnlockSim;,
        Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;,
        Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;,
        Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    }
.end annotation


# static fields
.field private static final CMD_GET_SCA_DONE:I = 0xc

.field private static final CMD_HANDLE_GET_SCA:I = 0xb

.field private static final CMD_HANDLE_SET_SCA:I = 0xd

.field private static final CMD_SET_SCA_DONE:I = 0xe

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneInterfaceManagerEx"

.field public static final NETWORK_LOCK_TOTAL_COUNT:I = 0x5

.field public static final QUERY_SIMME_LOCK_RESULT:Ljava/lang/String; = "com.android.phone.QUERY_SIMME_LOCK_RESULT"

.field public static final SIMME_LOCK_LEFT_COUNT:Ljava/lang/String; = "com.android.phone.SIMME_LOCK_LEFT_COUNT"

.field public static final VERIFY_INCORRECT_PASSWORD:I = 0x1

.field public static final VERIFY_RESULT_EXCEPTION:I = 0x2

.field public static final VERIFY_RESULT_PASS:I

.field private static sInstance:Lcom/android/phone/PhoneInterfaceManagerEx;


# instance fields
.field private mAdnInfoThread:Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

.field mApp:Lcom/android/phone/PhoneGlobals;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "app"
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;-><init>()V

    .line 97
    iput-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    .line 140
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 141
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 142
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 143
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManagerEx;Lcom/android/phone/PhoneInterfaceManagerEx$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    .line 144
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerEx;->publish()V

    .line 145
    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneInterfaceManagerEx;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManagerEx;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManagerEx;
    .locals 4
    .parameter "app"
    .parameter "phone"

    .prologue
    .line 128
    const-class v1, Lcom/android/phone/PhoneInterfaceManagerEx;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerEx;->sInstance:Lcom/android/phone/PhoneInterfaceManagerEx;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerEx;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/PhoneInterfaceManagerEx;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManagerEx;->sInstance:Lcom/android/phone/PhoneInterfaceManagerEx;

    .line 134
    :goto_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManagerEx;->sInstance:Lcom/android/phone/PhoneInterfaceManagerEx;

    monitor-exit v1

    return-object v0

    .line 132
    :cond_0
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneInterfaceManagerEx;->sInstance:Lcom/android/phone/PhoneInterfaceManagerEx;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 154
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgrEx] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 158
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgrEx] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 150
    const-string v0, "phoneEx"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 151
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 293
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 294
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_0
    new-instance v1, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 298
    .local v1, request:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 299
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 302
    monitor-enter v1

    .line 303
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 305
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v2

    goto :goto_0

    .line 310
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManagerEx$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 310
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public getAdnStorageInfo(I)[I
    .locals 3
    .parameter "simId"

    .prologue
    .line 490
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdnStorageInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    if-nez v0, :cond_0

    .line 492
    const-string v0, "PhoneInterfaceManagerEx"

    const-string v1, "getAdnStorageInfo new thread "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, p1, v1}, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;-><init>(ILcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    .line 494
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 499
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->GetAdnStorageInfo()[I

    move-result-object v0

    return-object v0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mAdnInfoThread:Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->setSimId(I)V

    .line 497
    const-string v0, "PhoneInterfaceManagerEx"

    const-string v1, "getAdnStorageInfo old thread "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInternationalCardType(I)I
    .locals 3
    .parameter "simId"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-nez v0, :cond_0

    .line 884
    const/4 v0, -0x1

    .line 887
    :goto_0
    return v0

    .line 885
    :cond_0
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IRC] getInternationalCardType simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getInternationalCardType()I

    move-result v0

    goto :goto_0
.end method

.method public getInternationalNetworkMode()I
    .locals 3

    .prologue
    .line 904
    const-string v0, "PhoneInterfaceManagerEx"

    const-string v1, "[IRC] getInternationalNetworkMode "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getInternationalNetworkMode()I

    move-result v0

    .line 910
    :goto_0
    return v0

    .line 908
    :cond_0
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IRC] getInternationalNetworkMode Fail, FeatureOption.EVDO_DT_SUPPORT = true mPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " return default NW_MODE_INTERNATIONAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScAddressGemini(I)Ljava/lang/String;
    .locals 6
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    .line 683
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "getScAddressGemini: enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    .line 689
    const-string v4, "PhoneInterfaceManagerEx"

    const-string v5, "[sca Invalid sim id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :goto_0
    return-object v3

    .line 693
    :cond_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    invoke-direct {v0, p0, v3, p1}, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;-><init>(Lcom/android/phone/PhoneInterfaceManagerEx;Ljava/lang/String;I)V

    .line 695
    .local v0, addr:Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    new-instance v2, Lcom/android/phone/PhoneInterfaceManagerEx$1;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/PhoneInterfaceManagerEx$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerEx;Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;)V

    .line 704
    .local v2, sender:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 706
    :try_start_0
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "[sca thread join"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_1
    const-string v3, "PhoneInterfaceManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScAddressGemini: exit with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;->scAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v3, v0, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;->scAddr:Ljava/lang/String;

    goto :goto_0

    .line 708
    :catch_0
    move-exception v1

    .line 709
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "[sca throw interrupted exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSmsDefaultSim()I
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSmsDefaultSim()I

    move-result v0

    return v0
.end method

.method public isPhbReady()Z
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManagerEx;->isPhbReadyExt(I)Z

    move-result v0

    return v0
.end method

.method public isPhbReadyExt(I)Z
    .locals 3
    .parameter "simId"

    .prologue
    .line 630
    const-string v0, "false"

    .line 631
    .local v0, strPhbReady:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 632
    const-string v1, "gsm.sim.ril.phbready.2"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isPhbReady] sim id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPhbReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 643
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 633
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 634
    const-string v1, "gsm.sim.ril.phbready.3"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 635
    :cond_1
    const/4 v1, 0x3

    if-ne v1, p1, :cond_2

    .line 636
    const-string v1, "gsm.sim.ril.phbready.4"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 638
    :cond_2
    const-string v1, "gsm.sim.ril.phbready"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isPhbReadyGemini(I)Z
    .locals 3
    .parameter "simId"

    .prologue
    .line 655
    const-string v0, "false"

    .line 656
    .local v0, strPhbReady:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 657
    const-string v1, "gsm.sim.ril.phbready.2"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isPhbReady] sim id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPhbReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManagerEx;->log(Ljava/lang/String;)V

    .line 668
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 658
    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 659
    const-string v1, "gsm.sim.ril.phbready.3"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 660
    :cond_1
    const/4 v1, 0x3

    if-ne v1, p1, :cond_2

    .line 661
    const-string v1, "gsm.sim.ril.phbready.4"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 663
    :cond_2
    const-string v1, "gsm.sim.ril.phbready"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public queryNetworkLock(II)Landroid/os/Bundle;
    .locals 3
    .parameter "category"
    .parameter "simId"

    .prologue
    .line 454
    const-string v1, "PhoneInterfaceManagerEx"

    const-string v2, "queryNetworkLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerEx$UnlockSim;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerEx$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 460
    .local v0, queryNetworkLockState:Lcom/android/phone/PhoneInterfaceManagerEx$UnlockSim;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 461
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerEx$UnlockSim;->queryNetworkLock(I)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public repollIccStateForNetworkLock(IZ)V
    .locals 1
    .parameter "simId"
    .parameter "needIntent"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IccCard;->repollIccStateForModemSmlChangeFeatrue(Z)V

    .line 759
    return-void
.end method

.method public setInternationalNetworkMode(I)V
    .locals 3
    .parameter "networkMode"

    .prologue
    .line 894
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IRC] setInternationalNetwoekMode networkMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setInternationalNetworkMode(I)V

    .line 901
    :goto_0
    return-void

    .line 898
    :cond_0
    const-string v0, "PhoneInterfaceManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IRC] setInternationalNetwoekMode networkMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Fail, FeatureOption.EVDO_DT_SUPPORT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPhone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "alphaTag"
    .parameter "number"
    .parameter "simId"

    .prologue
    const/4 v1, 0x0

    .line 863
    if-nez p2, :cond_0

    .line 864
    const-string v2, "PhoneInterfaceManagerEx"

    const-string v3, "number = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :goto_0
    return v1

    .line 867
    :cond_0
    if-ltz p3, :cond_1

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-le p3, v2, :cond_2

    .line 868
    :cond_1
    const-string v2, "PhoneInterfaceManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error simId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 873
    :cond_2
    const-string v1, "PhoneInterfaceManagerEx"

    const-string v2, "setLine1Number"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v1, p3}, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;-><init>(Lcom/android/internal/telephony/Phone;I)V

    .line 876
    .local v0, setMsisdn:Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 878
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->setLine1Number(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public setScAddressGemini(Ljava/lang/String;I)V
    .locals 5
    .parameter "address"
    .parameter "simId"

    .prologue
    .line 718
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "setScAddressGemini: enter"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    .line 724
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "[sca Invalid sim id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :goto_0
    return-void

    .line 728
    :cond_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;-><init>(Lcom/android/phone/PhoneInterfaceManagerEx;Ljava/lang/String;I)V

    .line 730
    .local v0, addr:Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;
    new-instance v2, Lcom/android/phone/PhoneInterfaceManagerEx$2;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/PhoneInterfaceManagerEx$2;-><init>(Lcom/android/phone/PhoneInterfaceManagerEx;Lcom/android/phone/PhoneInterfaceManagerEx$ScAddrGemini;)V

    .line 739
    .local v2, sender:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 741
    :try_start_0
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "[sca thread join"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_1
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "setScAddressGemini: exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "[sca throw interrupted exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;I)I
    .locals 3
    .parameter "strPasswd"
    .parameter "simId"

    .prologue
    .line 467
    const-string v1, "PhoneInterfaceManagerEx"

    const-string v2, "supplyNetworkDepersonalization"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerEx$UnlockSim;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerEx;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerEx$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 473
    .local v0, supplyNetworkLock:Lcom/android/phone/PhoneInterfaceManagerEx$UnlockSim;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 474
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerEx$UnlockSim;->supplyNetworkLock(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
