.class Lcom/android/mms/ui/ComposeMessageActivity$76;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->showConfirmDialog(Landroid/net/Uri;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$mRestrictedAppend:Z

.field final synthetic val$mRestrictedMidea:Landroid/net/Uri;

.field final synthetic val$mRestrictedType:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 9177
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedMidea:Landroid/net/Uri;

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedType:I

    iput-boolean p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedAppend:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 9179
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedMidea:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->val$mRestrictedType:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9220
    :cond_0
    :goto_0
    return-void

    .line 9183
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$76;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$76$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$76$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$76;)V

    const/4 v2, 0x0

    const v3, 0x7f0b0283

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
