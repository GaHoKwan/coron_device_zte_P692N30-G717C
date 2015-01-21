.class Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WfdPowerSaving.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/video/WfdPowerSaving;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;


# direct methods
.method private constructor <init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Lcom/mediatek/gallery3d/video/WfdPowerSaving$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;-><init>(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, action:Ljava/lang/String;
    const-string v1, "Gallery2/WfdPowerSaving"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenOnReceiver onReceive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mTurnOnScreenInReceiver = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mTurnOnScreenInReceiver:Z
    invoke-static {v3}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$900(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mTurnOnScreenInReceiver:Z
    invoke-static {v1}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$900(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$100(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/PowerManager;->setBacklightOffForWFD(Z)V

    .line 264
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #setter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mTurnOnScreenInReceiver:Z
    invoke-static {v1, v4}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$902(Lcom/mediatek/gallery3d/video/WfdPowerSaving;Z)Z

    .line 266
    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 247
    const-string v0, "Gallery2/WfdPowerSaving"

    const-string v1, "ScreenOnReceiver register"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$400(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "Gallery2/WfdPowerSaving"

    const-string v1, "ScreenOnReceiver unregister"

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/WfdPowerSaving$ScreenOnReceiver;->this$0:Lcom/mediatek/gallery3d/video/WfdPowerSaving;

    #getter for: Lcom/mediatek/gallery3d/video/WfdPowerSaving;->mMovieActivity:Lcom/android/gallery3d/app/MovieActivity;
    invoke-static {v0}, Lcom/mediatek/gallery3d/video/WfdPowerSaving;->access$400(Lcom/mediatek/gallery3d/video/WfdPowerSaving;)Lcom/android/gallery3d/app/MovieActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 255
    return-void
.end method
