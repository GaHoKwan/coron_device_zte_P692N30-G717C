.class public Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;
.super Landroid/app/DialogFragment;
.source "MessageFileViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageFileViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingFileMessageProgressDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LoadingFileMessageProgressDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getProgressString(I)Ljava/lang/String;
    .locals 2
    .parameter "progress"

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, stringId:I
    packed-switch p1, :pswitch_data_0

    .line 284
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 271
    :pswitch_0
    const v0, 0x7f080119

    .line 272
    goto :goto_0

    .line 274
    :pswitch_1
    const v0, 0x7f08001c

    .line 275
    goto :goto_0

    .line 277
    :pswitch_2
    const v0, 0x7f08001d

    .line 278
    goto :goto_0

    .line 280
    :pswitch_3
    const v0, 0x7f08001e

    .line 281
    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static newInstance(Landroid/app/Fragment;)Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;
    .locals 2
    .parameter "parentFragment"

    .prologue
    .line 227
    new-instance v0, Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    invoke-direct {v0}, Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;-><init>()V

    .line 228
    .local v0, f:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 229
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 234
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 235
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 236
    .local v1, dialog:Landroid/app/ProgressDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 237
    const v2, 0x7f080119

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 238
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 239
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageFileViewFragment;

    .line 248
    .local v0, target:Lcom/android/email/activity/MessageFileViewFragment;
    if-eqz v0, :cond_0

    #getter for: Lcom/android/email/activity/MessageFileViewFragment;->mIsLoadingFinished:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageFileViewFragment;->access$100(Lcom/android/email/activity/MessageFileViewFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/android/email/activity/MessageFileViewFragment;->onCheckingDialogCancel()V

    .line 251
    :cond_0
    return-void
.end method

.method public updateProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 259
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 262
    :cond_0
    return-void
.end method
