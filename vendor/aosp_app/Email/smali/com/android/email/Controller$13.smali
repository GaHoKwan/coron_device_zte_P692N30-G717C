.class Lcom/android/email/Controller$13;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessageAnsweredOrForwarded(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$flag:I

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/android/email/Controller$13;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$13;->val$messageId:J

    iput p4, p0, Lcom/android/email/Controller$13;->val$flag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1437
    const-string v2, "Controller#setMessageAnsweredOrForwarded"

    invoke-static {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 1439
    iget-object v2, p0, Lcom/android/email/Controller$13;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/Controller$13;->val$messageId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 1440
    .local v1, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v1, :cond_0

    .line 1441
    const-string v2, "Email"

    const-string v3, "Unable to find source message for a reply/forward"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    const-string v2, "Controller#setMessageAnsweredOrForwarded"

    invoke-static {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 1450
    :goto_0
    return-void

    .line 1445
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1446
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "flags"

    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    iget v4, p0, Lcom/android/email/Controller$13;->val$flag:I

    or-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1447
    iget-object v2, p0, Lcom/android/email/Controller$13;->this$0:Lcom/android/email/Controller;

    iget-wide v3, p0, Lcom/android/email/Controller$13;->val$messageId:J

    #calls: Lcom/android/email/Controller;->updateMessageReplyOrForward(JLandroid/content/ContentValues;)V
    invoke-static {v2, v3, v4, v0}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;JLandroid/content/ContentValues;)V

    .line 1449
    const-string v2, "Controller#setMessageAnsweredOrForwarded"

    invoke-static {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    goto :goto_0
.end method