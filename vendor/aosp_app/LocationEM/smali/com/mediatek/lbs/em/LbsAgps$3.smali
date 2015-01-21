.class Lcom/mediatek/lbs/em/LbsAgps$3;
.super Landroid/content/BroadcastReceiver;
.source "LbsAgps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsAgps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$3;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 370
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.mediatek.agps.AGPS_DIALOG_MESSAGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 372
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 374
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 375
    const-string v5, "msg"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, msg:Ljava/lang/String;
    const-string v5, "title"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 377
    .local v3, title:Ljava/lang/String;
    const-string v5, "type"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 378
    .local v4, type:I
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps$3;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    iget-object v6, p0, Lcom/mediatek/lbs/em/LbsAgps$3;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-virtual {v5, v6, v3, v2}, Lcom/mediatek/lbs/em/LbsAgps;->showAlertDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 383
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #type:I
    :cond_0
    :goto_0
    return-void

    .line 380
    .restart local v1       #bundle:Landroid/os/Bundle;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps$3;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    const-string v6, "AGPS_DIALOG_MESSAGE rcv, but bundle is null"

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/lbs/em/LbsAgps;->access$000(Lcom/mediatek/lbs/em/LbsAgps;Ljava/lang/String;)V

    goto :goto_0
.end method
