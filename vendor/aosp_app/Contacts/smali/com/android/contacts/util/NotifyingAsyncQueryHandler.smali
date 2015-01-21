.class public Lcom/android/contacts/util/NotifyingAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncUpdateListener;,
        Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    }
.end annotation


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    .line 60
    .local v0, listener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    if-eqz v0, :cond_1

    .line 61
    invoke-interface {v0, p1, p2, p3}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    if-eqz p3, :cond_0

    .line 63
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->mUpdateListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->mUpdateListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncUpdateListener;

    .line 82
    .local v0, listener:Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncUpdateListener;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0, p1, p2, p3}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncUpdateListener;->onUpdateComplete(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setQueryListener(Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 53
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 54
    return-void
.end method

.method public setUpdateListener(Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncUpdateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->mUpdateListener:Ljava/lang/ref/WeakReference;

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->mUpdateListener:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method
