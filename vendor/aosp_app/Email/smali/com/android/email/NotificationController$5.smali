.class Lcom/android/email/NotificationController$5;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/NotificationController;->postVipMailNotification(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/NotificationController;

.field final synthetic val$accountId:J

.field final synthetic val$isSuspend:Z


# direct methods
.method constructor <init>(Lcom/android/email/NotificationController;ZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1445
    iput-object p1, p0, Lcom/android/email/NotificationController$5;->this$0:Lcom/android/email/NotificationController;

    iput-boolean p2, p0, Lcom/android/email/NotificationController$5;->val$isSuspend:Z

    iput-wide p3, p0, Lcom/android/email/NotificationController$5;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1448
    iget-boolean v0, p0, Lcom/android/email/NotificationController$5;->val$isSuspend:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/NotificationController$5;->this$0:Lcom/android/email/NotificationController;

    #getter for: Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/email/NotificationController;->access$1400(Lcom/android/email/NotificationController;)Ljava/util/HashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/NotificationController$5;->val$accountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/android/email/NotificationController$5;->this$0:Lcom/android/email/NotificationController;

    invoke-virtual {v0}, Lcom/android/email/NotificationController;->sendOrCancelVipNotification()V

    .line 1451
    :cond_1
    return-void
.end method
