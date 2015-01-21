.class public Lcom/android/email/activity/MessageFileViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageFileViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageFileViewFragment$1;,
        Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;,
        Lcom/android/email/activity/MessageFileViewFragment$MessageFileViewCallback;,
        Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;,
        Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;
    }
.end annotation


# static fields
.field public static final MSG_PARSE_MESSAGE:I = 0x1

.field public static final MSG_START_LOADING:I = 0x0

.field public static final MSG_UPDATE_DATABASE:I = 0x2

.field public static final MSG_UPDATE_UI:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MessageFileViewFragment"

.field private static sFragmentCount:I


# instance fields
.field private mCallBack:Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;

.field private mFileEmailUri:Landroid/net/Uri;

.field private mHandler:Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;

.field private mIsLoadingFinished:Z

.field private mNeedReload:Z

.field private mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    .line 63
    iput-boolean v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mIsLoadingFinished:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mNeedReload:Z

    .line 332
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageFileViewFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mIsLoadingFinished:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageFileViewFragment;)Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mHandler:Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageFileViewFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageFileViewFragment;->reportProgress(I)V

    return-void
.end method

.method private finish()V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/email/activity/MessageFileViewFragment;->releaseProgressDialog()V

    .line 361
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getCallback()Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onMessageNotExists()V

    .line 362
    return-void
.end method

.method private releaseProgressDialog()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mIsLoadingFinished:Z

    .line 188
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    .line 192
    :cond_0
    return-void
.end method

.method private reportProgress(I)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 291
    .local v0, fm:Landroid/app/FragmentManager;
    if-eqz v0, :cond_1

    .line 292
    const-string v1, "LoadingFileMessageProgressDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    iput-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    .line 294
    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    if-nez v1, :cond_0

    .line 296
    invoke-static {p0}, Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;->newInstance(Landroid/app/Fragment;)Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    .line 297
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    const-string v3, "LoadingFileMessageProgressDialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 300
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;->updateProgress(I)V

    goto :goto_0

    .line 305
    :cond_1
    const-string v1, "MessageFileViewFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportProgress failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 200
    .local v0, fm:Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 201
    const-string v1, "LoadingFileMessageProgressDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    iput-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    if-nez v1, :cond_1

    .line 205
    invoke-static {p0}, Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;->newInstance(Landroid/app/Fragment;)Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    .line 207
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageFileViewFragment;->mProgressDialog:Lcom/android/email/activity/MessageFileViewFragment$LoadingFileMessageProgressDialog;

    const-string v3, "LoadingFileMessageProgressDialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v1, "MessageFileViewFragment"

    const-string v2, "Not show duplicate progress dialog"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 111
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 114
    :cond_0
    return-void
.end method

.method protected onCheckingDialogCancel()V
    .locals 2

    .prologue
    .line 310
    const-string v0, "MessageFileViewFragment"

    const-string v1, "User canceled the loading dialog ..."

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mIsLoadingFinished:Z

    .line 312
    invoke-direct {p0}, Lcom/android/email/activity/MessageFileViewFragment;->finish()V

    .line 313
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    .line 73
    new-instance v0, Lcom/android/email/activity/MessageFileViewFragment$MessageFileViewCallback;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageFileViewFragment$MessageFileViewCallback;-><init>(Lcom/android/email/activity/MessageFileViewFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mCallBack:Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;

    .line 74
    new-instance v0, Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;-><init>(Lcom/android/email/activity/MessageFileViewFragment;Lcom/android/email/activity/MessageFileViewFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mHandler:Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, result:Landroid/view/View;
    const v1, 0x7f0f00db

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 99
    const v1, 0x7f0f0014

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 100
    const v1, 0x7f0f00dc

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 101
    const v1, 0x7f0f00de

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 102
    const v1, 0x7f0f00dd

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;II)V

    .line 104
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDestroy()V

    .line 121
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    .line 122
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getController()Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Controller;->deleteAttachmentMessages()V

    .line 125
    :cond_0
    iput-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mCallBack:Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;

    .line 126
    iput-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mHandler:Lcom/android/email/activity/MessageFileViewFragment$MessageViewHandler;

    .line 127
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 85
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-boolean v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mNeedReload:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 86
    const-string v1, "MessageFileViewFragment"

    const-string v2, "Reload eml Message from cache"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageFileViewFragment;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mNeedReload:Z

    .line 90
    :cond_0
    return-void
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 4
    .parameter "activity"

    .prologue
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " openMessageSync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/android/email/activity/MessageFileViewFragment;->showProgressDialog()V

    .line 160
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getController()Lcom/android/email/Controller;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/email/activity/MessageFileViewFragment;->mCallBack:Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->loadMessageFromUri(Landroid/net/Uri;Lcom/android/email/activity/MessageFileViewFragment$OpenFileMessageCallback;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 161
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-direct {p0}, Lcom/android/email/activity/MessageFileViewFragment;->releaseProgressDialog()V

    .line 162
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mNeedReload:Z

    .line 163
    return-object v0

    .line 162
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected reloadMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "activity"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 2
    .parameter "message"
    .parameter "okToFetch"

    .prologue
    .line 180
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 183
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 184
    return-void
.end method

.method public setFileUri(Landroid/net/Uri;)V
    .locals 2
    .parameter "fileEmailUri"

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " openMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 143
    :cond_0
    if-nez p1, :cond_1

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 146
    :cond_1
    iput-object p1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    .line 147
    return-void
.end method
