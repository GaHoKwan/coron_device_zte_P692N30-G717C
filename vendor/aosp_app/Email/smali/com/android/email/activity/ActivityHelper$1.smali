.class final Lcom/android/email/activity/ActivityHelper$1;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/content/Context;J[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$messageIds:[J

.field final synthetic val$newMailboxId:J


# direct methods
.method constructor <init>(Landroid/content/Context;J[J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/email/activity/ActivityHelper$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$newMailboxId:J

    iput-object p4, p0, Lcom/android/email/activity/ActivityHelper$1;->val$messageIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 111
    iget-object v3, p0, Lcom/android/email/activity/ActivityHelper$1;->val$context:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/activity/ActivityHelper$1;->val$newMailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 112
    .local v2, newMailbox:Lcom/android/emailcommon/provider/Mailbox;
    iget-object v3, p0, Lcom/android/email/activity/ActivityHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/email/FolderProperties;->getDisplayName(Lcom/android/emailcommon/provider/Mailbox;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, mailboxName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/ActivityHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0009

    iget-object v5, p0, Lcom/android/email/activity/ActivityHelper$1;->val$messageIds:[J

    array-length v5, v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/activity/ActivityHelper$1;->val$messageIds:[J

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/ActivityHelper$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
