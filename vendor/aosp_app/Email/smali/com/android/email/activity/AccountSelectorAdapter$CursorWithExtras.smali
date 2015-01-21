.class Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;
.super Lcom/android/email/data/ClosingMatrixCursor;
.source "AccountSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CursorWithExtras"
.end annotation


# static fields
.field private static final ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final MAILBOX_INFO_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountCount:I

.field private mAccountDisplayName:Ljava/lang/String;

.field private mAccountExists:Z

.field private mAccountId:J

.field private mHasShowAllFolders:Z

.field private mLookUpTitleOnly:Z

.field private mMailboxDisplayName:Ljava/lang/String;

.field private mMailboxId:J

.field private mMailboxMessageCount:I

.field private mRecentCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 539
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "displayName"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    .line 542
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "displayName"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "messageCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->MAILBOX_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>([Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter "columnNames"
    .parameter "innerCursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mLookUpTitleOnly:Z

    .line 537
    return-void
.end method

.method static synthetic access$202(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 509
    iput-boolean p1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mLookUpTitleOnly:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 509
    iput p1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 509
    iget v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 509
    iput p1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mRecentCount:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 509
    iput-boolean p1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mHasShowAllFolders:Z

    return p1
.end method

.method private setCombinedMailboxInfo(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v1, 0x1

    .line 605
    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Not combined mailbox"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 607
    iget-wide v2, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    const-wide/16 v4, -0x7

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 608
    const-string v0, "VIP"

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxDisplayName:Ljava/lang/String;

    .line 609
    iget-wide v2, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountId:J

    invoke-static {p1, v2, v3, v1}, Lcom/mediatek/email/emailvip/VipMemberCache;->getVipMessagesCount(Landroid/content/Context;JZ)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxMessageCount:I

    .line 627
    :goto_1
    return-void

    .line 605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :cond_1
    invoke-static {p1}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/FolderProperties;->getCombinedMailboxName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxDisplayName:Ljava/lang/String;

    .line 616
    iget-wide v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x4

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    .line 618
    iget-wide v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountId:J

    invoke-static {p1, v0, v1, p2, p3}, Lcom/android/email/FolderProperties;->getMessageCountForCombinedMailbox(Landroid/content/Context;JJ)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxMessageCount:I

    .line 624
    :goto_2
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCombinedMailboxInfo mMailboxDisplayName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after mMailboxMessageCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxMessageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mailboxId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 621
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/android/email/FolderProperties;->getMessageCountForCombinedMailbox(Landroid/content/Context;J)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxMessageCount:I

    goto :goto_2
.end method


# virtual methods
.method public accountExists()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountExists:Z

    return v0
.end method

.method public getAccountCount()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I

    return v0
.end method

.method public getAccountDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 661
    iget-wide v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountId:J

    return-wide v0
.end method

.method public getLookUpTitleOnly()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mLookUpTitleOnly:Z

    return v0
.end method

.method public getMailboxDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMailboxId()J
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 670
    iget-wide v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    return-wide v0
.end method

.method public getMailboxMessageCount()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxMessageCount:I

    return v0
.end method

.method getPosition(J)I
    .locals 3
    .parameter "id"

    .prologue
    const/4 v0, -0x1

    .line 634
    invoke-virtual {p0, v0}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    .line 635
    :cond_0
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    #calls: Lcom/android/email/activity/AccountSelectorAdapter;->getId(Landroid/database/Cursor;)J
    invoke-static {p0}, Lcom/android/email/activity/AccountSelectorAdapter;->access$800(Landroid/database/Cursor;)J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 637
    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getPosition()I

    move-result v0

    .line 640
    :cond_1
    return v0
.end method

.method public getRecentMailboxCount()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 649
    iget v0, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mRecentCount:I

    return v0
.end method

.method setAccountMailboxInfo(Landroid/content/Context;JJ)V
    .locals 10
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 552
    iput-wide p2, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountId:J

    .line 553
    iput-wide p4, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    .line 556
    const-wide/high16 v1, 0x1000

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 558
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountExists:Z

    .line 559
    #calls: Lcom/android/email/activity/AccountSelectorAdapter;->getCombinedViewDisplayName(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/email/activity/AccountSelectorAdapter;->access$500(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountDisplayName:Ljava/lang/String;

    .line 560
    const-wide/16 v1, -0x1

    cmp-long v1, p4, v1

    if-eqz v1, :cond_0

    .line 561
    invoke-direct {p0, p1, p4, p5}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->setCombinedMailboxInfo(Landroid/content/Context;J)V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->ACCOUNT_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountDisplayName:Ljava/lang/String;

    .line 569
    iget-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountDisplayName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 571
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountExists:Z

    goto :goto_0

    .line 574
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountExists:Z

    .line 577
    iget-wide v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 583
    iget-wide v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    .line 584
    invoke-direct {p0, p1, p4, p5}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->setCombinedMailboxInfo(Landroid/content/Context;J)V

    goto :goto_0

    .line 589
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 590
    .local v0, r:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->MAILBOX_INFO_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 594
    .local v9, mailboxCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    invoke-static {p1}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v8

    .line 596
    .local v8, fp:Lcom/android/email/FolderProperties;
    invoke-virtual {v8, v9}, Lcom/android/email/FolderProperties;->getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxDisplayName:Ljava/lang/String;

    .line 597
    invoke-virtual {v8, v9}, Lcom/android/email/FolderProperties;->getMessageCount(Landroid/database/Cursor;)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mMailboxMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    .end local v8           #fp:Lcom/android/email/FolderProperties;
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public shouldEnableSpinner()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 657
    iget-boolean v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mHasShowAllFolders:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mAccountCount:I

    iget v2, p0, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->mRecentCount:I

    add-int/2addr v1, v2

    if-le v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
