.class Lcom/android/camera/manager/PanoramaViewManager$1;
.super Ljava/lang/Object;
.source "PanoramaViewManager.java"

# interfaces
.implements Lcom/android/camera/ui/RotateLayout$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/PanoramaViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/PanoramaViewManager;


# direct methods
.method constructor <init>(Lcom/android/camera/manager/PanoramaViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/camera/manager/PanoramaViewManager$1;->this$0:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 73
    const-string v0, "PanoramaViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager$1;->this$0:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    #setter for: Lcom/android/camera/manager/PanoramaViewManager;->mPreviewWidth:I
    invoke-static {v0, v1}, Lcom/android/camera/manager/PanoramaViewManager;->access$002(Lcom/android/camera/manager/PanoramaViewManager;I)I

    .line 75
    iget-object v0, p0, Lcom/android/camera/manager/PanoramaViewManager$1;->this$0:Lcom/android/camera/manager/PanoramaViewManager;

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    #setter for: Lcom/android/camera/manager/PanoramaViewManager;->mPreviewHeight:I
    invoke-static {v0, v1}, Lcom/android/camera/manager/PanoramaViewManager;->access$102(Lcom/android/camera/manager/PanoramaViewManager;I)I

    .line 76
    return-void
.end method
