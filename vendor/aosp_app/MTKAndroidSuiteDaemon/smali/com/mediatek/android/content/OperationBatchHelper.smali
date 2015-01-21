.class public abstract Lcom/mediatek/android/content/OperationBatchHelper;
.super Ljava/lang/Object;
.source "OperationBatchHelper.java"


# instance fields
.field private final mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;


# direct methods
.method public constructor <init>(Lcom/mediatek/android/content/ContentProviderOperationBatch;)V
    .locals 0
    .parameter "opBatch"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mediatek/android/content/OperationBatchHelper;->mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;

    .line 59
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "OperationBatchHelper"

    return-object v0
.end method

.method public abstract onAppend(Lcom/mediatek/android/content/ContentProviderOperationBatch;I)V
.end method

.method public abstract onApply(Lcom/mediatek/android/content/ContentProviderOperationBatch;)[Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation
.end method

.method public abstract onOperationResult(Landroid/content/ContentProviderResult;I)V
.end method

.method public run(I)V
    .locals 13
    .parameter "batchSize"

    .prologue
    .line 69
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v2, 0x0

    .local v2, executedPosition:I
    :goto_0
    if-ge v3, p1, :cond_1

    .line 70
    iget-object v8, p0, Lcom/mediatek/android/content/OperationBatchHelper;->mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;

    invoke-virtual {p0, v8, v3}, Lcom/mediatek/android/content/OperationBatchHelper;->onAppend(Lcom/mediatek/android/content/ContentProviderOperationBatch;I)V

    .line 74
    iget-object v8, p0, Lcom/mediatek/android/content/OperationBatchHelper;->mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;

    invoke-virtual {v8}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->isFull()Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v8, p1, -0x1

    if-ne v3, v8, :cond_2

    .line 78
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/android/content/OperationBatchHelper;->mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;

    invoke-virtual {p0, v8}, Lcom/mediatek/android/content/OperationBatchHelper;->onApply(Lcom/mediatek/android/content/ContentProviderOperationBatch;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 89
    .local v6, opResults:[Landroid/content/ContentProviderResult;
    iget-object v8, p0, Lcom/mediatek/android/content/OperationBatchHelper;->mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;

    invoke-virtual {v8}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 92
    if-eqz v6, :cond_2

    .line 93
    move-object v0, v6

    .local v0, arr$:[Landroid/content/ContentProviderResult;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 94
    .local v7, result:Landroid/content/ContentProviderResult;
    invoke-virtual {p0, v7, v2}, Lcom/mediatek/android/content/OperationBatchHelper;->onOperationResult(Landroid/content/ContentProviderResult;I)V

    .line 95
    add-int/lit8 v2, v2, 0x1

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    .end local v0           #arr$:[Landroid/content/ContentProviderResult;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #opResults:[Landroid/content/ContentProviderResult;
    .end local v7           #result:Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v1

    .line 80
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {p0}, Lcom/mediatek/android/content/OperationBatchHelper;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "run"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception occurs in onApply("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/android/content/OperationBatchHelper;->mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    iget-object v8, p0, Lcom/mediatek/android/content/OperationBatchHelper;->mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;

    invoke-virtual {v8}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 100
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_2
    return-void

    .line 83
    :catch_1
    move-exception v1

    .line 84
    .local v1, e:Landroid/content/OperationApplicationException;
    :try_start_2
    invoke-virtual {p0}, Lcom/mediatek/android/content/OperationBatchHelper;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "run"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception occurs in onApply("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/android/content/OperationBatchHelper;->mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    iget-object v8, p0, Lcom/mediatek/android/content/OperationBatchHelper;->mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;

    invoke-virtual {v8}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    goto :goto_2

    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/mediatek/android/content/OperationBatchHelper;->mOpBatch:Lcom/mediatek/android/content/ContentProviderOperationBatch;

    invoke-virtual {v9}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    throw v8

    .line 69
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
