.class Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;
.super Landroid/database/ContentObserver;
.source "AccountSettingsEditQuickResponsesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponseFinder:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 287
    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/emailcommon/provider/Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$600(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$700(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    invoke-direct/range {v0 .. v9}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLandroid/widget/ListView;Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/AdapterView$OnItemClickListener;ZLcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)V

    #setter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponseFinder:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;
    invoke-static {v10, v0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$302(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;)Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    .line 290
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponseFinder:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 292
    :cond_0
    return-void
.end method
