.class Lcom/mediatek/op/telephony/OP09TelephonyProviderExt$1;
.super Landroid/content/BroadcastReceiver;
.source "OP09TelephonyProviderExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;


# direct methods
.method constructor <init>(Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt$1;->this$0:Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    const-string v1, "OP09TelephonyProviderExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[op09]received intent ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt$1;->this$0:Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;

    #calls: Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->setOpApnName()V
    invoke-static {v1}, Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;->access$000(Lcom/mediatek/op/telephony/OP09TelephonyProviderExt;)V

    .line 52
    :cond_0
    return-void
.end method
