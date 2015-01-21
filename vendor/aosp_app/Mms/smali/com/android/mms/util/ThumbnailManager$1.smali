.class Lcom/android/mms/util/ThumbnailManager$1;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsDone:Z

.field final synthetic this$0:Lcom/android/mms/util/ThumbnailManager;

.field final synthetic val$callback:Lcom/android/mms/util/ItemLoadedCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ThumbnailManager;Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$1;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iput-object p2, p0, Lcom/android/mms/util/ThumbnailManager$1;->val$callback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$1;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager$1;->val$callback:Lcom/android/mms/util/ItemLoadedCallback;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/ThumbnailManager;->cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V

    .line 176
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$1;->this$0:Lcom/android/mms/util/ThumbnailManager;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 177
    return-void
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/mms/util/ThumbnailManager$1;->mIsDone:Z

    return v0
.end method

.method public setIsDone(Z)V
    .locals 0
    .parameter "done"

    .prologue
    .line 181
    iput-boolean p1, p0, Lcom/android/mms/util/ThumbnailManager$1;->mIsDone:Z

    .line 182
    return-void
.end method
