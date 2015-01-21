.class public Lcom/android/contacts/dialog/IndeterminateProgressDialog;
.super Landroid/app/DialogFragment;
.source "IndeterminateProgressDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityReady:Z

.field private mAllowStateLoss:Z

.field private mCalledSuperDismiss:Z

.field private final mDismisser:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMinDisplayTime:J

.field private mOldDialog:Landroid/app/Dialog;

.field private mShowTime:J

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mShowTime:J

    .line 51
    iput-boolean v2, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mHandler:Landroid/os/Handler;

    .line 54
    iput-boolean v2, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mCalledSuperDismiss:Z

    .line 56
    new-instance v0, Lcom/android/contacts/dialog/IndeterminateProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/dialog/IndeterminateProgressDialog$1;-><init>(Lcom/android/contacts/dialog/IndeterminateProgressDialog;)V

    iput-object v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mDismisser:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/dialog/IndeterminateProgressDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->superDismiss()V

    return-void
.end method

.method private dismissWhenReady()V
    .locals 8

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mShowTime:J

    sub-long v0, v4, v6

    .line 175
    .local v0, shownTime:J
    iget-wide v4, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mMinDisplayTime:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mDismisser:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-wide v4, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mMinDisplayTime:J

    sub-long v2, v4, v0

    .line 181
    .local v2, sleepTime:J
    iget-object v4, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mDismisser:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Lcom/android/contacts/dialog/IndeterminateProgressDialog;
    .locals 3
    .parameter "fragmentManager"
    .parameter "title"
    .parameter "message"
    .parameter "minDisplayTime"

    .prologue
    .line 70
    new-instance v0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;

    invoke-direct {v0}, Lcom/android/contacts/dialog/IndeterminateProgressDialog;-><init>()V

    .line 71
    .local v0, dialogFragment:Lcom/android/contacts/dialog/IndeterminateProgressDialog;
    iput-object p1, v0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mTitle:Ljava/lang/CharSequence;

    .line 72
    iput-object p2, v0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mMessage:Ljava/lang/CharSequence;

    .line 73
    iput-wide p3, v0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mMinDisplayTime:J

    .line 74
    sget-object v1, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mShowTime:J

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 78
    return-object v0
.end method

.method private superDismiss()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mCalledSuperDismiss:Z

    .line 190
    iget-boolean v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    if-eqz v0, :cond_0

    .line 193
    iget-boolean v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mAllowStateLoss:Z

    if-eqz v0, :cond_1

    .line 194
    invoke-super {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-super {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mAllowStateLoss:Z

    .line 153
    invoke-direct {p0}, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->dismissWhenReady()V

    .line 154
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mAllowStateLoss:Z

    .line 164
    invoke-direct {p0}, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->dismissWhenReady()V

    .line 165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 85
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 90
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, dialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v1, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 96
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mOldDialog:Landroid/app/Dialog;

    .line 143
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 144
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mOldDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mOldDialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    .line 107
    iget-boolean v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mCalledSuperDismiss:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->superDismiss()V

    .line 110
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->mActivityReady:Z

    .line 116
    return-void
.end method
