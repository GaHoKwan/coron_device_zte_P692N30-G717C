.class Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetMsisdn"
.end annotation


# static fields
.field private static final CMD_SET_MSISDN_COMPLETE:I = 0x64

.field private static final DEFAULT_ALPHATAG:Ljava/lang/String; = "Default Tag"


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mResult:I

.field private mSimId:I

.field private myPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 1
    .parameter "myP"
    .parameter "simId"

    .prologue
    const/4 v0, 0x0

    .line 772
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 764
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mDone:Z

    .line 765
    iput v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mResult:I

    .line 773
    iput p2, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mSimId:I

    .line 774
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->myPhone:Lcom/android/internal/telephony/Phone;

    .line 775
    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 761
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mDone:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 761
    iput p1, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mResult:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 780
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 781
    monitor-enter p0

    .line 782
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn$1;-><init>(Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mHandler:Landroid/os/Handler;

    .line 804
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 805
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 807
    return-void

    .line 805
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setLine1Number(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    .line 811
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 813
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 814
    :catch_0
    move-exception v1

    .line 815
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 811
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 819
    :cond_0
    :try_start_3
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "Enter setLine1Number"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 821
    .local v0, callback:Landroid/os/Message;
    move-object v2, p1

    .line 824
    .local v2, myTag:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 825
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->myPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mSimId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getLine1AlphaTagGemini(I)Ljava/lang/String;

    move-result-object v2

    .line 833
    :cond_1
    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 834
    :cond_2
    const-string v2, "Default Tag"

    .line 837
    :cond_3
    const-string v3, "PhoneInterfaceManagerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":Tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->myPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v4, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mSimId:I

    invoke-virtual {v3, v2, p2, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setLine1NumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    .line 846
    :goto_1
    iget-boolean v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_4

    .line 848
    :try_start_4
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "wait for done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 850
    :catch_1
    move-exception v1

    .line 852
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 856
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_4
    const-string v3, "PhoneInterfaceManagerEx"

    const-string v4, "done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget v3, p0, Lcom/android/phone/PhoneInterfaceManagerEx$SetMsisdn;->mResult:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v3
.end method
