.class public Lcom/android/quicksearchbox/util/AsyncDataSetObservable;
.super Landroid/database/DataSetObservable;
.source "AsyncDataSetObservable.java"


# instance fields
.field private final mChangedRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidatedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 29
    new-instance v0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable$1;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/util/AsyncDataSetObservable$1;-><init>(Lcom/android/quicksearchbox/util/AsyncDataSetObservable;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable;->mChangedRunnable:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable$2;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/util/AsyncDataSetObservable$2;-><init>(Lcom/android/quicksearchbox/util/AsyncDataSetObservable;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable;->mInvalidatedRunnable:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic access$001(Lcom/android/quicksearchbox/util/AsyncDataSetObservable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-super {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method static synthetic access$101(Lcom/android/quicksearchbox/util/AsyncDataSetObservable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-super {p0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method


# virtual methods
.method public notifyChanged()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 51
    invoke-super {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable;->mChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public notifyInvalidated()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quicksearchbox/util/AsyncDataSetObservable;->mInvalidatedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
