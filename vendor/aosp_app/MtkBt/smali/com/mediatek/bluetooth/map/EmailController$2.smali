.class Lcom/mediatek/bluetooth/map/EmailController$2;
.super Landroid/content/BroadcastReceiver;
.source "EmailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/EmailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/EmailController;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/EmailController;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/EmailController$2;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, action:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/EmailController$2;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/map/EmailController;->access$000(Lcom/mediatek/bluetooth/map/EmailController;Ljava/lang/String;)V

    .line 217
    const-string v4, "com.android.email.action.SEND_RESULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    const-string v4, "com.android.email.extra.ACCOUNT"

    invoke-virtual {p2, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 219
    .local v0, account:J
    const-string v4, "com.android.email.extra.RESULT"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 220
    .local v3, result:I
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/EmailController$2;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    #getter for: Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/EmailController;->access$100(Lcom/mediatek/bluetooth/map/EmailController;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 222
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/EmailController$2;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    invoke-virtual {v4, v10, v11, v3}, Lcom/mediatek/bluetooth/map/EmailController;->handleSendResult(JI)V

    .line 241
    .end local v0           #account:J
    .end local v3           #result:I
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v4, "com.android.email.action.DELIVER_RESULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    const-string v4, "com.android.email.extra.ACCOUNT"

    invoke-virtual {p2, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 226
    .restart local v0       #account:J
    const-string v4, "com.android.email.extra.RESULT"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 227
    .restart local v3       #result:I
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/EmailController$2;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    #getter for: Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/EmailController;->access$100(Lcom/mediatek/bluetooth/map/EmailController;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 229
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/EmailController$2;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    invoke-virtual {v4, v10, v11, v3}, Lcom/mediatek/bluetooth/map/EmailController;->handleDeliverResult(JI)V

    goto :goto_0

    .line 231
    .end local v0           #account:J
    .end local v3           #result:I
    :cond_2
    const-string v4, "com.android.email.action.UPDATE_INBOX_RESULT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 232
    const-string v4, "com.android.email.extra.ACCOUNT"

    invoke-virtual {p2, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 233
    .restart local v0       #account:J
    const-string v4, "com.android.email.extra.RESULT"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 234
    .restart local v3       #result:I
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/EmailController$2;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    #getter for: Lcom/mediatek/bluetooth/map/EmailController;->mAccountId:J
    invoke-static {v4}, Lcom/mediatek/bluetooth/map/EmailController;->access$100(Lcom/mediatek/bluetooth/map/EmailController;)J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 238
    .end local v0           #account:J
    .end local v3           #result:I
    :cond_3
    iget-object v4, p0, Lcom/mediatek/bluetooth/map/EmailController$2;->this$0:Lcom/mediatek/bluetooth/map/EmailController;

    const-string v5, "unexpected intent is received"

    #calls: Lcom/mediatek/bluetooth/map/EmailController;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/mediatek/bluetooth/map/EmailController;->access$000(Lcom/mediatek/bluetooth/map/EmailController;Ljava/lang/String;)V

    goto :goto_0
.end method
