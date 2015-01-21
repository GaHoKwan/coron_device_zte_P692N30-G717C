.class Lcom/android/email/Email$2;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Email;->updateUnreadMail(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Email;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/email/Email;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/email/Email$2;->this$0:Lcom/android/email/Email;

    iput-object p2, p0, Lcom/android/email/Email$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 252
    const-string v1, "Email#updateUnreadMail"

    invoke-static {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/android/email/Email$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/emailcommon/provider/Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    .line 256
    .local v0, unreadCount:I
    iget-object v1, p0, Lcom/android/email/Email$2;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/email/NotificationController;->notifyEmailUnreadNumber(Landroid/content/Context;I)V

    .line 258
    const-string v1, "Email#updateUnreadMail"

    invoke-static {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 259
    return-void
.end method
