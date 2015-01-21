.class public Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;
.super Lcom/android/email/activity/ShortcutPickerFragment;
.source "ShortcutPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ShortcutPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MailboxShortcutPickerFragment"
.end annotation


# static fields
.field private static final ALL_MAILBOX_SELECTION:Ljava/lang/String; = "accountKey=? AND type<64 AND flagVisible=1"

.field static final ARG_ACCOUNT:Ljava/lang/String; = "MailboxShortcutPickerFragment.account"

.field static final ARG_FILTER:Ljava/lang/String; = "MailboxShortcutPickerFragment.filter"

.field private static final EAS_PROJECTION:[Ljava/lang/String; = null

.field public static final FILTER_ALLOW_ALL:I = 0x0

.field public static final FILTER_ALLOW_UNREAD:I = 0x2

.field public static final FILTER_INBOX_ONLY:I = 0x1

.field private static final IMAP_PROJECTION:[Ljava/lang/String; = null

.field private static final INBOX_ONLY_SELECTION:Ljava/lang/String; = "accountKey=? AND type<64 AND flagVisible=1 AND type = 0"

.field private static final MAILBOX_FROM_COLUMNS:[Ljava/lang/String; = null

.field private static final MATRIX_PROJECTION:[Ljava/lang/String; = null

.field private static final REAL_ID:Ljava/lang/String; = "realId"


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mFilter:Ljava/lang/Integer;

.field private volatile mLoadFinished:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 355
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->MAILBOX_FROM_COLUMNS:[Ljava/lang/String;

    .line 360
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_id as realId"

    aput-object v1, v0, v3

    const-string v1, "serverId as displayName"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->IMAP_PROJECTION:[Ljava/lang/String;

    .line 366
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_id as realId"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->EAS_PROJECTION:[Ljava/lang/String;

    .line 371
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "realId"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->MATRIX_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/email/activity/ShortcutPickerFragment;-><init>()V

    .line 382
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mLoadFinished:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    sget-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->MATRIX_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Ljava/lang/Integer;)Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;
    .locals 4
    .parameter "context"
    .parameter "account"
    .parameter "filter"

    .prologue
    .line 394
    new-instance v1, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;

    invoke-direct {v1}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;-><init>()V

    .line 395
    .local v1, fragment:Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 396
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "MailboxShortcutPickerFragment.account"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 397
    const-string v2, "MailboxShortcutPickerFragment.filter"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 399
    return-object v1
.end method


# virtual methods
.method getFilter()I
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mFilter:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 405
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MailboxShortcutPickerFragment.filter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mFilter:Ljava/lang/Integer;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mFilter:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getFromColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->MAILBOX_FROM_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/android/email/activity/ShortcutPickerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 420
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801d4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 421
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mLoadFinished:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVisible(Z)V

    .line 424
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 413
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MailboxShortcutPickerFragment.account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    iput-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 414
    invoke-super {p0, p1}, Lcom/android/email/activity/ShortcutPickerFragment;->onAttach(Landroid/app/Activity;)V

    .line 415
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 13
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 435
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 438
    .local v1, context:Landroid/content/Context;
    iget-object v0, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v10

    .line 442
    .local v10, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    invoke-virtual {v10}, Lcom/android/emailcommon/provider/HostAuth;->isEasConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    sget-object v3, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->EAS_PROJECTION:[Ljava/lang/String;

    .line 444
    .local v3, projection:[Ljava/lang/String;
    const-string v6, "displayName"

    .line 449
    .local v6, orderBy:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->getFilter()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 450
    const-string v4, "accountKey=? AND type<64 AND flagVisible=1"

    .line 454
    .local v4, selection:Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;

    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v5, v9, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v11

    iget-object v7, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->getFilter()I

    move-result v12

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_2

    :goto_2
    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxPickerLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;JZ)V

    return-object v0

    .line 446
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->IMAP_PROJECTION:[Ljava/lang/String;

    .line 447
    .restart local v3       #projection:[Ljava/lang/String;
    const-string v6, "serverId"

    .restart local v6       #orderBy:Ljava/lang/String;
    goto :goto_0

    .line 452
    :cond_1
    const-string v4, "accountKey=? AND type<64 AND flagVisible=1 AND type = 0"

    .restart local v4       #selection:Ljava/lang/String;
    goto :goto_1

    :cond_2
    move v9, v11

    .line 454
    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 428
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 429
    .local v0, cursor:Landroid/database/Cursor;
    const-string v3, "realId"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 430
    .local v1, mailboxId:J
    iget-object v3, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    iget-object v4, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-interface {v3, v4, v1, v2}, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;->onSelected(Lcom/android/emailcommon/provider/Account;J)V

    .line 431
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, 0x1

    .line 463
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;->onMissingData(ZZ)V

    .line 476
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    const-string v2, "realId"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 470
    .local v0, mailboxId:J
    iget-object v2, p0, Lcom/android/email/activity/ShortcutPickerFragment;->mCallback:Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;

    iget-object v3, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/email/activity/ShortcutPickerFragment$PickerCallback;->onSelected(Lcom/android/emailcommon/provider/Account;J)V

    goto :goto_0

    .line 473
    .end local v0           #mailboxId:J
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/ShortcutPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 474
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->mLoadFinished:Ljava/lang/Boolean;

    .line 475
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setVisible(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 343
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/ShortcutPickerFragment$MailboxShortcutPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
