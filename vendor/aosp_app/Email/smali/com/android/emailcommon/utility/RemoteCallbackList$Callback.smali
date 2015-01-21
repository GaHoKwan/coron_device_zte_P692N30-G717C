.class final Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/RemoteCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final mCookie:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/emailcommon/utility/RemoteCallbackList;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/utility/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;,"Lcom/android/emailcommon/utility/RemoteCallbackList<TE;>.Callback;"
    .local p2, callback:Landroid/os/IInterface;,"TE;"
    iput-object p1, p0, Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;->this$0:Lcom/android/emailcommon/utility/RemoteCallbackList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    .line 52
    iput-object p3, p0, Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;->mCookie:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 56
    .local p0, this:Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;,"Lcom/android/emailcommon/utility/RemoteCallbackList<TE;>.Callback;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;->this$0:Lcom/android/emailcommon/utility/RemoteCallbackList;

    iget-object v1, v0, Lcom/android/emailcommon/utility/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;->this$0:Lcom/android/emailcommon/utility/RemoteCallbackList;

    iget-object v0, v0, Lcom/android/emailcommon/utility/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    iget-object v0, p0, Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;->this$0:Lcom/android/emailcommon/utility/RemoteCallbackList;

    iget-object v1, p0, Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    iget-object v2, p0, Lcom/android/emailcommon/utility/RemoteCallbackList$Callback;->mCookie:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/utility/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 60
    return-void

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
