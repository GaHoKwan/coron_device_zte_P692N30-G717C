.class public Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;
.super Landroid/app/DialogFragment;
.source "AutoReplyDialogFragment.java"


# static fields
.field private static final OOF_REPLY:Ljava/lang/String; = "oof_reply"

.field public static final TAG:Ljava/lang/String; = "AutoReplyDialogFragment"

.field private static mAccountId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 39
    return-void
.end method

.method public static newInstance(J)Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 28
    new-instance v0, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;

    invoke-direct {v0}, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;-><init>()V

    .line 29
    .local v0, frag:Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;
    sput-wide p0, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;->mAccountId:J

    .line 30
    return-object v0
.end method


# virtual methods
.method protected getReplyText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "oof_reply"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, pre:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oof_reply"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 45
    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040023

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 46
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0f0072

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 48
    .local v2, editText:Landroid/widget/EditText;
    const v5, 0x7f080053

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 49
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 51
    const v5, 0x7f080078

    new-instance v6, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment$1;

    invoke-direct {v6, p0, v2}, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment$1;-><init>(Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    const/high16 v5, 0x104

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {p0}, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;->getReplyText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 64
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment$2;

    invoke-direct {v5, p0, v1}, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment$2;-><init>(Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0x3a98

    const/4 v7, 0x1

    invoke-static {v2, v5, v6, v7}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 81
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 83
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    return-object v1
.end method

.method protected setReplyText(Ljava/lang/String;)V
    .locals 4
    .parameter "replyText"

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "oof_reply"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oof_reply"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/mediatek/email/outofoffice/AutoReplyDialogFragment;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    return-void
.end method
