.class Lcom/android/email/activity/RecentMailboxManager$1;
.super Ljava/lang/Object;
.source "RecentMailboxManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/RecentMailboxManager;->fireAndForget(JJJ)Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/RecentMailboxManager;

.field final synthetic val$accountId:J

.field final synthetic val$mailboxId:J

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/RecentMailboxManager;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/email/activity/RecentMailboxManager$1;->this$0:Lcom/android/email/activity/RecentMailboxManager;

    iput-wide p2, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$time:J

    iput-wide p6, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 140
    const-string v0, "RecentMailboxManager#fireAndForget"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/email/activity/RecentMailboxManager$1;->this$0:Lcom/android/email/activity/RecentMailboxManager;

    iget-wide v1, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$time:J

    #calls: Lcom/android/email/activity/RecentMailboxManager;->ensureDefaultsInitialized(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/activity/RecentMailboxManager;->access$000(Lcom/android/email/activity/RecentMailboxManager;JJ)V

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/RecentMailboxManager$1;->this$0:Lcom/android/email/activity/RecentMailboxManager;

    iget-wide v1, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$mailboxId:J

    iget-wide v5, p0, Lcom/android/email/activity/RecentMailboxManager$1;->val$time:J

    #calls: Lcom/android/email/activity/RecentMailboxManager;->touchMailboxSynchronous(JJJ)V
    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/RecentMailboxManager;->access$100(Lcom/android/email/activity/RecentMailboxManager;JJJ)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    const-string v0, "RecentMailboxManager#fireAndForget"

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 148
    return-void

    .line 144
    :catch_0
    move-exception v7

    .line 145
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "RecentMailboxManager"

    const-string v1, "fireAndForget throw out SQLiteException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
