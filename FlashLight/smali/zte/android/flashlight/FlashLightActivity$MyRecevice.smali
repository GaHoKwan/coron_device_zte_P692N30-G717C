.class Lzte/android/flashlight/FlashLightActivity$MyRecevice;
.super Landroid/content/BroadcastReceiver;
.source "FlashLightActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/android/flashlight/FlashLightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRecevice"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/android/flashlight/FlashLightActivity;


# direct methods
.method constructor <init>(Lzte/android/flashlight/FlashLightActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lzte/android/flashlight/FlashLightActivity$MyRecevice;->this$0:Lzte/android/flashlight/FlashLightActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 538
    move-object v0, p1

    check-cast v0, Lzte/android/flashlight/FlashLightActivity;

    .line 539
    .local v0, FLA:Lzte/android/flashlight/FlashLightActivity;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 540
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzte/android/flashlight/FlashLightActivity;->SetScreenState(Ljava/lang/Boolean;)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzte/android/flashlight/FlashLightActivity;->SetScreenState(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 543
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 544
    const-string v2, "FlashLight"

    const-string v3, "onReceive ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, reason:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 547
    const-string v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 548
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$MyRecevice;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #calls: Lzte/android/flashlight/FlashLightActivity;->releaseLight()V
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$700(Lzte/android/flashlight/FlashLightActivity;)V

    .line 549
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$MyRecevice;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #setter for: Lzte/android/flashlight/FlashLightActivity;->bIsActive:Z
    invoke-static {v2, v4}, Lzte/android/flashlight/FlashLightActivity;->access$802(Lzte/android/flashlight/FlashLightActivity;Z)Z

    goto :goto_0

    .line 551
    :cond_3
    const-string v2, "recentapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$MyRecevice;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #calls: Lzte/android/flashlight/FlashLightActivity;->releaseLight()V
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$700(Lzte/android/flashlight/FlashLightActivity;)V

    .line 553
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$MyRecevice;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #setter for: Lzte/android/flashlight/FlashLightActivity;->bIsActive:Z
    invoke-static {v2, v4}, Lzte/android/flashlight/FlashLightActivity;->access$802(Lzte/android/flashlight/FlashLightActivity;Z)Z

    goto :goto_0

    .line 556
    .end local v1           #reason:Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 557
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$MyRecevice;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #calls: Lzte/android/flashlight/FlashLightActivity;->releaseLight()V
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$700(Lzte/android/flashlight/FlashLightActivity;)V

    .line 558
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$MyRecevice;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #setter for: Lzte/android/flashlight/FlashLightActivity;->bIsActive:Z
    invoke-static {v2, v4}, Lzte/android/flashlight/FlashLightActivity;->access$802(Lzte/android/flashlight/FlashLightActivity;Z)Z

    goto :goto_0

    .line 559
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.OPENING_CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$MyRecevice;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #calls: Lzte/android/flashlight/FlashLightActivity;->releaseLight()V
    invoke-static {v2}, Lzte/android/flashlight/FlashLightActivity;->access$700(Lzte/android/flashlight/FlashLightActivity;)V

    .line 561
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$MyRecevice;->this$0:Lzte/android/flashlight/FlashLightActivity;

    #setter for: Lzte/android/flashlight/FlashLightActivity;->bIsActive:Z
    invoke-static {v2, v4}, Lzte/android/flashlight/FlashLightActivity;->access$802(Lzte/android/flashlight/FlashLightActivity;Z)Z

    .line 562
    iget-object v2, p0, Lzte/android/flashlight/FlashLightActivity$MyRecevice;->this$0:Lzte/android/flashlight/FlashLightActivity;

    invoke-virtual {v2}, Lzte/android/flashlight/FlashLightActivity;->finish()V

    goto/16 :goto_0
.end method
