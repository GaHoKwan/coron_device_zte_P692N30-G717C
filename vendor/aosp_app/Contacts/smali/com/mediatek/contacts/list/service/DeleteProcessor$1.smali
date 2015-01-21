.class Lcom/mediatek/contacts/list/service/DeleteProcessor$1;
.super Landroid/content/BroadcastReceiver;
.source "DeleteProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/service/DeleteProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/service/DeleteProcessor;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/service/DeleteProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor$1;->this$0:Lcom/mediatek/contacts/list/service/DeleteProcessor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 414
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const-string v0, "ContactsMultiDeletionFragment"

    const-string v1, "receive 3G Switch ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/DeleteProcessor$1;->this$0:Lcom/mediatek/contacts/list/service/DeleteProcessor;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/mediatek/contacts/list/service/DeleteProcessor;->mReveiced3GSwitch:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/mediatek/contacts/list/service/DeleteProcessor;->access$002(Lcom/mediatek/contacts/list/service/DeleteProcessor;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 418
    :cond_0
    return-void
.end method
