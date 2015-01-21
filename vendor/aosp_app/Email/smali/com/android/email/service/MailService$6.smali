.class Lcom/android/email/service/MailService$6;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;

.field final synthetic val$alarmManager:Landroid/app/AlarmManager;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/email/service/MailService$6;->this$0:Lcom/android/email/service/MailService;

    iput-object p2, p0, Lcom/android/email/service/MailService$6;->val$alarmManager:Landroid/app/AlarmManager;

    iput p3, p0, Lcom/android/email/service/MailService$6;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 404
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->mayLowStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/email/service/MailService$6;->this$0:Lcom/android/email/service/MailService;

    iget-object v0, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->deleteCachedAttachmentsDaysBefore(I)V

    .line 411
    iget-object v0, p0, Lcom/android/email/service/MailService$6;->this$0:Lcom/android/email/service/MailService;

    iget-object v1, p0, Lcom/android/email/service/MailService$6;->val$alarmManager:Landroid/app/AlarmManager;

    #calls: Lcom/android/email/service/MailService;->rescheduleClearOldAttachment(Landroid/app/AlarmManager;)V
    invoke-static {v0, v1}, Lcom/android/email/service/MailService;->access$1000(Lcom/android/email/service/MailService;Landroid/app/AlarmManager;)V

    .line 412
    iget-object v0, p0, Lcom/android/email/service/MailService$6;->this$0:Lcom/android/email/service/MailService;

    iget v1, p0, Lcom/android/email/service/MailService$6;->val$startId:I

    invoke-virtual {v0, v1}, Landroid/app/Service;->stopSelf(I)V

    .line 416
    :cond_0
    return-void
.end method
