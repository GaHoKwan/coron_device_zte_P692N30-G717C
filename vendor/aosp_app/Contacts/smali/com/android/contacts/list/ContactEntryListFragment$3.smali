.class Lcom/android/contacts/list/ContactEntryListFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactEntryListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactEntryListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 984
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$3;,"Lcom/android/contacts/list/ContactEntryListFragment.3;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 988
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment$3;,"Lcom/android/contacts/list/ContactEntryListFragment.3;"
    const-string v2, "android.intent.action.RCS_CONTACT_PRESENCE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 990
    .local v0, receiveTime:J
    const-string v2, "ContactEntryListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPreReceiveTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mPreReceiveTime:J
    invoke-static {v4}, Lcom/android/contacts/list/ContactEntryListFragment;->access$000(Lcom/android/contacts/list/ContactEntryListFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | receiveTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->access$100(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mPreReceiveTime:J
    invoke-static {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->access$000(Lcom/android/contacts/list/ContactEntryListFragment;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 992
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    #setter for: Lcom/android/contacts/list/ContactEntryListFragment;->mPreReceiveTime:J
    invoke-static {v2, v0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->access$002(Lcom/android/contacts/list/ContactEntryListFragment;J)J

    .line 993
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment$3;->this$0:Lcom/android/contacts/list/ContactEntryListFragment;

    #getter for: Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-static {v2}, Lcom/android/contacts/list/ContactEntryListFragment;->access$100(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/widget/CompositeCursorAdapter;->notifyDataSetChanged()V

    .line 996
    .end local v0           #receiveTime:J
    :cond_0
    return-void
.end method
