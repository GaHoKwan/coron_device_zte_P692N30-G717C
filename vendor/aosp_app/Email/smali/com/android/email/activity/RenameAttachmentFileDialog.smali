.class public Lcom/android/email/activity/RenameAttachmentFileDialog;
.super Landroid/app/DialogFragment;
.source "RenameAttachmentFileDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/RenameAttachmentFileDialog$Callback;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_FILE_RENAME_NEWNAME:Ljava/lang/String; = "attachment_file_rename_newname"

.field private static final ATTACHMENT_ID:Ljava/lang/String; = "attachment_id"

.field private static final INVALID_FILENAME_PATTERN:Ljava/lang/String; = ".*[/\\\\:*?\"<>|].*"

.field public static final TAG:Ljava/lang/String; = "RenameAttachmentFileDialog"


# instance fields
.field private mAttachmentId:J

.field private mAttachmentInfo:Lcom/android/email/AttachmentInfo;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 69
    return-void
.end method

.method private getCallback()Lcom/android/email/activity/RenameAttachmentFileDialog$Callback;
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 208
    .local v0, targetFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 209
    check-cast v0, Lcom/android/email/activity/RenameAttachmentFileDialog$Callback;

    .line 211
    .end local v0           #targetFragment:Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0       #targetFragment:Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/RenameAttachmentFileDialog$Callback;

    move-object v0, v1

    goto :goto_0
.end method

.method public static isFileNameValid(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".*[/\\\\:*?\"<>|].*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static newInstance(Lcom/android/email/AttachmentInfo;Landroid/app/Fragment;)Lcom/android/email/activity/RenameAttachmentFileDialog;
    .locals 3
    .parameter "attachmentInfo"
    .parameter "callbackFragment"

    .prologue
    .line 82
    new-instance v0, Lcom/android/email/activity/RenameAttachmentFileDialog;

    invoke-direct {v0}, Lcom/android/email/activity/RenameAttachmentFileDialog;-><init>()V

    .line 83
    .local v0, dialog:Lcom/android/email/activity/RenameAttachmentFileDialog;
    iput-object p0, v0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mAttachmentInfo:Lcom/android/email/AttachmentInfo;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 87
    :cond_0
    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mId:J

    iput-wide v1, v0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mAttachmentId:J

    .line 88
    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, -0x1

    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/activity/RenameAttachmentFileDialog;->isFileNameValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/activity/RenameAttachmentFileDialog;->isFileNameValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080034

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/Utility;->showToastShortTime(Landroid/content/Context;I)V

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 153
    .local v0, botton:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 154
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 162
    :cond_2
    :goto_0
    return-void

    .line 157
    .end local v0           #botton:Landroid/widget/Button;
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 158
    .restart local v0       #botton:Landroid/widget/Button;
    if-eqz v0, :cond_2

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 166
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 187
    packed-switch p2, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 189
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/RenameAttachmentFileDialog;->getCallback()Lcom/android/email/activity/RenameAttachmentFileDialog$Callback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mAttachmentId:J

    invoke-interface {v1, v2, v3}, Lcom/android/email/activity/RenameAttachmentFileDialog$Callback;->onRenameCanceled(J)V

    .line 190
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, name:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/email/activity/RenameAttachmentFileDialog;->getCallback()Lcom/android/email/activity/RenameAttachmentFileDialog$Callback;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mAttachmentId:J

    invoke-interface {v1, v2, v3, v0}, Lcom/android/email/activity/RenameAttachmentFileDialog$Callback;->onRenameFinished(JLjava/lang/String;)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 106
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040022

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 111
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0f0071

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    .line 112
    if-eqz p1, :cond_1

    .line 113
    const-string v4, "attachment_id"

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mAttachmentId:J

    .line 114
    const-string v4, "attachment_file_rename_newname"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, newName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 117
    iget-object v4, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    .end local v2           #newName:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 123
    iget-object v4, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    iget-object v4, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    const/16 v5, 0x100

    const/4 v6, 0x1

    invoke-static {v4, v1, v5, v6}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080033

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080079

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080078

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mDialog:Landroid/app/AlertDialog;

    .line 131
    iget-object v4, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v4

    .line 119
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mAttachmentInfo:Lcom/android/email/AttachmentInfo;

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mAttachmentInfo:Lcom/android/email/AttachmentInfo;

    iget-object v5, v5, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 139
    iget-object v0, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/RenameAttachmentFileDialog;->isFileNameValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    const-string v0, "attachment_file_rename_newname"

    iget-object v1, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "attachment_id"

    iget-wide v1, p0, Lcom/android/email/activity/RenameAttachmentFileDialog;->mAttachmentId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 180
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 171
    return-void
.end method
