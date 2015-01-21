.class public Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;
.super Landroid/app/DialogFragment;
.source "GroupDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyProgressDialog"
.end annotation


# instance fields
.field private mIsDismiss:Z

.field private mShouldDismiss:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1264
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 1265
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mIsDismiss:Z

    .line 1266
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mShouldDismiss:Z

    return-void
.end method

.method static synthetic access$2302(Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1264
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mIsDismiss:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1264
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mShouldDismiss:Z

    return v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 1269
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1270
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1271
    invoke-static {p0}, Lcom/android/contacts/group/GroupDetailFragment;->access$2502(Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;)Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    .line 1272
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1273
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1277
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mShouldDismiss:Z

    .line 1279
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1282
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1283
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mShouldDismiss:Z

    .line 1284
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mIsDismiss:Z

    if-eqz v0, :cond_0

    .line 1285
    invoke-static {}, Lcom/android/contacts/group/GroupDetailFragment;->access$2500()Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/contacts/group/GroupDetailFragment;->access$2500()Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/contacts/group/GroupDetailFragment;->access$2500()Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-static {}, Lcom/android/contacts/group/GroupDetailFragment;->access$2500()Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1288
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mIsDismiss:Z

    .line 1291
    :cond_0
    return-void
.end method
