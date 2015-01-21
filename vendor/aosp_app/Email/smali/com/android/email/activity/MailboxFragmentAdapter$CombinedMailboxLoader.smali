.class Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "MailboxFragmentAdapter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CombinedMailboxLoader"
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final COLUMN_ACCOUND_ID:I = 0x0

.field private static final COLUMN_ACCOUNT_DISPLAY_NAME:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 675
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 684
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iput-object p1, p0, Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;->mContext:Landroid/content/Context;

    .line 686
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/email/activity/MailboxFragmentAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static buildCombinedMailboxes(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 12
    .parameter "c"
    .parameter "innerCursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 711
    new-instance v1, Lcom/android/email/data/ClosingMatrixCursor;

    invoke-static {}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$500()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 713
    .local v1, cursor:Landroid/database/MatrixCursor;
    const-wide/16 v2, -0x2

    move-object v0, p0

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addCombinedMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$900(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V

    .line 716
    const-wide/16 v8, -0x4

    move-object v6, p0

    move-object v7, v1

    move v10, v5

    move v11, v4

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addCombinedMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V
    invoke-static/range {v6 .. v11}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$900(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V

    .line 719
    const-wide/high16 v2, 0x1000

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addVipMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;J)V
    invoke-static {p0, v1, v2, v3}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$800(Landroid/content/Context;Landroid/database/MatrixCursor;J)V

    .line 722
    const-wide/16 v7, -0x5

    const/4 v9, 0x3

    move-object v5, p0

    move-object v6, v1

    move v10, v4

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addCombinedMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V
    invoke-static/range {v5 .. v10}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$900(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V

    .line 725
    const-wide/16 v7, -0x6

    const/4 v9, 0x4

    move-object v5, p0

    move-object v6, v1

    move v10, v4

    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addCombinedMailboxRow(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V
    invoke-static/range {v5 .. v10}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$900(Landroid/content/Context;Landroid/database/MatrixCursor;JIZ)V

    .line 727
    return-object v1
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 690
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v11

    .line 693
    .local v11, accounts:Landroid/database/Cursor;
    iget-object v6, p0, Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;->buildCombinedMailboxes(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 696
    .local v0, returnCursor:Landroid/database/MatrixCursor;
    invoke-interface {v11, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 697
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 698
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 699
    .local v1, accountId:J
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 700
    .local v3, accountName:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v2, v8}, Lcom/android/emailcommon/provider/Mailbox;->getUnreadCountByAccountAndMailboxType(Landroid/content/Context;JI)I

    move-result v5

    .local v5, unreadCount:I
    move v6, v5

    move-wide v9, v1

    .line 702
    #calls: Lcom/android/email/activity/MailboxFragmentAdapter;->addMailboxRow(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V
    invoke-static/range {v0 .. v10}, Lcom/android/email/activity/MailboxFragmentAdapter;->access$600(Landroid/database/MatrixCursor;JLjava/lang/String;IIIIIJ)V

    goto :goto_0

    .line 706
    .end local v1           #accountId:J
    .end local v3           #accountName:Ljava/lang/String;
    .end local v5           #unreadCount:I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxFragmentAdapter$CombinedMailboxLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
