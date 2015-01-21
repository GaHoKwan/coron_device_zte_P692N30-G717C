.class Lcom/android/email/activity/MailboxListFragment$LoadVipFolderMessageCountTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadVipFolderMessageCountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "tracker"
    .parameter "context"

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$LoadVipFolderMessageCountTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    .line 1102
    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 1103
    iput-object p3, p0, Lcom/android/email/activity/MailboxListFragment$LoadVipFolderMessageCountTask;->mContext:Landroid/content/Context;

    .line 1104
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 4
    .parameter "params"

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$LoadVipFolderMessageCountTask;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/email/emailvip/VipMemberCache;->getVipMessagesCount(Landroid/content/Context;JZ)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1099
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxListFragment$LoadVipFolderMessageCountTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Integer;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$LoadVipFolderMessageCountTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mVipMailCount:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MailboxListFragment;->access$1502(Lcom/android/email/activity/MailboxListFragment;I)I

    .line 1114
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$LoadVipFolderMessageCountTask;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxFragmentAdapter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxFragmentAdapter;->updateVipMessageCount(I)V

    .line 1115
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1099
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MailboxListFragment$LoadVipFolderMessageCountTask;->onSuccess(Ljava/lang/Integer;)V

    return-void
.end method
