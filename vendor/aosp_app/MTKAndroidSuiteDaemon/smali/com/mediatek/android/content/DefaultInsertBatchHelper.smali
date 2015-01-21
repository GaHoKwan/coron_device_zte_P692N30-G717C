.class public abstract Lcom/mediatek/android/content/DefaultInsertBatchHelper;
.super Lcom/mediatek/android/content/OperationBatchHelper;
.source "DefaultInsertBatchHelper.java"


# instance fields
.field private mInsertedIds:[J


# direct methods
.method public constructor <init>(Lcom/mediatek/android/content/ContentProviderOperationBatch;)V
    .locals 0
    .parameter "opBatch"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/android/content/OperationBatchHelper;-><init>(Lcom/mediatek/android/content/ContentProviderOperationBatch;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "DefaultInsertBatchHelper"

    return-object v0
.end method

.method public getResults()[J
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->mInsertedIds:[J

    return-object v0
.end method

.method public onOperationResult(Landroid/content/ContentProviderResult;I)V
    .locals 10
    .parameter "opResult"
    .parameter "executedPosition"

    .prologue
    const/4 v9, 0x0

    const-wide/16 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onOperationResult"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "ContentProviderResult is null!"

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->mInsertedIds:[J

    aput-wide v7, v1, p2

    .line 114
    :goto_0
    return-void

    .line 102
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->mInsertedIds:[J

    iget-object v2, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onOperationResult"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3, v9, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    iget-object v1, p0, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->mInsertedIds:[J

    aput-wide v7, v1, p2

    goto :goto_0

    .line 108
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onOperationResult"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3, v9, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    iget-object v1, p0, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->mInsertedIds:[J

    aput-wide v7, v1, p2

    goto :goto_0
.end method

.method public run(I)V
    .locals 4
    .parameter "batchSize"

    .prologue
    .line 77
    new-array v1, p1, [J

    iput-object v1, p0, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->mInsertedIds:[J

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->mInsertedIds:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->mInsertedIds:[J

    const-wide/16 v2, -0x1

    aput-wide v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/android/content/OperationBatchHelper;->run(I)V

    .line 83
    return-void
.end method
