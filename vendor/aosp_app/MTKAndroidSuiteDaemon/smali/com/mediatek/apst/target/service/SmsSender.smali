.class public Lcom/mediatek/apst/target/service/SmsSender;
.super Ljava/lang/Object;
.source "SmsSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/target/service/SmsSender$SendingTask;,
        Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;
    }
.end annotation


# static fields
.field public static final ACTION_SMS_DELIVERED:Ljava/lang/String; = "com.mediatek.apst.target.action.SMS_DELIVERED"

.field public static final ACTION_SMS_SENT:Ljava/lang/String; = "com.mediatek.apst.target.action.SMS_SENT"

.field public static final EXTRA_DATE:Ljava/lang/String; = "date"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field private static sInstance:Lcom/mediatek/apst/target/service/SmsSender;


# instance fields
.field private mAllowSendNext:Z

.field private mPause:Z

.field private mSendingQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/target/service/SmsSender$SendingTask;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldTerminate:Z

.field private mWorker:Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/apst/target/service/SmsSender;->sInstance:Lcom/mediatek/apst/target/service/SmsSender;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mSendingQueue:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mShouldTerminate:Z

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mAllowSendNext:Z

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mWorker:Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/apst/target/service/SmsSender;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mSendingQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/apst/target/service/SmsSender;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mAllowSendNext:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/apst/target/service/SmsSender;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/mediatek/apst/target/service/SmsSender;->mAllowSendNext:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/apst/target/service/SmsSender;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mPause:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/apst/target/service/SmsSender;Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;)Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mediatek/apst/target/service/SmsSender;->mWorker:Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/apst/target/service/SmsSender;
    .locals 2

    .prologue
    .line 91
    const-class v1, Lcom/mediatek/apst/target/service/SmsSender;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/service/SmsSender;->sInstance:Lcom/mediatek/apst/target/service/SmsSender;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/mediatek/apst/target/service/SmsSender;

    invoke-direct {v0}, Lcom/mediatek/apst/target/service/SmsSender;-><init>()V

    sput-object v0, Lcom/mediatek/apst/target/service/SmsSender;->sInstance:Lcom/mediatek/apst/target/service/SmsSender;

    .line 94
    :cond_0
    sget-object v0, Lcom/mediatek/apst/target/service/SmsSender;->sInstance:Lcom/mediatek/apst/target/service/SmsSender;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public allowSendNext()V
    .locals 1

    .prologue
    .line 119
    monitor-enter p0

    .line 120
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mAllowSendNext:Z

    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized appendTask(Lcom/mediatek/apst/util/entity/message/Sms;Landroid/content/Context;I)V
    .locals 2
    .parameter "sms"
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mSendingQueue:Ljava/util/List;

    new-instance v1, Lcom/mediatek/apst/target/service/SmsSender$SendingTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mediatek/apst/target/service/SmsSender$SendingTask;-><init>(Lcom/mediatek/apst/target/service/SmsSender;Lcom/mediatek/apst/util/entity/message/Sms;Landroid/content/Context;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mWorker:Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;-><init>(Lcom/mediatek/apst/target/service/SmsSender;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mWorker:Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;

    .line 152
    iget-object v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mWorker:Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAllowSendNext()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mAllowSendNext:Z

    return v0
.end method

.method public isShouldTerminate()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mShouldTerminate:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    .line 129
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mPause:Z

    .line 130
    monitor-exit p0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 137
    monitor-enter p0

    .line 138
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mPause:Z

    .line 139
    monitor-exit p0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    .line 111
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mShouldTerminate:Z

    .line 112
    monitor-exit p0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    .line 102
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/apst/target/service/SmsSender;->mShouldTerminate:Z

    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
