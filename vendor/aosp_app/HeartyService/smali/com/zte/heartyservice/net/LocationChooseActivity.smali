.class public Lcom/zte/heartyservice/net/LocationChooseActivity;
.super Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;
.source "LocationChooseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected loadData(Ljava/lang/String;)V
    .locals 11
    .parameter "query"

    .prologue
    .line 32
    iget-object v9, p0, Lcom/zte/heartyservice/net/LocationChooseActivity;->mGroupData:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 33
    iget-object v9, p0, Lcom/zte/heartyservice/net/LocationChooseActivity;->mChildData:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 36
    const/4 p1, 0x0

    .line 39
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v9

    invoke-virtual {v9}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->getTrafficCorrection()Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    move-result-object v8

    .line 41
    .local v8, tc:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
    invoke-virtual {v8}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->getProvinceCityList()Ljava/util/List;

    move-result-object v7

    .line 43
    .local v7, provinceCityList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;

    .line 44
    .local v6, pN:Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;
    const/4 v0, 0x0

    .line 45
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 46
    .local v2, hasPN:Z
    if-eqz p1, :cond_2

    iget-object v9, v6, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v9, v9, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 47
    :cond_2
    iget-object v9, v6, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v9, v9, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/net/LocationChooseActivity;->addGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 48
    const/4 v2, 0x1

    .line 51
    :cond_3
    iget-object v9, v6, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->mCityList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/net/CodeNameItem;

    .line 52
    .local v5, item:Lcom/zte/heartyservice/net/CodeNameItem;
    if-nez v2, :cond_5

    iget-object v9, v5, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 53
    :cond_5
    if-nez v0, :cond_6

    .line 54
    iget-object v9, v6, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    iget-object v9, v9, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/net/LocationChooseActivity;->addGroup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 56
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v1, curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "NAME"

    iget-object v10, v5, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    if-eqz p1, :cond_4

    iget-object v9, v5, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 60
    iget-object v9, p0, Lcom/zte/heartyservice/net/LocationChooseActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v10, p0, Lcom/zte/heartyservice/net/LocationChooseActivity;->mGroupData:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0

    .line 65
    .end local v0           #children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1           #curChildMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #hasPN:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/zte/heartyservice/net/CodeNameItem;
    .end local v6           #pN:Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;
    :cond_7
    iget-object v9, p0, Lcom/zte/heartyservice/net/LocationChooseActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 66
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 22
    .local v0, data:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/net/LocationChooseActivity;->mAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v2, p3, p4}, Landroid/widget/BaseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 24
    .local v1, item:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "NAME"

    const-string v2, "NAME"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v4, v0}, Lcom/zte/heartyservice/net/LocationChooseActivity;->setResult(ILandroid/content/Intent;)V

    .line 26
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/LocationChooseActivity;->finish()V

    .line 27
    return v4
.end method
