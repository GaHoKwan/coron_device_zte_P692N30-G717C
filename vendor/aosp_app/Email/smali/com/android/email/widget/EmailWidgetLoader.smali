.class Lcom/android/email/widget/EmailWidgetLoader;
.super Lcom/android/email/data/ThrottlingCursorLoader;
.source "EmailWidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;
    }
.end annotation


# static fields
.field private static final MAILBOX_DISPLAYNAME_SELECTION:Ljava/lang/String; = "accountKey=? AND displayName=?"

.field private static final MAILBOX_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final MAILBOX_SELECTION:Ljava/lang/String; = "_id=?"

.field private static final SORT_TIMESTAMP_DESCENDING:Ljava/lang/String; = "timeStamp DESC"

.field public static final WIDGET_COLUMN_ACCOUNT_KEY:I = 0x9

.field public static final WIDGET_COLUMN_DISPLAY_NAME:I = 0x1

.field public static final WIDGET_COLUMN_FLAGS:I = 0xa

.field public static final WIDGET_COLUMN_FLAG_ATTACHMENT:I = 0x6

.field public static final WIDGET_COLUMN_FLAG_FAVORITE:I = 0x5

.field public static final WIDGET_COLUMN_FLAG_READ:I = 0x4

.field public static final WIDGET_COLUMN_ID:I = 0x0

.field public static final WIDGET_COLUMN_MAILBOX_KEY:I = 0x7

.field public static final WIDGET_COLUMN_SNIPPET:I = 0x8

.field public static final WIDGET_COLUMN_SUBJECT:I = 0x3

.field public static final WIDGET_COLUMN_TIMESTAMP:I = 0x2

.field private static final WIDGET_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountId:J

.field private final mContext:Landroid/content/Context;

.field private mMailboxId:J

