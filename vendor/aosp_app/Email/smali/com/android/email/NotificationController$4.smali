.class Lcom/android/email/NotificationController$4;
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

.field final synthetic val$isSuspend:Z


# direct methods
.method constructor <init>(Lcom/android/email/NotificationController;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1435
    iput-object p1, p0, Lcom/android/email/NotificationController$4;->this$0:Lcom/android/email/NotificationController;

    iput-boolean p2, p0, Lcom/android/email/NotificationController$4;->val$isSuspend:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1438
    iget-boolean v0, p0, Lcom/android/email/NotificationController$4;->val$isSuspend:Z

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/email/NotificationController$4;->this$0:Lcom/android/email/NotificationController;

    #getter for: Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/email/NotificationController;->access$1400(Lcom/android/email/NotificationController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/android/email/NotificationController$4;->this$0:Lcom/android/email/NotificationController;

    invoke-virtual {v0}, Lcom/android/email/NotificationController;->sendOrCancelVipNotification()V

    .line 1442
    return-void
.end method
