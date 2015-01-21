.class Lcom/android/mms/ui/FolderViewList$10$1;
.super Ljava/lang/Object;
.source "FolderViewList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderViewList$10;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/FolderViewList$10;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderViewList$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 1755
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListAdapter.getBackUpItemList() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v3, v3, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/FolderViewListAdapter;->getBackUpItemList()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$2702(I)I

    .line 1757
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/FolderViewListAdapter;->getBackUpItemList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 1758
    .local v25, iter:Ljava/util/Iterator;
    const/4 v8, 0x0

    .line 1759
    .local v8, deleteSmsUri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 1760
    .local v14, deleteMmsUri:Landroid/net/Uri;
    const/16 v20, 0x0

    .line 1761
    .local v20, deleteCbUri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 1762
    .local v4, deleteWpUri:Landroid/net/Uri;
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mListAdapter.getSelectedNumber() ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v3, v3, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/FolderViewListAdapter;->getSelectedNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/FolderViewListAdapter;->getSelectedNumber()I

    move-result v1

    new-array v10, v1, [Ljava/lang/String;

    .line 1764
    .local v10, argsSms:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/FolderViewListAdapter;->getSelectedNumber()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1765
    .local v16, argsMms:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/FolderViewListAdapter;->getSelectedNumber()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1767
    .local v22, argsCb:[Ljava/lang/String;
    const/16 v24, 0x0

    .line 1768
    .local v24, i:I
    const/16 v26, 0x0

    .line 1769
    .local v26, j:I
    const/16 v27, 0x0

    .line 1770
    .local v27, k:I
    const/16 v28, 0x0

    .line 1771
    .local v28, m:I
    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1773
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 1774
    .local v23, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList$10;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1776
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v2, v1, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    #calls: Lcom/android/mms/ui/FolderViewList;->isMsgLocked(J)Z
    invoke-static {v2, v5, v6}, Lcom/android/mms/ui/FolderViewList;->access$3400(Lcom/android/mms/ui/FolderViewList;J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1780
    :cond_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v5, 0x186a0

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    .line 1781
    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$3500()Landroid/net/Uri;

    move-result-object v2

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v11, 0x186a0

    sub-long/2addr v5, v11

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1782
    const-string v2, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wappush :entry.getKey()-100000 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v11, 0x186a0

    sub-long/2addr v5, v11

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$2708()I

    .line 1784
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wappush mDeleteCounter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$2700()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    move-result-object v1

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1787
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 1788
    :cond_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v5, -0x186a0

    cmp-long v1, v1, v5

    if-gez v1, :cond_3

    .line 1789
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v5, 0x186a0

    add-long/2addr v1, v5

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v22, v27

    .line 1790
    const-string v2, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CB :-entry.getKey() +100000= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/32 v11, 0x186a0

    add-long/2addr v5, v11

    neg-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "argsSms[i]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v22, v27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$3600()Landroid/net/Uri;

    move-result-object v20

    .line 1793
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 1794
    :cond_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-gez v1, :cond_4

    .line 1795
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v16, v26

    .line 1796
    const-string v2, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mms :-entry.getKey() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    neg-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "argsMms[j]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v16, v26

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1799
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 1800
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 1801
    const-string v1, "FolderViewList"

    const-string v2, "sms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v24

    .line 1803
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "argsSms[i]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v10, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    sget-object v8, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1805
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 1809
    .end local v23           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_5
    if-eqz v8, :cond_6

    .line 1810
    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$2708()I

    .line 1812
    :cond_6
    if-eqz v14, :cond_7

    .line 1813
    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$2708()I

    .line 1815
    :cond_7
    if-eqz v20, :cond_8

    .line 1816
    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$2708()I

    .line 1818
    :cond_8
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDeleteCounter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/FolderViewList;->access$2700()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1819
    if-eqz v8, :cond_9

    .line 1820
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    move-result-object v5

    const/16 v6, 0x3e9

    const/4 v7, 0x0

    const-string v9, "ForFolderMultiDelete"

    invoke-virtual/range {v5 .. v10}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1823
    :cond_9
    if-eqz v14, :cond_a

    .line 1824
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    move-result-object v11

    const/16 v12, 0x3e9

    const/4 v13, 0x0

    const-string v15, "ForMultiDelete"

    invoke-virtual/range {v11 .. v16}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1827
    :cond_a
    if-eqz v20, :cond_b

    .line 1828
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/FolderViewList$10$1;->this$1:Lcom/android/mms/ui/FolderViewList$10;

    iget-object v1, v1, Lcom/android/mms/ui/FolderViewList$10;->this$0:Lcom/android/mms/ui/FolderViewList;

    #getter for: Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/FolderViewList;->access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    move-result-object v17

    const/16 v18, 0x3e9

    const/16 v19, 0x0

    const-string v21, "ForMultiDelete"

    invoke-virtual/range {v17 .. v22}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1831
    :cond_b
    return-void
.end method
