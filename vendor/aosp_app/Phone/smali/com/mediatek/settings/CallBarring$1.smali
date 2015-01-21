.class Lcom/mediatek/settings/CallBarring$1;
.super Landroid/content/BroadcastReceiver;
.source "CallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/CallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/CallBarring;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/CallBarring;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/settings/CallBarring$1;->this$0:Lcom/mediatek/settings/CallBarring;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring$1;->this$0:Lcom/mediatek/settings/CallBarring;

    iget-object v2, p0, Lcom/mediatek/settings/CallBarring$1;->this$0:Lcom/mediatek/settings/CallBarring;

    #getter for: Lcom/mediatek/settings/CallBarring;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/CallBarring;->access$000(Lcom/mediatek/settings/CallBarring;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/gemini/GeminiUtils;->handleSimHotSwap(Landroid/app/Activity;I)V

    .line 109
    :cond_0
    return-void
.end method
