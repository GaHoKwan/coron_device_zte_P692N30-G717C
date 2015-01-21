.class Lcom/android/mms/ui/ComposeMessageActivity$22;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$lockUri:Landroid/net/Uri;

.field final synthetic val$locked:Z

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;ZLandroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2679
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$locked:Z

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$lockUri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2683
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, v4, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$locked:Z

    invoke-interface/range {v0 .. v6}, Lcom/mediatek/mms/ext/IMmsCompose;->lockMassTextMsg(Landroid/content/Context;JJZ)Z

    .line 2697
    :goto_0
    return-void

    .line 2689
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$locked:Z

    if-eqz v0, :cond_1

    .line 2690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v0

    new-array v1, v5, [J

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/MessageManager;->addMessageToImportantList([J)Z

    .line 2696
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$lockUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2693
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v0

    new-array v1, v5, [J

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/MessageManager;->deleteMessageFromImportantList([J)Z

    goto :goto_1
.end method
