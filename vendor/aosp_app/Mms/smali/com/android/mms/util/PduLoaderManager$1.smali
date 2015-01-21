.class Lcom/android/mms/util/PduLoaderManager$1;
.super Ljava/lang/Object;
.source "PduLoaderManager.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/PduLoaderManager;->getPdu(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsDone:Z

.field final synthetic this$0:Lcom/android/mms/util/PduLoaderManager;

.field final synthetic val$callback:Lcom/android/mms/util/ItemLoadedCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/util/PduLoaderManager;Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/mms/util/PduLoaderManager$1;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iput-object p2, p0, Lcom/android/mms/util/PduLoaderManager$1;->val$callback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager$1;->this$0:Lcom/android/mms/util/PduLoaderManager;

    iget-object v1, p0, Lcom/android/mms/util/PduLoaderManager$1;->val$callback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/PduLoaderManager;->cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V

    .line 117
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager$1;->this$0:Lcom/android/mms/util/PduLoaderManager;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/PduLoaderManager;->removePdu(Landroid/net/Uri;)V

    .line 119
    return-void
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/mms/util/PduLoaderManager$1;->mIsDone:Z

    return v0
.end method

.method public setIsDone(Z)V
    .locals 0
    .parameter "done"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/mms/util/PduLoaderManager$1;->mIsDone:Z

    .line 123
    return-void
.end method
