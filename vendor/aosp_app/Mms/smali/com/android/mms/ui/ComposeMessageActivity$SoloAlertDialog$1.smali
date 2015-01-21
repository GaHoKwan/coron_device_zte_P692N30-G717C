.class Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->show(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;

.field final synthetic val$append:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 10230
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog$1;->val$append:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 10232
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$SoloAlertDialog$1;->val$append:Z

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17600(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    .line 10233
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 10234
    return-void
.end method
