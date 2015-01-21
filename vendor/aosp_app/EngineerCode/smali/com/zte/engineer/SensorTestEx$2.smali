.class Lcom/zte/engineer/SensorTestEx$2;
.super Landroid/os/Handler;
.source "SensorTestEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/engineer/SensorTestEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/engineer/SensorTestEx;


# direct methods
.method constructor <init>(Lcom/zte/engineer/SensorTestEx;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/zte/engineer/SensorTestEx$2;->this$0:Lcom/zte/engineer/SensorTestEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 419
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx$2;->this$0:Lcom/zte/engineer/SensorTestEx;

    #getter for: Lcom/zte/engineer/SensorTestEx;->mDisablingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/zte/engineer/SensorTestEx;->access$000(Lcom/zte/engineer/SensorTestEx;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-nez v2, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx$2;->this$0:Lcom/zte/engineer/SensorTestEx;

    #getter for: Lcom/zte/engineer/SensorTestEx;->mDisablingDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/zte/engineer/SensorTestEx;->access$000(Lcom/zte/engineer/SensorTestEx;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 424
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx$2;->this$0:Lcom/zte/engineer/SensorTestEx;

    const v3, 0x7f080062

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 425
    .local v0, btn:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 427
    iget-object v2, p0, Lcom/zte/engineer/SensorTestEx$2;->this$0:Lcom/zte/engineer/SensorTestEx;

    const v3, 0x7f080063

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 428
    .local v1, btnMid:Landroid/widget/Button;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
