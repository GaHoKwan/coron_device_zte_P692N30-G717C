.class Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MailboxFragmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailboxFragmentLoader"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mContext:Landroid/content/Context;

.field private final mParentKey:J


# direct methods
.method constructor <init>(Landroid/content/Context;JJ)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "parentKey"

    .prologue
    const/16 v7, 0x7d0

    .line 566
    sget-object v2, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$100()[Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v4, "accountKey=? AND type<64 AND flagVisible=1 AND parentKey=? AND type=1"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v6, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName COLLATE LOCALIZED ASC"

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)V

    .line 573
    iput-object p1, p0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    .line 574
    iput-wide p2, p0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    .line 575
    iput-wide p4, p0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mParentKey:J

    .line 576
    return-void

    .line 566
    :cond_0
    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$200()[Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 37

    .prologue
    .line 587
    const/16 v28, 0x0

    .line 589
    .local v28, parentRemoved:Z
    invoke-super/range {p0 .. p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v35

    .line 592
    .local v35, userMailboxCursor:Landroid/database/Cursor;
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 594
    .local v21, childCount:I
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mParentKey:J

    const-wide/16 v6, -0x1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_0

    .line 596
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$400()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountKey=? AND _id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mParentKey:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 600
    .local v27, parentCursor:Landroid/database/Cursor;
    new-instance v31, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v27, v3, v4

    const/4 v4, 0x1

    aput-object v35, v3, v4

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 666
    .end local v27           #parentCursor:Landroid/database/Cursor;
    .local v31, returnCursor:Landroid/database/Cursor;
    :goto_0
    new-instance v3, Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lcom/android/email/activity/MailboxFragmentAdapter$CursorWithExtras;-><init>(Landroid/database/Cursor;I)V

    return-object v3

    .line 611
    .end local v31           #returnCursor:Landroid/database/Cursor;
    :cond_0
    new-instance v32, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$500()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 612
    .local v32, starredCursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$200()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "accountKey=? AND type<64 AND flagVisible=1 AND type!=1"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 615
    .local v33, systemMailboxCursor:Landroid/database/Cursor;
    new-instance v29, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$500()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 616
    .local v29, recentCursor:Landroid/database/MatrixCursor;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$500()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 617
    .local v2, headerCursor:Landroid/database/MatrixCursor;
    if-lez v21, :cond_1

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    const v4, 0x7f0800cb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 619
    .local v5, name:Ljava/lang/String;
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addMailboxRow(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V
    invoke-static/range {v2 .. v12}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$600(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V

    .line 621
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    const/16 v30, 0x0

    .line 622
    .local v30, recentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v34

    .line 623
    .local v34, useTwoPane:Z
    if-eqz v34, :cond_2

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/activity/RecentMailboxManager;->getInstance(Landroid/content/Context;)Lcom/android/email/activity/RecentMailboxManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    const/4 v4, 0x1

    invoke-virtual {v3, v6, v7, v4}, Lcom/android/email/activity/RecentMailboxManager;->getMostRecent(JZ)Ljava/util/ArrayList;

    move-result-object v30

    .line 627
    :cond_2
    if-eqz v30, :cond_4

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    const v4, 0x7f0800cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 629
    .restart local v5       #name:Ljava/lang/String;
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 v6, v29

    move-object v9, v5

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addMailboxRow(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V
    invoke-static/range {v6 .. v16}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$600(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V

    .line 630
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 631
    .local v24, mailboxId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v23

    .line 632
    .local v23, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v23, :cond_3

    .line 635
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "messageCount"

    aput-object v4, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 638
    .local v26, messageCount:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v24

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "unreadCount"

    aput-object v4, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 641
    .local v11, unreadCount:I
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget v10, v0, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v13, 0x0

    move-object/from16 v0, v23

    iget v14, v0, Lcom/android/emailcommon/provider/Mailbox;->mFlags:I

    move-object/from16 v0, v23

    iget-wide v15, v0, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    move-object/from16 v6, v29

    move-wide/from16 v7, v24

    move/from16 v12, v26

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addMailboxRow(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V
    invoke-static/range {v6 .. v16}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$600(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V

    goto :goto_1

    .line 646
    .end local v5           #name:Ljava/lang/String;
    .end local v11           #unreadCount:I
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v23           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v24           #mailboxId:J
    .end local v26           #messageCount:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    invoke-static {v3, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;J)I

    move-result v20

    .line 647
    .local v20, accountStarredCount:I
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MailboxFragmentLoader mAccountId:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " accountStarredCount:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    if-lez v20, :cond_5

    .line 651
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    const-wide/16 v16, -0x4

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v13, v32

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addAccountMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JJIZ)V
    invoke-static/range {v12 .. v19}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$700(Landroid/content/Context;Landroid/database/MatrixCursor;JJIZ)V

    .line 658
    :cond_5
    new-instance v36, Landroid/database/MatrixCursor;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$500()[Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 659
    .local v36, vipCursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->mAccountId:J

    move-object/from16 v0, v36

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addVipMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;J)V
    invoke-static {v3, v0, v6, v7}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$800(Landroid/content/Context;Landroid/database/MatrixCursor;J)V

    .line 661
    new-instance v31, Landroid/database/MergeCursor;

    const/4 v3, 0x6

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v32, v3, v4

    const/4 v4, 0x1

    aput-object v36, v3, v4

    const/4 v4, 0x2

    aput-object v33, v3, v4

    const/4 v4, 0x3

    aput-object v29, v3, v4

    const/4 v4, 0x4

    aput-object v2, v3, v4

    const/4 v4, 0x5

    aput-object v35, v3, v4

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v31       #returnCursor:Landroid/database/Cursor;
    goto/16 :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxFragmentAdapter$MailboxFragmentLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 580
    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->onContentChanged()V

    .line 583
    :cond_0
    return-void
.end method
