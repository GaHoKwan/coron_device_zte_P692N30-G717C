.class Lcom/android/email/Controller$12;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessageRead(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$isRead:Z

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/android/email/Controller$12;->this$0:Lcom/android/email/Controller;

    iput-boolean p2, p0, Lcom/android/email/Controller$12;->val$isRead:Z

    iput-wide p3, p0, Lcom/android/email/Controller$12;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1342
    const-string v0, "Controller#setMessageRead"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 1344
    iget-boolean v0, p0, Lcom/android/email/Controller$12;->val$isRead:Z

    if-nez v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/email/Controller$12;->this$0:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/Controller$12;->val$messageId:J

    #calls: Lcom/android/email/Controller;->updateLastSeenMessage(J)V
    invoke-static {v0, v1, v2}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;J)V

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/android/email/Controller$12;->this$0:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/Controller$12;->val$messageId:J

    const-string v3, "flagRead"

    iget-boolean v4, p0, Lcom/android/email/Controller$12;->val$isRead:Z

    #calls: Lcom/android/email/Controller;->copySetValueIfSearchBox(JLjava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;JLjava/lang/String;Z)V

    .line 1351
    iget-object v0, p0, Lcom/android/email/Controller$12;->this$0:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/Controller$12;->val$messageId:J

    const-string v3, "flagRead"

    iget-boolean v4, p0, Lcom/android/email/Controller$12;->val$isRead:Z

    #calls: Lcom/android/email/Controller;->setMessageBooleanSync(JLjava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;JLjava/lang/String;Z)V

    .line 1353
    const-string v0, "Controller#setMessageRead"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 1354
    return-void
.end method
