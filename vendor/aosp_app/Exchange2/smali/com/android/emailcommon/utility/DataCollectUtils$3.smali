.class final Lcom/android/emailcommon/utility/DataCollectUtils$3;
.super Ljava/lang/Object;
.source "DataCollectUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/utility/DataCollectUtils;->recordNewMails(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$msgs:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/emailcommon/utility/DataCollectUtils$3;->val$msgs:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/emailcommon/utility/DataCollectUtils$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$3;->val$msgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 100
    .local v9, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$3;->val$context:Landroid/content/Context;

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    iget-wide v3, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/provider/SmartPush;->addEvent(Landroid/content/Context;JJIJ)Lcom/android/emailcommon/provider/SmartPush;

    move-result-object v10

    .line 101
    .local v10, sp:Lcom/android/emailcommon/provider/SmartPush;
    iget-object v0, p0, Lcom/android/emailcommon/utility/DataCollectUtils$3;->val$context:Landroid/content/Context;

    invoke-virtual {v10, v0}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0

    .line 103
    .end local v9           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v10           #sp:Lcom/android/emailcommon/provider/SmartPush;
    :cond_0
    return-void
.end method
