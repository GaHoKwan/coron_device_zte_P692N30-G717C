.class Lcom/hf/widget/TimeService$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/widget/TimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/widget/TimeService;


# direct methods
.method private constructor <init>(Lcom/hf/widget/TimeService;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/hf/widget/TimeService$ScreenReceiver;->this$0:Lcom/hf/widget/TimeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hf/widget/TimeService;Lcom/hf/widget/TimeService$ScreenReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/hf/widget/TimeService$ScreenReceiver;-><init>(Lcom/hf/widget/TimeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/hf/widget/TimeService$ScreenReceiver;->this$0:Lcom/hf/widget/TimeService;

    #calls: Lcom/hf/widget/TimeService;->unregistTimeReceiver()V
    invoke-static {v1}, Lcom/hf/widget/TimeService;->access$0(Lcom/hf/widget/TimeService;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/hf/widget/TimeService$ScreenReceiver;->this$0:Lcom/hf/widget/TimeService;

    #calls: Lcom/hf/widget/TimeService;->updateTimeViews(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/hf/widget/TimeService;->access$1(Lcom/hf/widget/TimeService;Landroid/content/Context;)V

    .line 129
    iget-object v1, p0, Lcom/hf/widget/TimeService$ScreenReceiver;->this$0:Lcom/hf/widget/TimeService;

    #calls: Lcom/hf/widget/TimeService;->registTimeReceiver()V
    invoke-static {v1}, Lcom/hf/widget/TimeService;->access$2(Lcom/hf/widget/TimeService;)V

    goto :goto_0
.end method
