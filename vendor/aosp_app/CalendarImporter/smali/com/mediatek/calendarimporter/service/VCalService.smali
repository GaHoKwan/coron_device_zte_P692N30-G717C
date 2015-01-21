.class public Lcom/mediatek/calendarimporter/service/VCalService;
.super Landroid/app/Service;
.source "VCalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VCalService"


# instance fields
.field private mBinder:Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/service/VCalService;->mBinder:Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/calendarimporter/service/VCalService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 50
    return-void
.end method

.method private declared-synchronized tryExecute(Lcom/mediatek/calendarimporter/service/BaseProcessor;)Z
    .locals 3
    .parameter "processor"

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/calendarimporter/service/VCalService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const/4 v1, 0x1

    .line 130
    :goto_0
    monitor-exit p0

    return v1

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    const-string v1, "VCalService"

    const-string v2, "tryExecute: RejectedExecutionException."

    invoke-static {v1, v2}, Lcom/mediatek/calendarimporter/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    const/4 v1, 0x0

    goto :goto_0

    .line 126
    .end local v0           #e:Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public disconnected(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 88
    const-string v0, "VCalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnected, the context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 70
    const-string v0, "VCalService"

    const-string v1, "VCalService onBind"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/mediatek/calendarimporter/service/VCalService;->mBinder:Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    new-instance v0, Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;-><init>(Lcom/mediatek/calendarimporter/service/VCalService;)V

    iput-object v0, p0, Lcom/mediatek/calendarimporter/service/VCalService;->mBinder:Lcom/mediatek/calendarimporter/service/VCalService$MyBinder;

    .line 65
    const-string v0, "VCalService"

    const-string v1, "VCalService onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 79
    return-void
.end method

.method public tryCancelProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V
    .locals 2
    .parameter "processor"

    .prologue
    .line 109
    const-string v0, "VCalService"

    const-string v1, "VCalService tryCancelProcessor"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-nez p1, :cond_0

    .line 111
    const-string v0, "VCalService"

    const-string v1, "The processor going to cancel is null"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mediatek/calendarimporter/service/BaseProcessor;->cancel(Z)Z

    goto :goto_0
.end method

.method public tryExecuteProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V
    .locals 2
    .parameter "processor"

    .prologue
    .line 98
    const-string v0, "VCalService"

    const-string v1, "VCalService tryExecuteProcessor"

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/mediatek/calendarimporter/service/VCalService;->tryExecute(Lcom/mediatek/calendarimporter/service/BaseProcessor;)Z

    .line 100
    return-void
.end method
