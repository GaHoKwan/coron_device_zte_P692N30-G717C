.class Lzte/android/flashlight/FlashService$1;
.super Landroid/content/BroadcastReceiver;
.source "FlashService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/android/flashlight/FlashService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/android/flashlight/FlashService;


# direct methods
.method constructor <init>(Lzte/android/flashlight/FlashService;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lzte/android/flashlight/FlashService$1;->this$0:Lzte/android/flashlight/FlashService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zte.android.flashlight.receiver.closelight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lzte/android/flashlight/FlashService$1;->this$0:Lzte/android/flashlight/FlashService;

    invoke-virtual {v0}, Lzte/android/flashlight/FlashService;->Close_Light()Z

    .line 89
    iget-object v0, p0, Lzte/android/flashlight/FlashService$1;->this$0:Lzte/android/flashlight/FlashService;

    #getter for: Lzte/android/flashlight/FlashService;->mHandle:Landroid/os/Handler;
    invoke-static {v0}, Lzte/android/flashlight/FlashService;->access$000(Lzte/android/flashlight/FlashService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    :cond_0
    return-void
.end method
