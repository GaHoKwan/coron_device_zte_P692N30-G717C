.class final Lcom/android/emailcommon/utility/DataCollectUtils$1;
.super Ljava/lang/Object;
.source "DataCollectUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/utility/DataCollectUtils;->startRecord(Landroid/content/Context;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:J

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$recordOpening:Z


# direct methods
.method constructor <init>(JLandroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$accountId:J

    iput-object p3, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$recordOpening:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 36
    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    iget-wide v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$accountId:J

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$context:Landroid/content/Context;

    #calls: Lcom/android/emailcommon/utility/DataCollectUtils;->getAllEasAccounts(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$100(Landroid/content/Context;)V

    .line 46
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$302(J)J

    .line 48
    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 51
    .local v8, acctId:Ljava/lang/Long;
    iget-boolean v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$recordOpening:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$300()J

    move-result-wide v1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x3

    const-wide/16 v6, 0x1

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/provider/SmartPush;->addEvent(Landroid/content/Context;JJIJ)Lcom/android/emailcommon/provider/SmartPush;

    move-result-object v10

    .line 53
    .local v10, sp:Lcom/android/emailcommon/provider/SmartPush;
    iget-object v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v0}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 54
    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$400()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    .end local v8           #acctId:Ljava/lang/Long;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #sp:Lcom/android/emailcommon/provider/SmartPush;
    :cond_2
    iget-wide v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$accountId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/emailcommon/utility/DataCollectUtils$1;->val$accountId:J

    #calls: Lcom/android/emailcommon/utility/DataCollectUtils;->addIfEasAccount(Landroid/content/Context;J)V
    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$200(Landroid/content/Context;J)V

    goto :goto_0

    .line 57
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method
