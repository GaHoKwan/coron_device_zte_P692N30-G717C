.class public Lcom/android/mms/model/Model;
.super Ljava/lang/Object;
.source "Model.java"


# instance fields
.field private mCurrentPage:I

.field protected mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/mms/model/IModelChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mNeedUpdate:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/model/Model;->mNeedUpdate:Z

    return-void
.end method


# virtual methods
.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/mms/model/Model;->mCurrentPage:I

    return v0
.end method

.method public needUpdate()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/mms/model/Model;->mNeedUpdate:Z

    return v0
.end method

.method protected notifyModelChanged(Z)V
    .locals 3
    .parameter "dataChanged"

    .prologue
    .line 53
    iget-object v2, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 54
    .local v1, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-interface {v1, p0, p1}, Lcom/android/mms/model/IModelChangedObserver;->onModelChanged(Lcom/android/mms/model/Model;Z)V

    goto :goto_0

    .line 56
    .end local v1           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    return-void
.end method

.method public registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 61
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 0
    .parameter "mCurrentPage"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/mms/model/Model;->mCurrentPage:I

    .line 79
    return-void
.end method

.method public setNeedUpdate(Z)V
    .locals 0
    .parameter "needUpdate"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/mms/model/Model;->mNeedUpdate:Z

    .line 88
    return-void
.end method

.method public unregisterAllModelChangedObservers()V
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObserversInDescendants()V

    .line 49
    iget-object v0, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 50
    return-void
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 45
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 66
    return-void
.end method
