.class Lcom/ztesdupdate/SDcardUpdateActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SDcardUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ztesdupdate/SDcardUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ztesdupdate/SDcardUpdateActivity;


# direct methods
.method constructor <init>(Lcom/ztesdupdate/SDcardUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ztesdupdate/SDcardUpdateActivity$1;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 111
    .local v1, plugType:I
    iget-object v2, p0, Lcom/ztesdupdate/SDcardUpdateActivity$1;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    const-string v3, "status"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/ztesdupdate/SDcardUpdateActivity;->updateStatus:I

    .line 112
    iget-object v2, p0, Lcom/ztesdupdate/SDcardUpdateActivity$1;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    const-string v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/ztesdupdate/SDcardUpdateActivity;->voltagepercent:I

    .line 113
    const-string v2, "SDcardUpdateActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CheckBattery:updateStatus= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ztesdupdate/SDcardUpdateActivity$1;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    iget v4, v4, Lcom/ztesdupdate/SDcardUpdateActivity;->updateStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  voltagepercent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ztesdupdate/SDcardUpdateActivity$1;->this$0:Lcom/ztesdupdate/SDcardUpdateActivity;

    iget v4, v4, Lcom/ztesdupdate/SDcardUpdateActivity;->voltagepercent:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v1           #plugType:I
    :cond_0
    return-void
.end method
