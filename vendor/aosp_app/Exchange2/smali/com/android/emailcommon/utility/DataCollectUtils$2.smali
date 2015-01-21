.class final Lcom/android/emailcommon/utility/DataCollectUtils$2;
.super Ljava/lang/Object;
.source "DataCollectUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/utility/DataCollectUtils;->stopRecord(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/emailcommon/utility/DataCollectUtils$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$300()J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 79
    .local v6, duration:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 81
    .local v8, acctId:Ljava/lang/Long;
    iget-object v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$2;->val$context:Landroid/content/Context;

    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->access$300()J

    move-result-wide v1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x2

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/provider/SmartPush;->addEvent(Landroid/content/Context;JJIJ)Lcom/android/emailcommon/provider/SmartPush;

    move-result-object v10

    .line 83
    .local v10, sp:Lcom/android/emailcommon/provider/SmartPush;
    iget-object v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$2;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v0}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 86
    .end local v8           #acctId:Ljava/lang/Long;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #sp:Lcom/android/emailcommon/provider/SmartPush;
    :cond_0
    return-void
.end method
