.class Lcom/android/email/Controller$15;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessagesBooleanValuesByOrderWindow(Ljava/util/ArrayList;Ljava/lang/String;Z)Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$columnValue:Z

.field final synthetic val$messageIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Ljava/util/ArrayList;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$15;->val$messageIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/email/Controller$15;->val$columnName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/email/Controller$15;->val$columnValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1513
    .local v3, time:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MessageListFragment Controller#setMessagesBooleanValuesByOrder start at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 1517
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1518
    .local v2, partToUpdate:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/email/Controller$15;->val$messageIds:Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1519
    .local v0, copyMessageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 1520
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1521
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    const/16 v6, 0x14

    if-ne v5, v6, :cond_0

    .line 1522
    iget-object v5, p0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    iget-object v6, p0, Lcom/android/email/Controller$15;->val$columnName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/email/Controller$15;->val$columnValue:Z

    #calls: Lcom/android/email/Controller;->setMessagesBooleanSync(Ljava/util/Set;Ljava/lang/String;Z)V
    invoke-static {v5, v2, v6, v7}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1523
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1519
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1526
    :cond_1
    iget-object v5, p0, Lcom/android/email/Controller$15;->this$0:Lcom/android/email/Controller;

    iget-object v6, p0, Lcom/android/email/Controller$15;->val$columnName:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/email/Controller$15;->val$columnValue:Z

    #calls: Lcom/android/email/Controller;->setMessagesBooleanSync(Ljava/util/Set;Ljava/lang/String;Z)V
    invoke-static {v5, v2, v6, v7}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MessageListFragment Controller#setMessagesBooleanValuesByOrder end and spend "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 1531
    return-void
.end method
