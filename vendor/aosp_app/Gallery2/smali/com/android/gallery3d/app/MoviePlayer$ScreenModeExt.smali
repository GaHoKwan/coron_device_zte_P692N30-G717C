.class Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/android/gallery3d/app/MoviePlayer$Restorable;
.implements Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenModeExt"
.end annotation


# static fields
.field private static final KEY_VIDEO_SCREEN_MODE:Ljava/lang/String; = "video_screen_mode"


# instance fields
.field private mScreenMode:I

.field private mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 1
    .parameter

    .prologue
    .line 1444
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1446
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenMode:I

    .line 1447
    new-instance v0, Lcom/mediatek/gallery3d/video/ScreenModeManager;

    invoke-direct {v0}, Lcom/mediatek/gallery3d/video/ScreenModeManager;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1444
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 1469
    const-string v0, "video_screen_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenMode:I

    .line 1470
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1474
    const-string v0, "video_screen_mode"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1475
    return-void
.end method

.method public onScreenModeChanged(I)V
    .locals 3
    .parameter "newMode"

    .prologue
    .line 1461
    iput p1, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenMode:I

    .line 1463
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnScreenModeClicked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    return-void
.end method

.method public setScreenMode()V
    .locals 3

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setScreenModeManager(Lcom/mediatek/gallery3d/video/ScreenModeManager;)V

    .line 1451
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->setScreenModeManager(Lcom/mediatek/gallery3d/video/ScreenModeManager;)V

    .line 1452
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    invoke-virtual {v0, p0}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->addListener(Lcom/mediatek/gallery3d/video/ScreenModeManager$ScreenModeListener;)V

    .line 1453
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenModeManager:Lcom/mediatek/gallery3d/video/ScreenModeManager;

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenMode:I

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/ScreenModeManager;->setScreenMode(I)V

    .line 1455
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenMode() mScreenMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$ScreenModeExt;->mScreenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    return-void
.end method
