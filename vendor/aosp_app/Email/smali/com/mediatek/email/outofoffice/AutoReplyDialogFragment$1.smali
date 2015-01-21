.class Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment$1;
.super Ljava/lang/Object;
.source "AutoReplyDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment$1;->this$0:Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;

    iput-object p2, p0, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "whichButton"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment$1;->this$0:Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;

    iget-object v1, p0, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment$1;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;->setReplyText(Ljava/lang/String;)V

    .line 56
    return-void
.end method
