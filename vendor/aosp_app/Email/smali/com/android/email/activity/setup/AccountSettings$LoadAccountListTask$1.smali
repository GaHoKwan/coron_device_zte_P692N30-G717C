.class Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->onPostExecute([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #getter for: Lcom/android/email/activity/setup/AccountSettings;->mIsBackGround:Z
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$500(Lcom/android/email/activity/setup/AccountSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 554
    const-string v1, "There are no account left, go to account setup!"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 555
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 556
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 557
    .local v0, intent:Landroid/content/Intent;
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 558
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 559
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 560
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 561
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$LoadAccountListTask;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 563
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
