.class Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

.field final synthetic val$deleteLocked:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iput-boolean p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->val$deleteLocked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 805
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 806
    .local v18, iter:Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 807
    .local v4, deleteSmsUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 808
    .local v10, deleteMmsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    .line 809
    .local v6, argsSms:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v1

    new-array v12, v1, [Ljava/lang/String;

    .line 810
    .local v12, argsMms:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 811
    .local v14, i:I
    const/16 v19, 0x0

    .line 812
    .local v19, j:I
    :cond_0
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 814
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 815
    .local v13, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->mDeleteLockedMessages:Z
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->access$500(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 816
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->isMsgLocked(Ljava/util/Map$Entry;)Z
    invoke-static {v1, v13}, Lcom/android/mms/ui/MultiDeleteActivity;->access$800(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 820
    :cond_1
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-lez v1, :cond_2

    .line 822
    const-string v1, "Mms/MultiDeleteActivity"

    const-string v2, "sms"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v14

    .line 824
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "argsSms[i]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v6, v14

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 826
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 828
    :cond_2
    const-string v1, "Mms/MultiDeleteActivity"

    const-string v2, "mms"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v19

    .line 830
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "argsMms[j]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v12, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 832
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 836
    .end local v13           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$400(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    move-result-object v3

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-eqz v10, :cond_5

    const/4 v1, 0x1

    :goto_2
    add-int/2addr v1, v2

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->setMax(I)V

    .line 839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpMessageIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$900(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 840
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpMessageIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$900(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v0, v1, [J

    move-object/from16 v17, v0

    .line 841
    .local v17, ids:[J
    const/16 v20, 0x0

    .line 842
    .local v20, k:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpMessageIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$900(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    .line 843
    .local v16, id:Ljava/lang/Long;
    add-int/lit8 v21, v20, 0x1

    .end local v20           #k:I
    .local v21, k:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    aput-wide v1, v17, v20

    .line 844
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete ipmessage, id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v21, -0x1

    aget-wide v7, v17, v3

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v20, v21

    .end local v21           #k:I
    .restart local v20       #k:I
    goto :goto_3

    .line 836
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #id:Ljava/lang/Long;
    .end local v17           #ids:[J
    .end local v20           #k:I
    :cond_4
    const/4 v1, 0x0

    move v2, v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 846
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v17       #ids:[J
    .restart local v20       #k:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->val$deleteLocked:Z

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v2, v3}, Lcom/mediatek/mms/ipmessage/MessageManager;->deleteIpMsg([JZZ)V

    .line 848
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpMessageIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$900(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 850
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #ids:[J
    .end local v20           #k:I
    :cond_7
    if-eqz v4, :cond_8

    .line 851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1008(Lcom/android/mms/ui/MultiDeleteActivity;)I

    .line 853
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMmsMultiDeletePlugin:Lcom/mediatek/mms/ext/IMmsMultiDelete;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/mediatek/mms/ext/IMmsMultiDelete;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/mediatek/mms/ext/IMmsMultiDelete;->deleteMassTextMsg([Ljava/lang/String;)Z

    .line 854
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$400(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    move-result-object v1

    const/16 v2, 0x25e4

    const/4 v3, 0x0

    const-string v5, "ForMultiDelete"

    invoke-virtual/range {v1 .. v6}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 857
    :cond_8
    if-eqz v10, :cond_9

    .line 858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1008(Lcom/android/mms/ui/MultiDeleteActivity;)I

    .line 859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$400(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    move-result-object v7

    const/16 v8, 0x25e4

    const/4 v9, 0x0

    const-string v11, "ForMultiDelete"

    invoke-virtual/range {v7 .. v12}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 863
    :cond_9
    if-nez v4, :cond_a

    if-nez v10, :cond_a

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener$2;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$400(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;->dismissProgressDialog()V

    .line 866
    :cond_a
    return-void
.end method
