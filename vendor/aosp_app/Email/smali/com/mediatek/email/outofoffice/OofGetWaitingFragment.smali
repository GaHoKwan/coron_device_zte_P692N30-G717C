.class public Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;
.super Lcom/android/email/activity/SafeFragment;
.source "OofGetWaitingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;,
        Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY:Ljava/lang/String; = "OofGetWaitingFragment.accountId"

.field private static final DEFAULT_ID:J = -0x1L

.field private static final STATE_START:I = -0x80000000

.field public static final TAG:Ljava/lang/String; = "OofGetWaitingFragment"

.field private static mAccountId:J


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field public mAttached:Z

.field private mCheckingDialog:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

.field private mContext:Landroid/content/Context;

.field mOofCheckTask:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;

.field mOofParams:Lcom/android/emailcommon/service/OofParams;

.field private mPaused:Z

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAccountId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/email/activity/SafeFragment;-><init>()V

    .line 43
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mState:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->reportProgress(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->onCheckingDialogCancel()V

    return-void
.end method

.method private finish()V
    .locals 3

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 274
    .local v0, fm:Landroid/app/FragmentManager;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 277
    :cond_0
    if-eqz v0, :cond_1

    .line 278
    const-string v1, "Kill current fragment if not already killed (finish)"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Landroid/app/Fragment;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 281
    :cond_1
    return-void
.end method

.method public static newInstance(JLandroid/app/Fragment;)Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;
    .locals 2
    .parameter "accountId"
    .parameter "parentFragment"

    .prologue
    .line 64
    new-instance v0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;

    invoke-direct {v0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;-><init>()V

    .line 65
    .local v0, f:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 66
    sput-wide p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAccountId:J

    .line 67
    return-object v0
.end method

.method private onCheckingDialogCancel()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofCheckTask:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofCheckTask:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;

    .line 266
    const-string v0, "Email"

    const-string v1, "onCheckingDialogCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->finish()V

    .line 269
    return-void
.end method

.method private recoverAndDismissCheckingDialog()V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "WaitingSaveOofDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mCheckingDialog:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    .line 250
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mCheckingDialog:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mCheckingDialog:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mCheckingDialog:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    .line 254
    :cond_0
    return-void
.end method

.method private reportProgress(I)V
    .locals 3
    .parameter "newState"

    .prologue
    const v2, 0x7f080012

    .line 176
    iput p1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mState:I

    .line 178
    iget-boolean v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAttached:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mPaused:Z

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 181
    .local v0, fm:Landroid/app/FragmentManager;
    sparse-switch p1, :sswitch_data_0

    .line 204
    invoke-direct {p0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->recoverAndDismissCheckingDialog()V

    .line 206
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 210
    invoke-direct {p0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->startOofActivity()V

    .line 214
    .end local v0           #fm:Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local v0       #fm:Landroid/app/FragmentManager;
    :sswitch_0
    invoke-direct {p0, v0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->setupWaitingDialog(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 188
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/activity/UiUtilities;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const v1, 0x7f080014

    invoke-direct {p0, v0, v2, v1}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->showAlertDialog(Landroid/app/FragmentManager;II)V

    goto :goto_0

    .line 192
    :cond_1
    const v1, 0x7f080013

    invoke-direct {p0, v0, v2, v1}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->showAlertDialog(Landroid/app/FragmentManager;II)V

    goto :goto_0

    .line 198
    :sswitch_2
    const v1, 0x7f080058

    const v2, 0x7f080059

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->showAlertDialog(Landroid/app/FragmentManager;II)V

    goto :goto_0

    .line 181
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method private setupWaitingDialog(Landroid/app/FragmentManager;)V
    .locals 3
    .parameter "fm"

    .prologue
    .line 161
    const-string v0, "WaitingSaveOofDialog"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mCheckingDialog:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    .line 162
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mCheckingDialog:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    if-nez v0, :cond_0

    .line 163
    invoke-static {p0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;->newInstance(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;)Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mCheckingDialog:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    .line 164
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mCheckingDialog:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$WaitingSaveOofDialog;

    const-string v2, "WaitingSaveOofDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 168
    :cond_0
    return-void
.end method

.method private showAlertDialog(Landroid/app/FragmentManager;II)V
    .locals 3
    .parameter "fm"
    .parameter "titeId"
    .parameter "messageId"

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->recoverAndDismissCheckingDialog()V

    .line 221
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, bld:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 223
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 225
    const v1, 0x7f080078

    new-instance v2, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$1;-><init>(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;Landroid/app/FragmentManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    new-instance v1, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$2;-><init>(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;Landroid/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 240
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 241
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 242
    return-void
.end method

.method private startOofActivity()V
    .locals 5

    .prologue
    .line 290
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 293
    :cond_0
    const/high16 v1, -0x8000

    iput v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mState:I

    .line 294
    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofParams:Lcom/android/emailcommon/service/OofParams;

    invoke-static {v1, v2, v3, v4}, Lcom/mediatek/email/outofoffice/OofSettingsActivity;->createIntent(Landroid/content/Context;JLandroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 296
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAttached:Z

    .line 108
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofCheckTask:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;

    invoke-direct {v0, p0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;-><init>(Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofCheckTask:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ### onActivityCreated  #### "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofCheckTask:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 93
    iput-object p1, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string v0, "OofGetWaitingFragment.accountId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAccountId:J

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mContext:Landroid/content/Context;

    sget-wide v1, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAccountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 82
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofCheckTask:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mOofCheckTask:Lcom/mediatek/email/outofoffice/OofGetWaitingFragment$OofTask;

    .line 147
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAttached:Z

    .line 157
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mPaused:Z

    .line 132
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 136
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/email/activity/SafeFragment;->onResume()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mPaused:Z

    .line 123
    iget v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mState:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    .line 124
    iget v0, p0, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mState:I

    invoke-direct {p0, v0}, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->reportProgress(I)V

    .line 126
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 87
    const-string v0, "OofGetWaitingFragment.accountId"

    sget-wide v1, Lcom/mediatek/email/outofoffice/OofGetWaitingFragment;->mAccountId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    return-void
.end method
