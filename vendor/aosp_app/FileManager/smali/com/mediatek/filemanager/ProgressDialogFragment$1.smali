.class Lcom/mediatek/filemanager/ProgressDialogFragment$1;
.super Ljava/lang/Object;
.source "ProgressDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/filemanager/ProgressDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/ProgressDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mediatek/filemanager/ProgressDialogFragment$1;->this$0:Lcom/mediatek/filemanager/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/mediatek/filemanager/ProgressDialogFragment$1;->this$0:Lcom/mediatek/filemanager/ProgressDialogFragment;

    #getter for: Lcom/mediatek/filemanager/ProgressDialogFragment;->mCancelListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/mediatek/filemanager/ProgressDialogFragment;->access$000(Lcom/mediatek/filemanager/ProgressDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/mediatek/filemanager/ProgressDialogFragment$1;->this$0:Lcom/mediatek/filemanager/ProgressDialogFragment;

    #getter for: Lcom/mediatek/filemanager/ProgressDialogFragment;->mCancelListener:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/mediatek/filemanager/ProgressDialogFragment;->access$000(Lcom/mediatek/filemanager/ProgressDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/mediatek/filemanager/ProgressDialogFragment$1;->this$0:Lcom/mediatek/filemanager/ProgressDialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 120
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/mediatek/filemanager/ProgressDialogFragment$1;->this$0:Lcom/mediatek/filemanager/ProgressDialogFragment;

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    return-void
.end method
