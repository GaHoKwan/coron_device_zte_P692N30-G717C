.class public Lcom/mediatek/android/content/ContentProviderOperationBatch;
.super Ljava/lang/Object;
.source "ContentProviderOperationBatch.java"


# static fields
.field public static final CAPACITY:I = 0x1f3


# instance fields
.field private mMark:I

.field private final mOCR:Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

.field private final mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;)V
    .locals 2
    .parameter "ocr"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOCR:Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    .line 64
    return-void
.end method


# virtual methods
.method public append(Landroid/content/ContentProviderOperation;)Z
    .locals 2
    .parameter "operation"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->isFull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 81
    .local v0, result:Z
    :goto_0
    return v0

    .line 78
    .end local v0           #result:Z
    :cond_0
    iget-object v1, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const/4 v0, 0x1

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method public apply(Ljava/lang/String;)[Landroid/content/ContentProviderResult;
    .locals 2
    .parameter "authority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOCR:Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    iget-object v1, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    return-void
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x1f3

    return v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1f3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remaining()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rsub-int v0, v0, 0x1f3

    return v0
.end method

.method public rollback()V
    .locals 2

    .prologue
    .line 95
    :goto_0
    iget-object v0, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mMark:I

    if-le v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mMark:I

    .line 89
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/android/content/ContentProviderOperationBatch;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
