.class public Lcom/android/emailcommon/utility/DataCollectUtils;
.super Ljava/lang/Object;
.source "DataCollectUtils.java"


# static fields
.field private static final sAccountIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRecordedAccountIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/DataCollectUtils;->sAccountIds:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/DataCollectUtils;->sRecordedAccountIds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/emailcommon/utility/DataCollectUtils;->sAccountIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-static {p0}, Lcom/android/emailcommon/utility/DataCollectUtils;->getAllEasAccounts(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/DataCollectUtils;->addIfEasAccount(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 17
    sget-wide v0, Lcom/android/emailcommon/utility/DataCollectUtils;->sStartTime:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-wide p0, Lcom/android/emailcommon/utility/DataCollectUtils;->sStartTime:J

    return-wide p0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/emailcommon/utility/DataCollectUtils;->sRecordedAccountIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static addIfEasAccount(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 113
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 114
    .local v0, acct:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    sget-object v1, Lcom/android/emailcommon/utility/DataCollectUtils;->sAccountIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    return-void
.end method

.method public static clearRecordedList()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/emailcommon/utility/DataCollectUtils;->sRecordedAccountIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 66
    return-void
.end method

.method private static getAllEasAccounts(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 126
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 128
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/utility/DataCollectUtils;->addIfEasAccount(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_1
    return-void
.end method

.method public static recordNewMails(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, msgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Message;>;"
    new-instance v0, Lcom/android/emailcommon/utility/DataCollectUtils$3;

    invoke-direct {v0, p1, p0}, Lcom/android/emailcommon/utility/DataCollectUtils$3;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 105
    return-void
.end method

.method public static startRecord(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "accountId"
    .parameter "recordOpening"

    .prologue
    .line 33
    new-instance v0, Lcom/android/emailcommon/utility/DataCollectUtils$1;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/emailcommon/utility/DataCollectUtils$1;-><init>(JLandroid/content/Context;Z)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncSerial(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 59
    return-void
.end method

.method public static stopRecord(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    new-instance v0, Lcom/android/emailcommon/utility/DataCollectUtils$2;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/DataCollectUtils$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncSerial(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 88
    return-void
.end method
