.class public Lcom/mediatek/contacts/list/service/MultiChoiceService;
.super Landroid/app/Service;
.source "MultiChoiceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final RUNNINGJOBMAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/contacts/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = null

.field public static final TYPE_COPY:I = 0x1

.field public static final TYPE_DELETE:I = 0x2

.field private static sCurrentJobId:I


# instance fields
.field private mBinder:Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->RUNNINGJOBMAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/ContactsApplication;->singleTaskService:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 48
    return-void
.end method

.method public static declared-synchronized isProcessing(I)Z
    .locals 6
    .parameter "requestType"

    .prologue
    const/4 v3, 0x0

    .line 184
    const-class v4, Lcom/mediatek/contacts/list/service/MultiChoiceService;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/mediatek/contacts/list/service/MultiChoiceService;->RUNNINGJOBMAP:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-gtz v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    monitor-exit v4

    return v3

    .line 188
    :cond_1
    :try_start_1
    sget-object v5, Lcom/mediatek/contacts/list/service/MultiChoiceService;->RUNNINGJOBMAP:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 189
    sget-object v5, Lcom/mediatek/contacts/list/service/MultiChoiceService;->RUNNINGJOBMAP:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/vcard/ProcessorBase;

    .line 191
    .local v2, processor:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v2}, Lcom/android/contacts/vcard/ProcessorBase;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ne v5, p0, :cond_2

    .line 192
    const/4 v3, 0x1

    goto :goto_0

    .line 184
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private declared-synchronized stopServiceIfAppropriate()V
    .locals 9

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    sget-object v4, Lcom/mediatek/contacts/list/service/MultiChoiceService;->RUNNINGJOBMAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 155
    sget-object v4, Lcom/mediatek/contacts/list/service/MultiChoiceService;->RUNNINGJOBMAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 157
    .local v2, jobId:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/vcard/ProcessorBase;

    .line 158
    .local v3, processor:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v3}, Lcom/android/contacts/vcard/ProcessorBase;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    sget-object v4, Lcom/mediatek/contacts/list/service/MultiChoiceService;->RUNNINGJOBMAP:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #jobId:I
    .end local v3           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 161
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #jobId:I
    .restart local v3       #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_0
    :try_start_1
    sget-object v4, Lcom/mediatek/contacts/list/service/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v5, "Found unfinished job (id: %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #jobId:I
    .end local v3           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :goto_1
    monitor-exit p0

    return-void

    .line 167
    :cond_1
    :try_start_2
    sget-object v4, Lcom/mediatek/contacts/list/service/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v5, "No unfinished job. Stop this service."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z
    .locals 4
    .parameter "processor"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/mediatek/contacts/list/service/MultiChoiceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executor service status: shutdown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", terminated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 99
    sget-object v1, Lcom/mediatek/contacts/list/service/MultiChoiceService;->RUNNINGJOBMAP:Ljava/util/Map;

    sget v2, Lcom/mediatek/contacts/list/service/MultiChoiceService;->sCurrentJobId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    const/4 v1, 0x1

    .line 103
    :goto_0
    monitor-exit p0

    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    sget-object v1, Lcom/mediatek/contacts/list/service/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to excetute a job."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    .end local v0           #e:Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized handleCancelRequest(Lcom/mediatek/contacts/list/service/MultiChoiceCancelRequest;)V
    .locals 7
    .parameter "request"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/mediatek/contacts/list/service/MultiChoiceCancelRequest;->jobId:I

    .line 136
    .local v0, jobId:I
    sget-object v2, Lcom/mediatek/contacts/list/service/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v3, "Received cancel request. (id: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v2, Lcom/mediatek/contacts/list/service/MultiChoiceService;->RUNNINGJOBMAP:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/vcard/ProcessorBase;

    .line 140
    .local v1, processor:Lcom/android/contacts/vcard/ProcessorBase;
    if-eqz v1, :cond_0

    .line 141
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z

    .line 145
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 143
    :cond_0
    :try_start_1
    sget-object v2, Lcom/mediatek/contacts/list/service/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v3, "Tried to remove unknown job (id: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 134
    .end local v0           #jobId:I
    .end local v1           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized handleCopyRequest(Ljava/util/List;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;Landroid/accounts/Account;Landroid/accounts/Account;)V
    .locals 7
    .parameter
    .parameter "listener"
    .parameter "sourceAccount"
    .parameter "destinationAccount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/list/service/MultiChoiceRequest;",
            ">;",
            "Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;",
            "Landroid/accounts/Account;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/list/service/MultiChoiceRequest;>;"
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->sCurrentJobId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->sCurrentJobId:I

    .line 124
    new-instance v0, Lcom/mediatek/contacts/list/service/CopyProcessor;

    sget v4, Lcom/mediatek/contacts/list/service/MultiChoiceService;->sCurrentJobId:I

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/contacts/list/service/CopyProcessor;-><init>(Lcom/mediatek/contacts/list/service/MultiChoiceService;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;Ljava/util/List;ILandroid/accounts/Account;Landroid/accounts/Account;)V

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    if-eqz p2, :cond_0

    .line 127
    const/4 v1, 0x1

    sget v2, Lcom/mediatek/contacts/list/service/MultiChoiceService;->sCurrentJobId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;

    iget-object v5, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactName:Ljava/lang/String;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleDeleteRequest(Ljava/util/List;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;)V
    .locals 6
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/list/service/MultiChoiceRequest;",
            ">;",
            "Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/list/service/MultiChoiceRequest;>;"
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->sCurrentJobId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->sCurrentJobId:I

    .line 111
    new-instance v0, Lcom/mediatek/contacts/list/service/DeleteProcessor;

    sget v1, Lcom/mediatek/contacts/list/service/MultiChoiceService;->sCurrentJobId:I

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/mediatek/contacts/list/service/DeleteProcessor;-><init>(Lcom/mediatek/contacts/list/service/MultiChoiceService;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;Ljava/util/List;I)V

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    if-eqz p2, :cond_0

    .line 113
    const/4 v1, 0x2

    sget v2, Lcom/mediatek/contacts/list/service/MultiChoiceService;->sCurrentJobId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;

    iget-object v5, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactName:Ljava/lang/String;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleFinishNotification(IZ)V
    .locals 5
    .parameter "jobId"
    .parameter "successful"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/mediatek/contacts/list/service/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v2, "Received handle finish notification (id: %d). Result: %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    const-string v0, "success"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-object v0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->RUNNINGJOBMAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    sget-object v0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Tried to remove unknown job (id: %d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 174
    :cond_1
    :try_start_1
    const-string v0, "failure"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->mBinder:Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    new-instance v0, Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;-><init>(Lcom/mediatek/contacts/list/service/MultiChoiceService;)V

    iput-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->mBinder:Lcom/mediatek/contacts/list/service/MultiChoiceService$MyBinder;

    .line 59
    sget-object v0, Lcom/mediatek/contacts/list/service/MultiChoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Multi-choice Service is being created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x1

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 64
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "id"

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
