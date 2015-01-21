.class Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiChoiceConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$1;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    const-string v0, "com.mediatek.intent.action.contacts.multichoice.process.finish"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity$1;->this$0:Lcom/mediatek/contacts/list/service/MultiChoiceConfirmActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 51
    :cond_0
    return-void
.end method
