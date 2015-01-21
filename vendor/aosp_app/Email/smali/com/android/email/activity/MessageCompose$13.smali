.class Lcom/android/email/activity/MessageCompose$13;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->deleteAttachment(Ljava/util/List;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$attachmentId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2545
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$13;->val$attachmentId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2548
    const-string v0, "MessageCompose#deleteAttachment"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 2549
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$13;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$3400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose$13;->val$attachmentId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->deleteAttachment(J)V

    .line 2550
    const-string v0, "MessageCompose#deleteAttachment"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 2551
    return-void
.end method
