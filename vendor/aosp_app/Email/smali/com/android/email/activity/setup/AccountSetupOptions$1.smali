.class Lcom/android/email/activity/setup/AccountSetupOptions$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 161
    if-nez p3, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptions;->mSmartPushDialogShown:Z
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$000(Lcom/android/email/activity/setup/AccountSetupOptions;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #getter for: Lcom/android/email/activity/setup/AccountSetupOptions;->mSmartPushDialogConfirmed:Z
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$100(Lcom/android/email/activity/setup/AccountSetupOptions;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;-><init>()V

    .line 164
    .local v0, dlg:Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;
    invoke-virtual {v0, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SmartPushAlertDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    const/4 v2, 0x1

    #setter for: Lcom/android/email/activity/setup/AccountSetupOptions;->mSmartPushDialogShown:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$002(Lcom/android/email/activity/setup/AccountSetupOptions;Z)Z

    .line 171
    .end local v0           #dlg:Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    #setter for: Lcom/android/email/activity/setup/AccountSetupOptions;->mSmartPushDialogConfirmed:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$102(Lcom/android/email/activity/setup/AccountSetupOptions;Z)Z

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
