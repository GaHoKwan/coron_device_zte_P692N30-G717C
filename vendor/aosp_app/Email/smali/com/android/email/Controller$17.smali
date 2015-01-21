.class Lcom/android/email/Controller$17;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->copySetValuesIfSearchBox(Ljava/util/ArrayList;Ljava/lang/String;Z)V
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
    .line 1669
    iput-object p1, p0, Lcom/android/email/Controller$17;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$17;->val$messageIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/email/Controller$17;->val$columnName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/email/Controller$17;->val$columnValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1672
    const-string v3, "MessageListFragment Controller#copySetValuesIfSearchBox"

    invoke-static {v3}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStartLog(Ljava/lang/String;)V

    .line 1674
    iget-object v3, p0, Lcom/android/email/Controller$17;->val$messageIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1675
    .local v1, messageId:J
    iget-object v3, p0, Lcom/android/email/Controller$17;->this$0:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/Controller$17;->val$columnName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/email/Controller$17;->val$columnValue:Z

    #calls: Lcom/android/email/Controller;->copySetValueIfSearchBox(JLjava/lang/String;Z)V
    invoke-static {v3, v1, v2, v4, v5}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;JLjava/lang/String;Z)V

    goto :goto_0

    .line 1677
    .end local v1           #messageId:J
    :cond_0
    const-string v3, "MessageListFragment Controller#copySetValuesIfSearchBox"

    invoke-static {v3}, Lcom/android/emailcommon/utility/EmailAsyncTask;->printStopLog(Ljava/lang/String;)V

    .line 1679
    return-void
.end method
