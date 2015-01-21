.class Lcom/android/camera/manager/ZoomManager$MyListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/manager/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/ZoomManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/manager/ZoomManager;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/manager/ZoomManager;Lcom/android/camera/manager/ZoomManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ZoomManager$MyListener;-><init>(Lcom/android/camera/manager/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSupportDoubleTapUp()Z

    move-result v4

    if-nez v4, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v2

    .line 213
    :cond_1
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    const-string v4, "ZoomManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDoubleTap("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") mZoomIndexFactor="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v6}, Lcom/android/camera/manager/ZoomManager;->access$600(Lcom/android/camera/manager/ZoomManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isAppSupported()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z
    invoke-static {v6}, Lcom/android/camera/manager/ZoomManager;->access$700(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isEnabled()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v6}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2
    iget-object v4, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z
    invoke-static {v4}, Lcom/android/camera/manager/ZoomManager;->access$700(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v4}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    iget-object v4, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mLastZoomRatio:I
    invoke-static {v4}, Lcom/android/camera/manager/ZoomManager;->access$800(Lcom/android/camera/manager/ZoomManager;)I

    move-result v4

    #calls: Lcom/android/camera/manager/ZoomManager;->findZoomIndex(I)I
    invoke-static {v2, v4}, Lcom/android/camera/manager/ZoomManager;->access$900(Lcom/android/camera/manager/ZoomManager;I)I

    move-result v0

    .line 221
    .local v0, oldIndex:I
    const/4 v1, 0x0

    .line 222
    .local v1, zoomIndex:I
    if-nez v0, :cond_3

    .line 223
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndex()I
    invoke-static {v2}, Lcom/android/camera/manager/ZoomManager;->access$1000(Lcom/android/camera/manager/ZoomManager;)I

    move-result v1

    .line 224
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    iget-object v4, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndexFactor()F
    invoke-static {v4}, Lcom/android/camera/manager/ZoomManager;->access$1100(Lcom/android/camera/manager/ZoomManager;)F

    move-result v4

    #setter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v2, v4}, Lcom/android/camera/manager/ZoomManager;->access$602(Lcom/android/camera/manager/ZoomManager;F)F

    .line 228
    :goto_1
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->performZoom(IZ)V
    invoke-static {v2, v1, v3}, Lcom/android/camera/manager/ZoomManager;->access$1200(Lcom/android/camera/manager/ZoomManager;IZ)V

    move v2, v3

    .line 229
    goto/16 :goto_0

    .line 226
    :cond_3
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    const/high16 v4, 0x3f80

    #setter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v2, v4}, Lcom/android/camera/manager/ZoomManager;->access$602(Lcom/android/camera/manager/ZoomManager;F)F

    goto :goto_1
.end method

.method public onDown(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 135
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onDown(FF)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/manager/ZoomManager;->mIgnorGestureForZooming:Z
    invoke-static {v0, v1}, Lcom/android/camera/manager/ZoomManager;->access$302(Lcom/android/camera/manager/ZoomManager;Z)Z

    .line 143
    return-void
.end method

.method public onFling(FF)Z
    .locals 4
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFling("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->shouldIgnoreCurrentGesture()Z
    invoke-static {v1}, Lcom/android/camera/manager/ZoomManager;->access$400(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    :cond_1
    :goto_0
    return v0

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v1}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onFling(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongPress(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 274
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongPress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onLongPress(FF)V

    .line 278
    :cond_0
    return-void
.end method

.method public onScale(FFF)Z
    .locals 7
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    .line 234
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    const-string v3, "ZoomManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScale("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mZoomIndexFactor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v5}, Lcom/android/camera/manager/ZoomManager;->access$600(Lcom/android/camera/manager/ZoomManager;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isAppSupported()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z
    invoke-static {v5}, Lcom/android/camera/manager/ZoomManager;->access$700(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isEnabled()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v5}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->isAppSupported()Z
    invoke-static {v3}, Lcom/android/camera/manager/ZoomManager;->access$700(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v3}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    move v1, v2

    .line 255
    :cond_2
    :goto_0
    return v1

    .line 241
    :cond_3
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move v1, v2

    .line 242
    goto :goto_0

    .line 244
    :cond_5
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-static {v2, p3}, Lcom/android/camera/manager/ZoomManager;->access$632(Lcom/android/camera/manager/ZoomManager;F)F

    .line 245
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v2}, Lcom/android/camera/manager/ZoomManager;->access$600(Lcom/android/camera/manager/ZoomManager;)F

    move-result v2

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_7

    .line 246
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #setter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v2, v6}, Lcom/android/camera/manager/ZoomManager;->access$602(Lcom/android/camera/manager/ZoomManager;F)F

    .line 250
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v3}, Lcom/android/camera/manager/ZoomManager;->access$600(Lcom/android/camera/manager/ZoomManager;)F

    move-result v3

    const/high16 v4, 0x42c8

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    #calls: Lcom/android/camera/manager/ZoomManager;->findZoomIndex(I)I
    invoke-static {v2, v3}, Lcom/android/camera/manager/ZoomManager;->access$900(Lcom/android/camera/manager/ZoomManager;I)I

    move-result v0

    .line 251
    .local v0, zoomIndex:I
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->performZoom(IZ)V
    invoke-static {v2, v0, v1}, Lcom/android/camera/manager/ZoomManager;->access$1200(Lcom/android/camera/manager/ZoomManager;IZ)V

    .line 252
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    const-string v2, "ZoomManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScale() mZoomIndexFactor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v4}, Lcom/android/camera/manager/ZoomManager;->access$600(Lcom/android/camera/manager/ZoomManager;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    .end local v0           #zoomIndex:I
    :cond_7
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v2}, Lcom/android/camera/manager/ZoomManager;->access$600(Lcom/android/camera/manager/ZoomManager;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndexFactor()F
    invoke-static {v3}, Lcom/android/camera/manager/ZoomManager;->access$1100(Lcom/android/camera/manager/ZoomManager;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 248
    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    iget-object v3, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->getMaxZoomIndexFactor()F
    invoke-static {v3}, Lcom/android/camera/manager/ZoomManager;->access$1100(Lcom/android/camera/manager/ZoomManager;)F

    move-result v3

    #setter for: Lcom/android/camera/manager/ZoomManager;->mZoomIndexFactor:F
    invoke-static {v2, v3}, Lcom/android/camera/manager/ZoomManager;->access$602(Lcom/android/camera/manager/ZoomManager;F)F

    goto :goto_1
.end method

.method public onScaleBegin(FF)Z
    .locals 4
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v3, 0x1

    .line 260
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleBegin("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #setter for: Lcom/android/camera/manager/ZoomManager;->mIgnorGestureForZooming:Z
    invoke-static {v0, v3}, Lcom/android/camera/manager/ZoomManager;->access$302(Lcom/android/camera/manager/ZoomManager;Z)Z

    .line 265
    return v3
.end method

.method public onScaleEnd()V
    .locals 2

    .prologue
    .line 270
    const-string v0, "ZoomManager"

    const-string v1, "onScaleEnd()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public onScroll(FFFF)Z
    .locals 4
    .parameter "dx"
    .parameter "dy"
    .parameter "totalX"
    .parameter "totalY"

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->shouldIgnoreCurrentGesture()Z
    invoke-static {v1}, Lcom/android/camera/manager/ZoomManager;->access$400(Lcom/android/camera/manager/ZoomManager;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #calls: Lcom/android/camera/manager/ZoomManager;->shouldIgnoreScrollGesture(FF)Z
    invoke-static {v1, p3, p4}, Lcom/android/camera/manager/ZoomManager;->access$500(Lcom/android/camera/manager/ZoomManager;FF)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    :cond_1
    :goto_0
    return v0

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v1}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onScroll(FFFF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSupportDoubleTapUp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSingleTapConfirmed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v1}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onSingleTapConfirmed(FF)Z

    move-result v0

    .line 196
    :cond_1
    return v0
.end method

.method public onSingleTapUp(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 175
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isSupportDoubleTapUp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    const-string v1, "ZoomManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSingleTapUp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v1}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onSingleTapUp(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onUp()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "ZoomManager"

    const-string v1, "onUp"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$MyListener;->this$0:Lcom/android/camera/manager/ZoomManager;

    #getter for: Lcom/android/camera/manager/ZoomManager;->mGalleryGestureListener:Lcom/android/gallery3d/ui/GestureRecognizer$Listener;
    invoke-static {v0}, Lcom/android/camera/manager/ZoomManager;->access$200(Lcom/android/camera/manager/ZoomManager;)Lcom/android/gallery3d/ui/GestureRecognizer$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GestureRecognizer$Listener;->onUp()V

    .line 208
    :cond_1
    return-void
.end method
