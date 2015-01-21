.class public Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "OofSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/outofoffice/OofSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# static fields
.field private static final MSG_ID:Ljava/lang/String; = "messageId"

.field private static final TITLE_ID:Ljava/lang/String; = "titleId"


# instance fields
.field private mMessageId:I

.field private mTitleId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 115
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 119
    iput p1, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;->mTitleId:I

    .line 120
    iput p2, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;->mMessageId:I

    .line 121
    return-void
.end method

.method public static newInstance(II)Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;
    .locals 1
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 124
    new-instance v0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;-><init>(II)V

    .line 125
    .local v0, dialog:Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 131
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    .local v2, dialogBuilder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 133
    const-string v3, "titleId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;->mTitleId:I

    .line 134
    const-string v3, "messageId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;->mMessageId:I

    .line 136
    :cond_0
    iget v3, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;->mMessageId:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080078

    new-instance v5, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment$2;-><init>(Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080079

    new-instance v5, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment$1;-><init>(Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 154
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 155
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 156
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 161
    const-string v0, "titleId"

    iget v1, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;->mTitleId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v0, "messageId"

    iget v1, p0, Lcom/mediatek/email/outofoffice/OofSettingsActivity$AlertDialogFragment;->mMessageId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    return-void
.end method
