.class public abstract Lcom/mediatek/android/content/DefaultDeleteBatchHelper;
.super Lcom/mediatek/android/content/OperationBatchHelper;
.source "DefaultDeleteBatchHelper.java"


# instance fields
.field private mDeletionResults:[Z


# direct methods
.method public constructor <init>(Lcom/mediatek/android/content/ContentProviderOperationBatch;)V
    .locals 0
    .parameter "opBatch"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mediatek/android/content/OperationBatchHelper;-><init>(Lcom/mediatek/android/content/ContentProviderOperationBatch;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "DefaultDeleteBatchHelper"

    return-object v0
.end method

.method public getResults()[Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->mDeletionResults:[Z

    return-object v0
.end method

.method public onOperationResult(Landroid/content/ContentProviderResult;I)V
    .locals 6
    .parameter "opResult"
    .parameter "executedPosition"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 89
    if-nez p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOperationResult"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "ContentProviderResult is null!"

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->mDeletionResults:[Z

    aput-boolean v5, v0, p2

    .line 102
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p1, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->mDeletionResults:[Z

    aput-boolean v4, v0, p2

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOperationResult"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Operation failed, affected rows count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->mDeletionResults:[Z

    aput-boolean v5, v0, p2

    goto :goto_0
.end method

.method public run(I)V
    .locals 1
    .parameter "batchSize"

    .prologue
    .line 75
    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->mDeletionResults:[Z

    .line 76
    invoke-super {p0, p1}, Lcom/mediatek/android/content/OperationBatchHelper;->run(I)V

    .line 77
    return-void
.end method
