.class Lcom/android/gallery3d/gadget/LocalPhotoSource$1;
.super Landroid/database/ContentObserver;
.source "LocalPhotoSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/gadget/LocalPhotoSource;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/gadget/LocalPhotoSource;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;->this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 83
    const-string v0, "Gallery2/LocalPhotoSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentObserver.onChange: selfchange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;->this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;

    #getter for: Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;
    invoke-static {v2}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->access$000(Lcom/android/gallery3d/gadget/LocalPhotoSource;)Lcom/android/gallery3d/data/ContentListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;->this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;

    const/4 v1, 0x1

    #setter for: Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentDirty:Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->access$102(Lcom/android/gallery3d/gadget/LocalPhotoSource;Z)Z

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;->this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;

    #getter for: Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;
    invoke-static {v0}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->access$000(Lcom/android/gallery3d/gadget/LocalPhotoSource;)Lcom/android/gallery3d/data/ContentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/gadget/LocalPhotoSource$1;->this$0:Lcom/android/gallery3d/gadget/LocalPhotoSource;

    #getter for: Lcom/android/gallery3d/gadget/LocalPhotoSource;->mContentListener:Lcom/android/gallery3d/data/ContentListener;
    invoke-static {v0}, Lcom/android/gallery3d/gadget/LocalPhotoSource;->access$000(Lcom/android/gallery3d/gadget/LocalPhotoSource;)Lcom/android/gallery3d/data/ContentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/data/ContentListener;->onContentDirty()V

    .line 86
    :cond_0
    return-void
.end method
