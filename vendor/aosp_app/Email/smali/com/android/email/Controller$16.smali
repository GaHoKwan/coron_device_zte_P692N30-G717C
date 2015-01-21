.class Lcom/android/email/Controller$16;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessagesBooleanValues(Ljava/util/Set;Ljava/lang/String;Z)Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$columnName:Ljava/lang/String;

.field final synthetic val$columnValue:Z

.field final synthetic val$messageIds:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;Ljava/util/Set;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1543
    iput-object p1, p0, Lcom/android/email/Controller$16;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$16;->val$messageIds:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/email/Controller$16;->val$columnName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/email/Controller$16;->val$columnValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1547
    .local v0, time:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageListFragment Controller#setMessagesBoolean start at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 1551
    iget-object v2, p0, Lcom/android/email/Controller$16;->this$0:Lcom/android/email/Controller;

    iget-object v3, p0, Lcom/android/email/Controller$16;->val$messageIds:Ljava/util/Set;

    iget-object v4, p0, Lcom/android/email/Controller$16;->val$columnName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/email/Controller$16;->val$columnValue:Z

    #calls: Lcom/android/email/Controller;->setMessagesBooleanSync(Ljava/util/Set;Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageListFragment Controller#setMessagesBoolean end and spend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 1557
    return-void
.end method
