.class Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryAdnInfoThread"
.end annotation


# static fields
.field private static final EVENT_QUERY_PHB_ADN_INFO:I = 0x64


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mSimId:I

.field myPhone:Lcom/android/internal/telephony/Phone;

.field private recordSize:[I


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "simId"
    .parameter "myP"

    .prologue
    .line 514
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mDone:Z

    .line 515
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mSimId:I

    .line 517
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->myPhone:Lcom/android/internal/telephony/Phone;

    .line 518
    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mDone:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I

    return-object p1
.end method


# virtual methods
.method public GetAdnStorageInfo()[I
    .locals 5

    .prologue
    .line 568
    monitor-enter p0

    .line 569
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 571
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 606
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 577
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 580
    .local v2, response:Landroid/os/Message;
    const/4 v1, 0x0

    .line 582
    .local v1, filehandle:Lcom/android/internal/telephony/IccFileHandler;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->myPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mSimId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccFileHandlerGemini(I)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    .line 588
    if-eqz v1, :cond_1

    .line 589
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->getPhbRecordInfo(Landroid/os/Message;)V

    .line 595
    :goto_1
    iget-boolean v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_2

    .line 597
    :try_start_4
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "wait for done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 599
    :catch_1
    move-exception v0

    .line 601
    .restart local v0       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 591
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "GetAdnStorageInfo: filehandle is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v3, 0x0

    monitor-exit p0

    .line 605
    :goto_2
    return-object v3

    .line 604
    :cond_2
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->recordSize:[I

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 526
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 527
    monitor-enter p0

    .line 528
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mHandler:Landroid/os/Handler;

    .line 562
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 563
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 565
    return-void

    .line 563
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSimId(I)V
    .locals 1
    .parameter "simId"

    .prologue
    .line 520
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mSimId:I

    .line 521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx$QueryAdnInfoThread;->mDone:Z

    .line 522
    return-void
.end method
