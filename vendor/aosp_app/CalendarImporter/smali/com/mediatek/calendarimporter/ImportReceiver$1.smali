.class Lcom/mediatek/calendarimporter/ImportReceiver$1;
.super Landroid/os/Handler;
.source "ImportReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendarimporter/ImportReceiver;->serviceConnected(Lcom/mediatek/calendarimporter/service/VCalService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/ImportReceiver;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/ImportReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mediatek/calendarimporter/ImportReceiver$1;->this$0:Lcom/mediatek/calendarimporter/ImportReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 93
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mtk.intent.action.RESTORE.RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, intentResult:Landroid/content/Intent;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return-void

    .line 96
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 97
    .local v0, eventInfo:Landroid/os/Bundle;
    const-string v3, "event_title"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, eventTitle:Ljava/lang/String;
    const-string v3, "event_title"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_0

    .line 100
    const-string v3, "isSuccess"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    :goto_1
    iget-object v3, p0, Lcom/mediatek/calendarimporter/ImportReceiver$1;->this$0:Lcom/mediatek/calendarimporter/ImportReceiver;

    #getter for: Lcom/mediatek/calendarimporter/ImportReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/calendarimporter/ImportReceiver;->access$000(Lcom/mediatek/calendarimporter/ImportReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    const-string v3, "ImportReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcast, action= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    const-string v3, "isSuccess"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 108
    .end local v0           #eventInfo:Landroid/os/Bundle;
    .end local v1           #eventTitle:Ljava/lang/String;
    :pswitch_2
    const-string v3, "isSuccess"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    iget-object v3, p0, Lcom/mediatek/calendarimporter/ImportReceiver$1;->this$0:Lcom/mediatek/calendarimporter/ImportReceiver;

    #getter for: Lcom/mediatek/calendarimporter/ImportReceiver;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mediatek/calendarimporter/ImportReceiver;->access$000(Lcom/mediatek/calendarimporter/ImportReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
