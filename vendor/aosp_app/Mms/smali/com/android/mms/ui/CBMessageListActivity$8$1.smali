.class Lcom/android/mms/ui/CBMessageListActivity$8$1;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CBMessageListActivity$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/CBMessageListActivity$8;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CBMessageListActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$8$1;->this$1:Lcom/android/mms/ui/CBMessageListActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 804
    const/4 v8, 0x0

    .line 805
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 806
    .local v7, SmsCbId:I
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$8$1;->this$1:Lcom/android/mms/ui/CBMessageListActivity$8;

    iget-object v0, v0, Lcom/android/mms/ui/CBMessageListActivity$8;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "max(_id)"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 810
    if-eqz v8, :cond_1

    .line 812
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 814
    .end local v7           #SmsCbId:I
    .local v5, SmsCbId:I
    :try_start_1
    const-string v0, "CBMessageListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmMultiDeleteMsgDialog max SMS id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 819
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 820
    const/4 v8, 0x0

    .line 823
    :goto_1
    const/16 v1, 0x709

    .line 824
    .local v1, token:I
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$8$1;->this$1:Lcom/android/mms/ui/CBMessageListActivity$8;

    iget-object v0, v0, Lcom/android/mms/ui/CBMessageListActivity$8;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/CBMessageListActivity;->access$600(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->access$900()Z

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity$8$1;->this$1:Lcom/android/mms/ui/CBMessageListActivity$8;

    iget-object v3, v3, Lcom/android/mms/ui/CBMessageListActivity$8;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/ui/CBMessageListActivity;->access$000(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZJII)V

    .line 827
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/CBMessageListActivity$8$1;->this$1:Lcom/android/mms/ui/CBMessageListActivity$8;

    iget-object v2, v2, Lcom/android/mms/ui/CBMessageListActivity$8;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/CBMessageListActivity;->access$000(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v9}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 829
    return-void

    .line 819
    .end local v1           #token:I
    .end local v5           #SmsCbId:I
    .restart local v7       #SmsCbId:I
    :catchall_0
    move-exception v0

    move v5, v7

    .end local v7           #SmsCbId:I
    .restart local v5       #SmsCbId:I
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 820
    const/4 v8, 0x0

    .line 819
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .end local v5           #SmsCbId:I
    .restart local v7       #SmsCbId:I
    :cond_0
    move v5, v7

    .end local v7           #SmsCbId:I
    .restart local v5       #SmsCbId:I
    goto :goto_0

    .end local v5           #SmsCbId:I
    .restart local v7       #SmsCbId:I
    :cond_1
    move v5, v7

    .end local v7           #SmsCbId:I
    .restart local v5       #SmsCbId:I
    goto :goto_1
.end method
