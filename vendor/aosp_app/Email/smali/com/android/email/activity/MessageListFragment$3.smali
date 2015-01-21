.class Lcom/android/email/activity/MessageListFragment$3;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;

.field final synthetic val$helper:Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;

.field final synthetic val$messageResort:Ljava/util/ArrayList;

.field final synthetic val$newValue:Z

.field final synthetic val$setValues:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;Ljava/util/ArrayList;Ljava/util/HashMap;ZLcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$3;->this$0:Lcom/android/email/activity/MessageListFragment;

    iput-object p2, p0, Lcom/android/email/activity/MessageListFragment$3;->val$messageResort:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/email/activity/MessageListFragment$3;->val$setValues:Ljava/util/HashMap;

    iput-boolean p4, p0, Lcom/android/email/activity/MessageListFragment$3;->val$newValue:Z

    iput-object p5, p0, Lcom/android/email/activity/MessageListFragment$3;->val$helper:Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessageListFragment#toggleMultiple ==== start at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 1197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v3, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$3;->val$messageResort:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1199
    .local v1, id:J
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$3;->val$setValues:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListFragment$3;->val$newValue:Z

    if-eq v4, v5, :cond_0

    .line 1200
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1203
    .end local v1           #id:J
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment$3;->val$helper:Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListFragment$3;->val$newValue:Z

    invoke-interface {v4, v3, v5}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->setFields(Ljava/util/ArrayList;Z)V

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessageListFragment#toggleMultiple ==== end at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 1206
    return-void
.end method
