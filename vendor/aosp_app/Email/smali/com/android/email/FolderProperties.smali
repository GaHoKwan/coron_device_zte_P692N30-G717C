.class public Lcom/android/email/FolderProperties;
.super Ljava/lang/Object;
.source "FolderProperties.java"


# static fields
.field private static sInstance:Lcom/android/email/FolderProperties;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSpecialMailbox:[Ljava/lang/String;

.field private final mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

.field private final mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

.field private final mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVipMailboxDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 57
    const-string v1, ""

    iget-object v2, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 56
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/FolderProperties;->mVipMailboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    return-void
.end method

.method private getDisplayName(IJ)Ljava/lang/String;
    .locals 2
    .parameter "type"
    .parameter "mailboxId"

    .prologue
    .line 107
    invoke-virtual {p0, p2, p3}, Lcom/android/email/FolderProperties;->getCombinedMailboxName(J)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 112
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    const-class v1, Lcom/android/email/FolderProperties;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/android/email/FolderProperties;

    invoke-direct {v0, p0}, Lcom/android/email/FolderProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;

    .line 76
    :cond_0
    sget-object v0, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getMessageCountForCombinedMailbox(Landroid/content/Context;J)I
    .locals 4
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    const/4 v1, 0x0

    .line 209
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 210
    const-wide/16 v2, -0x2

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    const-wide/16 v2, -0x3

    cmp-long v0, p1, v2

    if-nez v0, :cond_2

    .line 212
    :cond_0
    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    .line 221
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 209
    goto :goto_0

    .line 214
    :cond_2
    const-wide/16 v0, -0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 215
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    .line 217
    :cond_3
    const-wide/16 v0, -0x5

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 218
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1

    .line 220
    :cond_4
    const-wide/16 v0, -0x6

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 221
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/Mailbox;->getMessageCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1

    .line 223
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid mailbox ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMessageCountForCombinedMailbox(Landroid/content/Context;JJ)I
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 194
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 195
    const-wide/16 v0, -0x4

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 196
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->getFavoriteMessageCount(Landroid/content/Context;J)I

    move-result v0

    return v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid mailbox ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized removeInstance()V
    .locals 2

    .prologue
    .line 80
    const-class v0, Lcom/android/email/FolderProperties;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/email/FolderProperties;->sInstance:Lcom/android/email/FolderProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getCombinedMailboxName(J)Ljava/lang/String;
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 88
    .local v0, resId:I
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 89
    const v0, 0x7f0800c3

    .line 97
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 98
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    :goto_1
    return-object v1

    .line 90
    :cond_1
    const-wide/16 v1, -0x4

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 91
    const v0, 0x7f0800c4

    goto :goto_0

    .line 92
    :cond_2
    const-wide/16 v1, -0x5

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 93
    const v0, 0x7f0800c5

    goto :goto_0

    .line 94
    :cond_3
    const-wide/16 v1, -0x6

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 95
    const v0, 0x7f0800c6

    goto :goto_0

    .line 100
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDisplayName(IJLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mailboxType"
    .parameter "mailboxId"
    .parameter "originalDisplayName"

    .prologue
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/FolderProperties;->getDisplayName(IJ)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 129
    .end local v0           #name:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method public getDisplayName(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .parameter "mailboxCursor"

    .prologue
    .line 139
    move-object v0, p1

    .line 140
    .local v0, c:Landroid/database/Cursor;
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "displayName"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/email/FolderProperties;->getDisplayName(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayName(Lcom/android/emailcommon/provider/Mailbox;)Ljava/lang/String;
    .locals 4
    .parameter "mailbox"

    .prologue
    .line 148
    iget v0, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v3, p1, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/email/FolderProperties;->getDisplayName(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(IJI)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "type"
    .parameter "mailboxId"
    .parameter "mailboxFlags"

    .prologue
    const/4 v3, -0x1

    .line 230
    const-wide/16 v1, -0x2

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 247
    :goto_0
    return-object v1

    .line 232
    :cond_0
    const-wide/16 v1, -0x4

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 234
    :cond_1
    const-wide/16 v1, -0x5

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 236
    :cond_2
    const-wide/16 v1, -0x6

    cmp-long v1, p2, v1

    if-nez v1, :cond_3

    .line 237
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 238
    :cond_3
    const-wide/16 v1, -0x7

    cmp-long v1, p2, v1

    if-nez v1, :cond_4

    .line 239
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mVipMailboxDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 241
    :cond_4
    if-ltz p1, :cond_5

    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_5

    .line 242
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1, p1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 243
    .local v0, resId:I
    if-eq v0, v3, :cond_5

    .line 244
    iget-object v1, p0, Lcom/android/email/FolderProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 247
    .end local v0           #resId:I
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessageCount(III)I
    .locals 0
    .parameter "mailboxType"
    .parameter "unreadCount"
    .parameter "totalCount"

    .prologue
    .line 160
    packed-switch p1, :pswitch_data_0

    move p3, p2

    .line 168
    .end local p3
    :goto_0
    :pswitch_0
    return p3

    .line 166
    .restart local p3
    :pswitch_1
    const/4 p3, 0x0

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getMessageCount(Landroid/database/Cursor;)I
    .locals 4
    .parameter "mailboxCursor"

    .prologue
    .line 178
    move-object v0, p1

    .line 179
    .local v0, c:Landroid/database/Cursor;
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "unreadCount"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "messageCount"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/email/FolderProperties;->getMessageCount(III)I

    move-result v1

    return v1
.end method
