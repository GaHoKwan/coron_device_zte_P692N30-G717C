.class public Lcom/android/email/activity/MoveMessageToDialog;
.super Landroid/app/DialogFragment;
.source "MoveMessageToDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MoveMessageToDialog$IdContainer;,
        Lcom/android/email/activity/MoveMessageToDialog$MessageChecker;,
        Lcom/android/email/activity/MoveMessageToDialog$MailboxesLoaderCallbacks;,
        Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;,
        Lcom/android/email/activity/MoveMessageToDialog$Callback;
    }
.end annotation


# static fields
.field private static final BUNDLE_MESSAGE_IDS:Ljava/lang/String; = "message_ids"

.field private static final CURRENT_MAILBOX_ID:Ljava/lang/String; = "current_mailbox_id"

.field private static final LOADER_ID_MOVE_TO_DIALOG_MAILBOX_LOADER:I = 0x1

.field private static final LOADER_ID_MOVE_TO_DIALOG_MESSAGE_CHECKER:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MoveMessageToDialog"

.field static sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;


# instance fields
.field private mAccountId:J

.field private mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

.field private mCurrentMailboxId:J

.field private mDestroyed:Z

.field private mListview:Landroid/widget/ListView;

.field private mMailboxId:J

.field private mMessageIds:[J

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 385
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MoveMessageToDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MoveMessageToDialog;)Lcom/android/email/activity/MailboxMoveToAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MoveMessageToDialog;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mListview:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MoveMessageToDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MoveMessageToDialog;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MoveMessageToDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentMailboxId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MoveMessageToDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/activity/MoveMessageToDialog;->dismissAsync()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MoveMessageToDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MoveMessageToDialog;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAccountId:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/MoveMessageToDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxId:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/email/activity/MoveMessageToDialog;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxId:J

    return-wide p1
.end method

.method private dismissAsync()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MoveMessageToDialog$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MoveMessageToDialog$1;-><init>(Lcom/android/email/activity/MoveMessageToDialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    return-void
.end method

.method public static newInstance([JLandroid/app/Fragment;J)Lcom/android/email/activity/MoveMessageToDialog;
    .locals 3
    .parameter "messageIds"
    .parameter
    .parameter "currentMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/email/activity/MoveMessageToDialog$Callback;",
            ">([JTT;J)",
            "Lcom/android/email/activity/MoveMessageToDialog;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, callbackFragment:Landroid/app/Fragment;,"TT;"
    array-length v2, p0

    if-nez v2, :cond_0

    .line 100
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 102
    :cond_0
    if-nez p1, :cond_1

    .line 103
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 105
    :cond_1
    new-instance v1, Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {v1}, Lcom/android/email/activity/MoveMessageToDialog;-><init>()V

    .line 106
    .local v1, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "message_ids"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 109
    const-string v2, "current_mailbox_id"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 111
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 113
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 183
    sget-object v0, Lcom/android/email/activity/MoveMessageToDialog;->sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lcom/android/email/activity/MoveMessageToDialog;->sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {v0}, Lcom/android/email/activity/MoveMessageToDialog;->dismissAsync()V

    .line 188
    :cond_0
    sput-object p0, Lcom/android/email/activity/MoveMessageToDialog;->sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;

    .line 189
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onCreate  target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    .line 124
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "current_mailbox_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentMailboxId:J

    .line 126
    const/4 v0, 0x0

    const v1, 0x103006e

    invoke-virtual {p0, v0, v1}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 127
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 137
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 144
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    new-instance v3, Lcom/android/email/activity/MailboxMoveToAdapter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/email/activity/MailboxMoveToAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x2

    new-instance v5, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;

    invoke-direct {v5, p0, v6}, Lcom/android/email/activity/MoveMessageToDialog$MessageCheckerCallback;-><init>(Lcom/android/email/activity/MoveMessageToDialog;Lcom/android/email/activity/MoveMessageToDialog$1;)V

    invoke-virtual {v3, v4, v6, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 150
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04004c

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, contentView:Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 152
    const v3, 0x7f0f00ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog;->mListview:Landroid/widget/ListView;

    .line 153
    iget-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog;->mListview:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog;->mListview:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 155
    const v3, 0x7f0f00f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 157
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mDestroyed:Z

    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 133
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 195
    sget-object v0, Lcom/android/email/activity/MoveMessageToDialog;->sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;

    if-ne v0, p0, :cond_0

    .line 196
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MoveMessageToDialog;->sActiveDialog:Lcom/android/email/activity/MoveMessageToDialog;

    .line 198
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    .line 398
    .local v0, mailboxId:J
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/MoveMessageToDialog$Callback;

    iget-object v3, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    invoke-interface {v2, v0, v1, v3}, Lcom/android/email/activity/MoveMessageToDialog$Callback;->onMoveToMailboxSelected(J[J)V

    .line 399
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 400
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 164
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mAdapter:Lcom/android/email/activity/MailboxMoveToAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mListview:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    :cond_0
    return-void
.end method
