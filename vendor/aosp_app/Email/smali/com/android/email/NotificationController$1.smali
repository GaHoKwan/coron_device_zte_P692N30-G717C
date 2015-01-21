.class Lcom/android/email/NotificationController$1;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/NotificationController;->watchForMessages(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/NotificationController;

.field final synthetic val$watch:Z


# direct methods
.method constructor <init>(Lcom/android/email/NotificationController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    iput-boolean p2, p0, Lcom/android/email/NotificationController$1;->val$watch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/high16 v3, 0x1000

    const/4 v2, 0x0

    .line 314
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #getter for: Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/android/email/NotificationController$1;->val$watch:Z

    if-nez v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #calls: Lcom/android/email/NotificationController;->unregisterUnreadCountObserver()V
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$100(Lcom/android/email/NotificationController;)V

    .line 317
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #calls: Lcom/android/email/NotificationController;->unregisterMessageNotification(J)V
    invoke-static {v1, v3, v4}, Lcom/android/email/NotificationController;->access$200(Lcom/android/email/NotificationController;J)V

    .line 318
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #getter for: Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$300(Lcom/android/email/NotificationController;)Landroid/database/ContentObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #getter for: Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$300(Lcom/android/email/NotificationController;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 320
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #setter for: Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;
    invoke-static {v1, v2}, Lcom/android/email/NotificationController;->access$302(Lcom/android/email/NotificationController;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 324
    :cond_0
    invoke-static {}, Lcom/android/email/NotificationController;->access$400()Lcom/android/email/NotificationController$NotificationThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/NotificationController$NotificationThread;->quit()V

    .line 325
    invoke-static {v2}, Lcom/android/email/NotificationController;->access$402(Lcom/android/email/NotificationController$NotificationThread;)Lcom/android/email/NotificationController$NotificationThread;

    .line 340
    :cond_1
    :goto_0
    return-void

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #calls: Lcom/android/email/NotificationController;->registerUnreadCountObserver()V
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$500(Lcom/android/email/NotificationController;)V

    .line 331
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #calls: Lcom/android/email/NotificationController;->registerMessageNotification(J)V
    invoke-static {v1, v3, v4}, Lcom/android/email/NotificationController;->access$600(Lcom/android/email/NotificationController;J)V

    .line 333
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #getter for: Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/email/NotificationController;->access$300(Lcom/android/email/NotificationController;)Landroid/database/ContentObserver;

    move-result-object v1

    if-nez v1, :cond_1

    .line 334
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 335
    const-string v1, "Email"

    const-string v2, "Observing account changes for notifications"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_3
    iget-object v1, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    new-instance v2, Lcom/android/email/NotificationController$AccountContentObserver;

    invoke-static {}, Lcom/android/email/NotificationController;->access$700()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #getter for: Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/NotificationController;->access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/email/NotificationController$AccountContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    #setter for: Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;
    invoke-static {v1, v2}, Lcom/android/email/NotificationController;->access$302(Lcom/android/email/NotificationController;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 338
    sget-object v1, Lcom/android/emailcommon/provider/Account;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/email/NotificationController$1;->this$0:Lcom/android/email/NotificationController;

    #getter for: Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;
    invoke-static {v3}, Lcom/android/email/NotificationController;->access$300(Lcom/android/email/NotificationController;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method
