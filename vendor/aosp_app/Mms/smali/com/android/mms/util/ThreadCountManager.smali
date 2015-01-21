.class public Lcom/android/mms/util/ThreadCountManager;
.super Ljava/lang/Object;
.source "ThreadCountManager.java"


# static fields
.field public static final OP_FLAG_DECREASE:I = 0x1

.field public static final OP_FLAG_INCREASE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ThreadCountManager"

.field private static final THREAD_MAX_SIZE:I = 0x64

.field private static sInstance:Lcom/android/mms/util/ThreadCountManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method private get(Ljava/lang/Long;Landroid/content/Context;)I
    .locals 8
    .parameter "threadId"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 84
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v0

    .line 87
    .local v2, projection:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 90
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3, v2, v4, v5}, Landroid/provider/Telephony$Sms;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 91
    if-nez v1, :cond_1

    .line 99
    if-eqz v1, :cond_0

    .line 100
    const-string v5, "ThreadCountManager"

    const-string v6, "close cursor"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 95
    .local v0, cnt:I
    const-string v5, "ThreadCountManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sms count is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    if-eqz v1, :cond_0

    .line 100
    const-string v5, "ThreadCountManager"

    const-string v6, "close cursor"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 99
    .end local v0           #cnt:I
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_2

    .line 100
    const-string v6, "ThreadCountManager"

    const-string v7, "close cursor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v5
.end method

.method public static declared-synchronized getInstance()Lcom/android/mms/util/ThreadCountManager;
    .locals 2

    .prologue
    .line 69
    const-class v1, Lcom/android/mms/util/ThreadCountManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/mms/util/ThreadCountManager;->sInstance:Lcom/android/mms/util/ThreadCountManager;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/mms/util/ThreadCountManager;

    invoke-direct {v0}, Lcom/android/mms/util/ThreadCountManager;-><init>()V

    sput-object v0, Lcom/android/mms/util/ThreadCountManager;->sInstance:Lcom/android/mms/util/ThreadCountManager;

    .line 72
    :cond_0
    sget-object v0, Lcom/android/mms/util/ThreadCountManager;->sInstance:Lcom/android/mms/util/ThreadCountManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isFull(Ljava/lang/Long;Landroid/content/Context;I)V
    .locals 6
    .parameter "threadId"
    .parameter "context"
    .parameter "flag"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 119
    :try_start_0
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v1

    .line 120
    .local v1, phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-eqz v1, :cond_3

    .line 121
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isTestIccCard()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gsm.gcf.testmode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 122
    :cond_0
    const-string v2, "ThreadCountManager"

    const-string v3, "Now using test icc card..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-nez p3, :cond_2

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ThreadCountManager;->get(Ljava/lang/Long;Landroid/content/Context;)I

    move-result v2

    if-lt v2, v5, :cond_1

    .line 125
    const-string v2, "ThreadCountManager"

    const-string v3, "Storage is full. send notification..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsManager;->setSmsMemoryStatus(Z)V

    .line 141
    .end local v1           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_1
    :goto_0
    return-void

    .line 128
    .restart local v1       #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_2
    if-ne p3, v4, :cond_1

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/mms/util/ThreadCountManager;->get(Ljava/lang/Long;Landroid/content/Context;)I

    move-result v2

    if-ge v2, v5, :cond_1

    .line 130
    const-string v2, "ThreadCountManager"

    const-string v3, "Storage is available. send notification..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsManager;->setSmsMemoryStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v1           #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :catch_0
    move-exception v0

    .line 139
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "ThreadCountManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #phone:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_3
    :try_start_1
    const-string v2, "ThreadCountManager"

    const-string v3, "Telephony service is not available!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
