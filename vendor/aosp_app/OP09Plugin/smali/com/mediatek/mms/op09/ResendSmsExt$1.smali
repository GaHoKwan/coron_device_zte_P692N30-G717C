.class Lcom/mediatek/mms/op09/ResendSmsExt$1;
.super Ljava/lang/Object;
.source "ResendSmsExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mms/op09/ResendSmsExt;->resendMessage(Landroid/content/Context;Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mms/op09/ResendSmsExt;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$simId:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/mediatek/mms/op09/ResendSmsExt;Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/mms/op09/ResendSmsExt$1;->this$0:Lcom/mediatek/mms/op09/ResendSmsExt;

    iput-object p2, p0, Lcom/mediatek/mms/op09/ResendSmsExt$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mediatek/mms/op09/ResendSmsExt$1;->val$uri:Landroid/net/Uri;

    iput p4, p0, Lcom/mediatek/mms/op09/ResendSmsExt$1;->val$simId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 62
    .local v0, date:Ljava/lang/Long;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 63
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    iget-object v4, p0, Lcom/mediatek/mms/op09/ResendSmsExt$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/mms/op09/ResendSmsExt$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    iget-object v4, p0, Lcom/mediatek/mms/op09/ResendSmsExt$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/mms/op09/ResendSmsExt$1;->val$uri:Landroid/net/Uri;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v1

    .line 68
    .local v1, isMoved:Z
    const-string v4, "Mms/ResendSmsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Move message to queued box: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.mediatek.mms.op09.RESEND_MESSAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, sentIt:Landroid/content/Intent;
    const-string v4, "simId"

    iget v5, p0, Lcom/mediatek/mms/op09/ResendSmsExt$1;->val$simId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object v4, p0, Lcom/mediatek/mms/op09/ResendSmsExt$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
