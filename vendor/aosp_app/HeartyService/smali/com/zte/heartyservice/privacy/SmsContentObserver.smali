.class public Lcom/zte/heartyservice/privacy/SmsContentObserver;
.super Landroid/database/ContentObserver;
.source "SmsContentObserver.java"


# static fields
.field private static final CHANGE:I = 0x0

.field private static final DELAY_TIME:J = 0x1f4L

.field private static sLastDealTime:J


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zte/heartyservice/privacy/SmsContentObserver;->sLastDealTime:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/SmsContentObserver;->mHandler:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/zte/heartyservice/privacy/SmsContentObserver$1;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/SmsContentObserver$1;-><init>(Lcom/zte/heartyservice/privacy/SmsContentObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/SmsContentObserver;->mHandler:Landroid/os/Handler;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/SmsContentObserver;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/SmsContentObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 9
    .parameter "selfChange"

    .prologue
    const-wide/16 v7, 0x1f4

    const/4 v6, 0x0

    .line 46
    const-string v4, "chenlu"

    const-string v5, "SmsContentObserver onChange()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/SmsContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 55
    .local v1, curTime:J
    sget-wide v4, Lcom/zte/heartyservice/privacy/SmsContentObserver;->sLastDealTime:J

    sub-long v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-gez v4, :cond_1

    .line 56
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/SmsContentObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 59
    :cond_1
    sput-wide v1, Lcom/zte/heartyservice/privacy/SmsContentObserver;->sLastDealTime:J

    .line 61
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getACHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 62
    .local v0, acHashSet:Ljava/util/HashSet;
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 63
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getMaxHandledSmsId()I

    move-result v3

    .line 67
    .local v3, lastHandledSmsId:I
    const/4 v4, 0x0

    invoke-static {v0, v6, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->moveSms2PrivatySpace(Ljava/util/HashSet;ZILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;)Z

    .line 68
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledSmsId()V

    .line 69
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0
.end method
