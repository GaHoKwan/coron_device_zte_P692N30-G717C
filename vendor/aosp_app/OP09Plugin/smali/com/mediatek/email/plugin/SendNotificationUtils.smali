.class public Lcom/mediatek/email/plugin/SendNotificationUtils;
.super Ljava/lang/Object;
.source "SendNotificationUtils.java"


# static fields
.field private static final ACCOUNT_ID_PARAM:Ljava/lang/String; = "ACCOUNT_ID"

.field private static final ACTIVITY_INTENT_HOST:Ljava/lang/String; = "ui.email.android.com"

.field private static final ACTIVITY_INTENT_SCHEME:Ljava/lang/String; = "content"

.field public static final FROM_ACCOUNT_AND_TYPE_URI:Landroid/net/Uri; = null

.field public static final ID_PROJECTION:[Ljava/lang/String; = null

.field public static final ID_PROJECTION_COLUMN:I = 0x0

.field private static final MAILBOX_ID_PARAM:Ljava/lang/String; = "MAILBOX_ID"

.field public static final NO_MAILBOX:J = -0x1L

.field public static final RECORD_ID:Ljava/lang/String; = "_id"

.field public static final TYPE_OUTBOX:I = 0x4

.field private static final VIEW_MAILBOX_INTENT_URL_PATH:Ljava/lang/String; = "/view/mailbox"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const-string v0, "content://com.android.email.provider/mailboxIdFromAccountAndType"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/email/plugin/SendNotificationUtils;->FROM_ACCOUNT_AND_TYPE_URI:Landroid/net/Uri;

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/email/plugin/SendNotificationUtils;->ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2
    .parameter "path"

    .prologue
    .line 62
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 63
    .local v0, b:Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 64
    const-string v1, "ui.email.android.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 65
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 66
    return-object v0
.end method

.method public static createOpenMailboxIntent(JJ)Landroid/content/Intent;
    .locals 2
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 54
    const-string v1, "/view/mailbox"

    invoke-static {v1}, Lcom/mediatek/email/plugin/SendNotificationUtils;->createActivityIntentUrlBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 56
    .local v0, b:Landroid/net/Uri$Builder;
    invoke-static {v0, p0, p1}, Lcom/mediatek/email/plugin/SendNotificationUtils;->setAccountId(Landroid/net/Uri$Builder;J)V

    .line 57
    invoke-static {v0, p2, p3}, Lcom/mediatek/email/plugin/SendNotificationUtils;->setMailboxId(Landroid/net/Uri$Builder;J)V

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/email/plugin/SendNotificationUtils;->createRestartAppIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static createRestartAppIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "data"

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    .local v0, i:Landroid/content/Intent;
    invoke-static {v0}, Lcom/mediatek/email/plugin/SendNotificationUtils;->prepareRestartAppIntent(Landroid/content/Intent;)V

    .line 94
    return-object v0
.end method

.method public static findOutboxId(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "failedAccountId"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, 0x0

    .line 32
    sget-object v0, Lcom/mediatek/email/plugin/SendNotificationUtils;->FROM_ACCOUNT_AND_TYPE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 34
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/email/plugin/SendNotificationUtils;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 35
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 37
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 38
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 39
    .local v7, mailboxId:Ljava/lang/Long;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 45
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 49
    .end local v7           #mailboxId:Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 45
    .restart local v7       #mailboxId:Ljava/lang/Long;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #mailboxId:Ljava/lang/Long;
    :cond_1
    move-wide v2, v8

    .line 49
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static prepareRestartAppIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 98
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const/high16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    const/high16 v0, 0x1000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method private static setAccountId(Landroid/net/Uri$Builder;J)V
    .locals 2
    .parameter "b"
    .parameter "accountId"

    .prologue
    .line 73
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "ACCOUNT_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    :cond_0
    return-void
.end method

.method private static setMailboxId(Landroid/net/Uri$Builder;J)V
    .locals 2
    .parameter "b"
    .parameter "mailboxId"

    .prologue
    .line 82
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "MAILBOX_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 85
    :cond_0
    return-void
.end method
