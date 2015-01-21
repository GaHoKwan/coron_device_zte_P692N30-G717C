.class Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$2;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;->setTextChangedCallback(Landroid/widget/EditText;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$2;->this$0:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    iput-object p2, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 471
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 476
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v3, -0x1

    .line 481
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*[/\\\\:*?\"<>|\t].*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*[/\\\\:*?\"<>|\t].*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$2;->this$0:Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment;

    iget-object v1, v1, Lcom/mediatek/filemanager/AlertDialogFragment;->mToastHelper:Lcom/mediatek/filemanager/utils/ToastHelper;

    const v2, 0x7f080032

    invoke-virtual {v1, v2}, Lcom/mediatek/filemanager/utils/ToastHelper;->showToast(I)V

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 490
    .local v0, botton:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 491
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 500
    :cond_2
    :goto_0
    return-void

    .line 494
    .end local v0           #botton:Landroid/widget/Button;
    :cond_3
    iget-object v1, p0, Lcom/mediatek/filemanager/AlertDialogFragment$EditTextDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 496
    .restart local v0       #botton:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 497
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
