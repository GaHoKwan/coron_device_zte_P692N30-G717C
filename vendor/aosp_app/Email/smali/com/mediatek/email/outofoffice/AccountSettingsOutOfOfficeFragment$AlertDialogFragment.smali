.class public Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettingsOutOfOfficeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# static fields
.field private static final IS_ALRET:Ljava/lang/String; = "mIsSaveAlert"

.field private static final MSG_ID:Ljava/lang/String; = "messageId"

.field public static final TAG:Ljava/lang/String; = "AlertDialogFragment"

.field private static final TITLE_ID:Ljava/lang/String; = "titleId"


# instance fields
.field private mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

.field private mIsSaveAlert:Z

.field private mMessageId:I

.field private mTitleId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 545
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 546
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 549
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 550
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mTitleId:I

    .line 551
    iput p2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mMessageId:I

    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mIsSaveAlert:Z

    .line 553
    return-void
.end method

.method public constructor <init>(IILcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;)V
    .locals 1
    .parameter "titleId"
    .parameter "messageId"
    .parameter "callback"

    .prologue
    .line 556
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 557
    iput p1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mTitleId:I

    .line 558
    iput p2, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mMessageId:I

    .line 559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mIsSaveAlert:Z

    .line 560
    iput-object p3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    .line 561
    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 530
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    return-object v0
.end method

.method public static newInstance(II)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    .locals 1
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 564
    new-instance v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;-><init>(II)V

    .line 565
    .local v0, dialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    return-object v0
.end method

.method public static newInstance(IILcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;)Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    .locals 1
    .parameter "titleId"
    .parameter "messageId"
    .parameter "callback"

    .prologue
    .line 570
    new-instance v0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;-><init>(IILcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;)V

    .line 572
    .local v0, dialog:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f080078

    const v4, 0x1010355

    .line 577
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 578
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 579
    .local v2, dialogBuilder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 580
    const-string v3, "titleId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mTitleId:I

    .line 581
    const-string v3, "messageId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mMessageId:I

    .line 582
    const-string v3, "mIsSaveAlert"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mIsSaveAlert:Z

    .line 583
    check-cast v1, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    .end local v1           #context:Landroid/content/Context;
    iput-object v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mCallback:Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$Callback;

    .line 585
    :cond_0
    iget-boolean v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mIsSaveAlert:Z

    if-eqz v3, :cond_1

    .line 586
    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mMessageId:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment$2;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080079

    new-instance v5, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment$1;

    invoke-direct {v5, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment$1;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    :goto_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 616
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 617
    return-object v0

    .line 605
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :cond_1
    iget v3, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mTitleId:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mMessageId:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment$3;-><init>(Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;)V

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 622
    const-string v0, "titleId"

    iget v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mTitleId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 623
    const-string v0, "messageId"

    iget v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mMessageId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 624
    const-string v0, "mIsSaveAlert"

    iget-boolean v1, p0, Lcom/mediatek/email/outofoffice/AccountSettingsOutOfOfficeFragment$AlertDialogFragment;->mIsSaveAlert:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    return-void
.end method
