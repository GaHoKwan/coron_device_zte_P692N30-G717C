.class Lcom/android/email/service/MailService$ControllerResults$1;
.super Ljava/lang/Thread;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService$ControllerResults;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/service/MailService$ControllerResults;


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService$ControllerResults;)V
    .locals 0
    .parameter

    .prologue
    .line 865
    iput-object p1, p0, Lcom/android/email/service/MailService$ControllerResults$1;->this$1:Lcom/android/email/service/MailService$ControllerResults;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/email/service/MailService$ControllerResults$1;->this$1:Lcom/android/email/service/MailService$ControllerResults;

    iget-object v0, v0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/MailService$ControllerResults$1;->this$1:Lcom/android/email/service/MailService$ControllerResults;

    iget-object v1, v1, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;
    invoke-static {v1}, Lcom/android/email/service/MailService;->access$200(Lcom/android/email/service/MailService;)Lcom/android/email/Controller$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 870
    return-void
.end method
