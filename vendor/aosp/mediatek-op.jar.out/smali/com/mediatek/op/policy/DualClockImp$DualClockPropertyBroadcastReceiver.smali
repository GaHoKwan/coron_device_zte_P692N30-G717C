.class Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DualClockImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/policy/DualClockImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DualClockPropertyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/policy/DualClockImp;


# direct methods
.method private constructor <init>(Lcom/mediatek/op/policy/DualClockImp;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;->this$0:Lcom/mediatek/op/policy/DualClockImp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/op/policy/DualClockImp;Lcom/mediatek/op/policy/DualClockImp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;-><init>(Lcom/mediatek/op/policy/DualClockImp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v5, 0x3e8

    .line 321
    const-string v2, "dualclockroaming"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 322
    .local v1, roamingPropertyValue:I
    const-string v2, "DualClockImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DualClockPropertyBroadcastReceiver onReceive, intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dualclockroaming"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;->this$0:Lcom/mediatek/op/policy/DualClockImp;

    #getter for: Lcom/mediatek/op/policy/DualClockImp;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/op/policy/DualClockImp;->access$300(Lcom/mediatek/op/policy/DualClockImp;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 325
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->what:I

    .line 326
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 327
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;->this$0:Lcom/mediatek/op/policy/DualClockImp;

    #getter for: Lcom/mediatek/op/policy/DualClockImp;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/op/policy/DualClockImp;->access$300(Lcom/mediatek/op/policy/DualClockImp;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    return-void
.end method
