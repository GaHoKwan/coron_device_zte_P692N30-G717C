.class public Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
.super Ljava/lang/Object;
.source "TrafficCorrectionAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;
    }
.end annotation


# static fields
.field public static final BRANDS:I = 0x3

.field public static final CARRIERS:I = 0x2

.field public static final CITIES:I = 0x1

.field public static final PROVINCES:I


# instance fields
.field private mProvinceCityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->mProvinceCityList:Ljava/util/List;

    return-void
.end method

.method public static sendSms(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "phoneNumber"
    .parameter "message"
    .parameter "subscription"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 95
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v8

    .line 96
    .local v8, smsManager:Landroid/telephony/SmsManager;
    new-instance v7, Landroid/content/Intent;

    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SENT_SMS_ACTION:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SMS_INFO_SCHEME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v7, sentIntent:Landroid/content/Intent;
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SENT_SMS_NUM:Ljava/lang/String;

    invoke-virtual {v7, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    sget-object v0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->SENT_SMS_MSG:Ljava/lang/String;

    invoke-virtual {v7, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    invoke-static {v0, v5, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 106
    .local v4, sentPI:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v0

    move-object v1, p0

    move-object v3, p1

    move-object v5, v2

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/zte/heartyservice/msim/SimManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z

    .line 107
    invoke-static {p2}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->startReceiver(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public checkItemCode(ILjava/lang/String;Ljava/lang/String;)Lcom/zte/heartyservice/net/CodeNameItem;
    .locals 1
    .parameter "type"
    .parameter "Code"
    .parameter "arg"

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public cleanConfigSim()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public findLocationByCityName(Ljava/lang/String;)Lcom/zte/heartyservice/net/LocationNode;
    .locals 7
    .parameter "cityName"

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-object v3

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->getProvinceCityList()Ljava/util/List;

    move-result-object v5

    .line 53
    .local v5, provinceCityList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;

    .line 54
    .local v4, node:Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;
    iget-object v6, v4, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->mCityList:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 55
    iget-object v6, v4, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->mCityList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/net/CodeNameItem;

    .line 56
    .local v2, item:Lcom/zte/heartyservice/net/CodeNameItem;
    iget-object v6, v2, Lcom/zte/heartyservice/net/CodeNameItem;->mName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 57
    new-instance v3, Lcom/zte/heartyservice/net/LocationNode;

    invoke-direct {v3}, Lcom/zte/heartyservice/net/LocationNode;-><init>()V

    .line 58
    .local v3, location:Lcom/zte/heartyservice/net/LocationNode;
    iget-object v6, v4, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    iput-object v6, v3, Lcom/zte/heartyservice/net/LocationNode;->mProvince:Lcom/zte/heartyservice/net/CodeNameItem;

    .line 59
    iput-object v2, v3, Lcom/zte/heartyservice/net/LocationNode;->mCity:Lcom/zte/heartyservice/net/CodeNameItem;

    goto :goto_0
.end method

.method public getCodeNameList(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "type"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/CodeNameItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCurCodeNameItem(I)Lcom/zte/heartyservice/net/CodeNameItem;
    .locals 1
    .parameter "type"

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurCodeNameItem(II)Lcom/zte/heartyservice/net/CodeNameItem;
    .locals 1
    .parameter "subscription"
    .parameter "type"

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvinceCityList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v4, p0, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->mProvinceCityList:Ljava/util/List;

    if-nez v4, :cond_0

    .line 35
    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->getCodeNameList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 36
    .local v3, provincesList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->mProvinceCityList:Ljava/util/List;

    .line 38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/net/CodeNameItem;

    .line 39
    .local v1, item:Lcom/zte/heartyservice/net/CodeNameItem;
    new-instance v2, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;

    const/4 v4, 0x1

    iget-object v5, v1, Lcom/zte/heartyservice/net/CodeNameItem;->mCode:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->getCodeNameList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, p0, v1, v4}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;-><init>(Lcom/zte/heartyservice/net/TrafficCorrectionAPI;Lcom/zte/heartyservice/net/CodeNameItem;Ljava/util/List;)V

    .line 41
    .local v2, provinceNode:Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;
    iget-object v4, p0, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->mProvinceCityList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/zte/heartyservice/net/CodeNameItem;
    .end local v2           #provinceNode:Lcom/zte/heartyservice/net/TrafficCorrectionAPI$ProvinceCityNode;
    .end local v3           #provincesList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/net/CodeNameItem;>;"
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->mProvinceCityList:Ljava/util/List;

    return-object v4
.end method

.method public hasSavedConfig(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public isLastConfigSim(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public resetConfig(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public saveConfig(ILcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;)V
    .locals 0
    .parameter "subscription"
    .parameter "province"
    .parameter "city"
    .parameter "carrier"
    .parameter "brand"

    .prologue
    .line 135
    return-void
.end method

.method public setConfig(ILcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;Lcom/zte/heartyservice/net/CodeNameItem;)Z
    .locals 1
    .parameter "subscription"
    .parameter "province"
    .parameter "city"
    .parameter "carrier"
    .parameter "brand"

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public setConfigSim(I)V
    .locals 0
    .parameter "subscription"

    .prologue
    .line 116
    return-void
.end method

.method public startCorrection()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->startCorrection(I)V

    .line 88
    return-void
.end method

.method public startCorrection(I)V
    .locals 0
    .parameter "subscription"

    .prologue
    .line 142
    return-void
.end method

.method public switchConfig(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public trafficCorrectionWithConfig(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "phonenum"
    .parameter "msg"
    .parameter "subscription"

    .prologue
    .line 145
    return-void
.end method