.field private mSpecialMailbox:[Ljava/lang/String;

.field private final mWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "timeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/widget/EmailWidgetLoader;->WIDGET_PROJECTION:[Ljava/lang/String;

    .line 71
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/widget/EmailWidgetLoader;->MAILBOX_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "widgetId"

    .prologue
    const/4 v4, 0x0

    .line 124
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/widget/EmailWidgetLoader;->WIDGET_PROJECTION:[Ljava/lang/String;

    const-string v6, "timeStamp DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    .line 127
    iput p2, p0, Lcom/android/email/widget/EmailWidgetLoader;->mWidgetId:I

    .line 128
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->init()V

    .line 129
    return-void
.end method

.method private setSelectionAndArgs()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 282
    iget-wide v0, p0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 283
    iget-wide v0, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 284
    const-string v0, "mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,4)"

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 288
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 316
    :goto_1
    return-void

    .line 286
    :cond_0
    const-string v0, "flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,4)"

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-wide v0, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 300
    const-string v0, "accountKey=? AND mailboxKey=? AND flagLoaded IN (2,1,4)"

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-wide v1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :cond_2
    iget-wide v0, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    .line 309
    const-string v0, "accountKey=? AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,4)"

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 313
    :goto_2
    new-array v0, v5, [Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_3
    const-string v0, "accountKey=? AND flagRead=0 AND mailboxKey IN (SELECT _id FROM Mailbox WHERE type = 0) AND flagLoaded IN (2,1,4)"

    invoke-virtual {p0, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mSpecialMailbox:[Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mSpecialMailbox:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 136
    const-string v1, ""

    iget-object v2, p0, Lcom/android/email/widget/EmailWidgetLoader;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mSpecialMailbox:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method

.method load(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 271
    const-string v0, "EmailWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmailWidgetLoader load() mAccountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mailboxId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Landroid/content/Loader;->reset()V

    .line 274
    iput-wide p1, p0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    .line 275
    iput-wide p3, p0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    .line 276
    invoke-direct {p0}, Lcom/android/email/widget/EmailWidgetLoader;->setSelectionAndArgs()V

    .line 277
    invoke-virtual {p0}, Landroid/content/Loader;->startLoading()V

    .line 278
    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 28

    .prologue
    .line 151
    const-string v2, "EmailWidget"

    const-string v3, "EmailWidgetLoader loadInBackground()"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-super/range {p0 .. p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v20

    .line 155
    .local v20, messagesCursor:Landroid/database/Cursor;
    if-nez v20, :cond_0

    .line 156
    const-string v2, "EmailWidget"

    const-string v3, "EmailWidgetLoader loadInBackground() messagesCursor is null"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v2, 0x0

    .line 257
    :goto_0
    return-object v2

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 165
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    const-wide/16 v4, -0x4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "flagRead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 167
    .local v23, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Landroid/content/CursorLoader;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0, v4}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 173
    .end local v23           #selection:Ljava/lang/String;
    .local v19, messageCount:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v8

    .line 175
    .local v8, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v8, :cond_7

    .line 176
    iget-object v10, v8, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 191
    .local v10, accountName:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v14

    .line 193
    .local v14, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v14, :cond_9

    .line 194
    const/4 v11, 0x0

    .line 195
    .local v11, boxName:Ljava/lang/String;
    iget v0, v14, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    move/from16 v24, v0

    .line 196
    .local v24, type:I
    if-ltz v24, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mSpecialMailbox:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_1

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v11, v2, v24

    .line 199
    :cond_1
    if-eqz v11, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    :cond_2
    iget-object v11, v14, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    .line 202
    :cond_3
    move-object v6, v11

    .end local v11           #boxName:Ljava/lang/String;
    .end local v24           #type:I
    .local v6, mailboxName:Ljava/lang/String;
    :goto_3
    move-object/from16 v18, v6

    .line 220
    .end local v6           #mailboxName:Ljava/lang/String;
    .end local v14           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .local v18, mailboxName:Ljava/lang/String;
    :goto_4
    const/16 v21, 0x0

    .line 221
    .local v21, needReload:Z
    if-eqz v20, :cond_d

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_d

    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Lcom/android/emailcommon/provider/Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/widget/EmailWidgetLoader;->mWidgetId:I

    invoke-static {v2, v3}, Lcom/android/email/widget/WidgetManager;->loadMailboxIdPref(Landroid/content/Context;I)J

    move-result-wide v16

    .line 224
    .local v16, mailboxId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "_id=?"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v6, v25

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 226
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 227
    .local v15, mailboxExist:Z
    if-eqz v13, :cond_5

    .line 229
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 230
    const/4 v15, 0x1

    .line 233
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_5
    if-nez v15, :cond_d

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/widget/EmailWidgetLoader;->mWidgetId:I

    invoke-static {v2, v3}, Lcom/android/email/widget/WidgetManager;->loadMailboxNamePref(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v18

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/widget/EmailWidgetLoader;->MAILBOX_ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "accountKey=? AND displayName=?"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v6, v0, [Ljava/lang/String;

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v6, v25

    const/16 v25, 0x1

    aput-object v18, v6, v25

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 243
    if-eqz v13, :cond_d

    .line 245
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/widget/EmailWidgetLoader;->mWidgetId:I

    iget-wide v4, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/email/widget/WidgetManager;->saveWidgetPrefs(Landroid/content/Context;IJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    const/4 v7, 0x1

    .line 250
    .end local v21           #needReload:Z
    .local v7, needReload:Z
    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object/from16 v6, v18

    .line 257
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #mailboxExist:Z
    .end local v16           #mailboxId:J
    .end local v18           #mailboxName:Ljava/lang/String;
    .restart local v6       #mailboxName:Ljava/lang/String;
    :goto_6
    new-instance v2, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;

    move-object/from16 v3, v20

    move/from16 v4, v19

    move-object v5, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/email/widget/EmailWidgetLoader$WidgetCursor;-><init>(Landroid/database/Cursor;ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 171
    .end local v6           #mailboxName:Ljava/lang/String;
    .end local v7           #needReload:Z
    .end local v8           #account:Lcom/android/emailcommon/provider/Account;
    .end local v10           #accountName:Ljava/lang/String;
    .end local v19           #messageCount:I
    :cond_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .restart local v19       #messageCount:I
    goto/16 :goto_1

    .line 178
    .restart local v8       #account:Lcom/android/emailcommon/provider/Account;
    :cond_7
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mAccountId:J

    const-wide/high16 v4, 0x1000

    cmp-long v2, v2, v4

    if-nez v2, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v9

    .line 180
    .local v9, accountCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 181
    .local v22, res:Landroid/content/res/Resources;
    const v2, 0x7f0d0004

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v9, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 184
    .local v12, countString:Ljava/lang/String;
    const v2, 0x7f0800b4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v12, v3, v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 185
    .restart local v10       #accountName:Ljava/lang/String;
    goto/16 :goto_2

    .line 187
    .end local v9           #accountCount:I
    .end local v10           #accountName:Ljava/lang/String;
    .end local v12           #countString:Ljava/lang/String;
    .end local v22           #res:Landroid/content/res/Resources;
    :cond_8
    const/4 v10, 0x0

    .restart local v10       #accountName:Ljava/lang/String;
    goto/16 :goto_2

    .line 205
    .restart local v14       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_9
    const/4 v6, 0x0

    .restart local v6       #mailboxName:Ljava/lang/String;
    goto/16 :goto_3

    .line 208
    .end local v6           #mailboxName:Ljava/lang/String;
    .end local v14           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mMailboxId:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    const v3, 0x7f0800b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mailboxName:Ljava/lang/String;
    move-object/from16 v18, v6

    .end local v6           #mailboxName:Ljava/lang/String;
    .restart local v18       #mailboxName:Ljava/lang/String;
    goto/16 :goto_4

    .line 211
    .end local v18           #mailboxName:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/widget/EmailWidgetLoader;->mContext:Landroid/content/Context;

    const v3, 0x7f0800b2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #mailboxName:Ljava/lang/String;
    move-object/from16 v18, v6

    .end local v6           #mailboxName:Ljava/lang/String;
    .restart local v18       #mailboxName:Ljava/lang/String;
    goto/16 :goto_4

    .line 233
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v15       #mailboxExist:Z
    .restart local v16       #mailboxId:J
    .restart local v21       #needReload:Z
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 250
    :catchall_1
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_c
    move/from16 v7, v21

    .end local v21           #needReload:Z
    .restart local v7       #needReload:Z
    goto/16 :goto_5

    .end local v7           #needReload:Z
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #mailboxExist:Z
    .end local v16           #mailboxId:J
    .restart local v21       #needReload:Z
    :cond_d
    move/from16 v7, v21

    .end local v21           #needReload:Z
    .restart local v7       #needReload:Z
    move-object/from16 v6, v18

    .end local v18           #mailboxName:Ljava/lang/String;
    .restart local v6       #mailboxName:Ljava/lang/String;
    goto/16 :goto_6
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/email/widget/EmailWidgetLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "EmailWidget"

    const-string v1, "EmailWidgetLoader onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-super {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->onContentChanged()V

    .line 147
    return-void
.end method
