.class public Lcom/hf/widget/TimeService$TimerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/widget/TimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/widget/TimeService;


# direct methods
.method public constructor <init>(Lcom/hf/widget/TimeService;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/hf/widget/TimeService$TimerReceiver;->this$0:Lcom/hf/widget/TimeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, action:Ljava/lang/String;
    const-string v1, "TimerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/hf/widget/TimeService$TimerReceiver;->this$0:Lcom/hf/widget/TimeService;

    #calls: Lcom/hf/widget/TimeService;->updateTimeViews(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/hf/widget/TimeService;->access$1(Lcom/hf/widget/TimeService;Landroid/content/Context;)V

    .line 145
    return-void
.end method
