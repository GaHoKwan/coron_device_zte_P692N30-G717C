.class Lcom/android/email/activity/EmailActivity$1;
.super Ljava/lang/Object;
.source "EmailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/EmailActivity;->showWaitingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/EmailActivity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/EmailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/email/activity/EmailActivity$1;->this$0:Lcom/android/email/activity/EmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity$1;->this$0:Lcom/android/email/activity/EmailActivity;

    #getter for: Lcom/android/email/activity/EmailActivity;->mWaitingDialog:Lcom/android/email/activity/EmailActivity$WaitingDialog;
    invoke-static {v0}, Lcom/android/email/activity/EmailActivity;->access$400(Lcom/android/email/activity/EmailActivity;)Lcom/android/email/activity/EmailActivity$WaitingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity$1;->this$0:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/EmailActivity$1;->this$0:Lcom/android/email/activity/EmailActivity;

    #getter for: Lcom/android/email/activity/EmailActivity;->mWaitingDialog:Lcom/android/email/activity/EmailActivity$WaitingDialog;
    invoke-static {v1}, Lcom/android/email/activity/EmailActivity;->access$400(Lcom/android/email/activity/EmailActivity;)Lcom/android/email/activity/EmailActivity$WaitingDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 619
    iget-object v0, p0, Lcom/android/email/activity/EmailActivity$1;->this$0:Lcom/android/email/activity/EmailActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/EmailActivity;->mWaitingDialog:Lcom/android/email/activity/EmailActivity$WaitingDialog;
    invoke-static {v0, v1}, Lcom/android/email/activity/EmailActivity;->access$402(Lcom/android/email/activity/EmailActivity;Lcom/android/email/activity/EmailActivity$WaitingDialog;)Lcom/android/email/activity/EmailActivity$WaitingDialog;

    .line 621
    :cond_0
    return-void
.end method
