.class Lcom/mediatek/phone/VoicemailDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "VoicemailDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/VoicemailDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/phone/VoicemailDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/phone/VoicemailDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mediatek/phone/VoicemailDialog$1;->this$0:Lcom/mediatek/phone/VoicemailDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.voicemail_cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mediatek/phone/VoicemailDialog$1;->this$0:Lcom/mediatek/phone/VoicemailDialog;

    const-string v1, "received cancel voice mail message"

    #calls: Lcom/mediatek/phone/VoicemailDialog;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/VoicemailDialog;->access$000(Lcom/mediatek/phone/VoicemailDialog;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/phone/VoicemailDialog$1;->this$0:Lcom/mediatek/phone/VoicemailDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "simId"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "simId"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mediatek/phone/VoicemailDialog$1;->this$0:Lcom/mediatek/phone/VoicemailDialog;

    const-string v1, "sim id between broadcast message intent and activity intent is same"

    #calls: Lcom/mediatek/phone/VoicemailDialog;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/phone/VoicemailDialog;->access$000(Lcom/mediatek/phone/VoicemailDialog;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/mediatek/phone/VoicemailDialog$1;->this$0:Lcom/mediatek/phone/VoicemailDialog;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 160
    :cond_0
    return-void
.end method
