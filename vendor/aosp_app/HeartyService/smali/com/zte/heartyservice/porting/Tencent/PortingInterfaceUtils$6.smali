.class Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$6;
.super Ljava/lang/Object;
.source "PortingInterfaceUtils.java"

# interfaces
.implements Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSContentObserverCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->initIntercept()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$6;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dealSMS(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)Z
    .locals 10
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1128
    if-eqz p1, :cond_0

    iget v8, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mType:I

    if-eq v8, v7, :cond_1

    iget v8, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mType:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_1

    iget v8, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mType:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_1

    .line 1178
    :cond_0
    :goto_0
    return v6

    .line 1134
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getRetrieveStatus()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mBody:Ljava/lang/String;

    sget-object v9, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->RETRIEVE_SMS:[Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringStartsWithIgnoreCase(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1142
    :cond_2
    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    invoke-direct {v5}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;-><init>()V

    .line 1143
    .local v5, sms:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    iget-object v8, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mAddress:Ljava/lang/String;

    iput-object v8, v5, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    .line 1144
    iget-object v8, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mBody:Ljava/lang/String;

    iput-object v8, v5, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->body:Ljava/lang/String;

    .line 1145
    iput v7, v5, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->type:I

    .line 1146
    iput v6, v5, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->protocolType:I

    .line 1147
    iget-wide v8, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mDateSent:J

    iput-wide v8, v5, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    .line 1148
    const/4 v8, 0x0

    iput-object v8, v5, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->raw:Landroid/content/Intent;

    .line 1149
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v4

    .line 1151
    .local v4, simManager:Lcom/zte/heartyservice/msim/SimManager;
    invoke-virtual {v4}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1152
    iget v8, p1, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;->mSubscription:I

    invoke-virtual {v4, v8}, Lcom/zte/heartyservice/msim/SimManager;->getSmsIdFromSys(I)I

    move-result v8

    iput v8, v5, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    .line 1157
    :goto_1
    iget-object v8, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$6;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    #getter for: Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->mAresEnginManager:Ltmsdk/bg/module/aresengine/AresEngineManager;
    invoke-static {v8}, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->access$200(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v8

    const-string v9, "incoming_sms"

    invoke-virtual {v8, v9}, Ltmsdk/bg/module/aresengine/AresEngineManager;->findInterceptor(Ljava/lang/String;)Ltmsdk/bg/module/aresengine/DataInterceptor;

    move-result-object v2

    .line 1159
    .local v2, intercepter:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    invoke-interface {v2}, Ltmsdk/bg/module/aresengine/DataInterceptor;->dataFilter()Ltmsdk/bg/module/aresengine/DataFilter;

    move-result-object v1

    .line 1161
    .local v1, filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v1, v5, v8}, Ltmsdk/bg/module/aresengine/DataFilter;->filter(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;

    move-result-object v3

    .line 1162
    .local v3, result:Ltmsdk/common/module/aresengine/FilterResult;
    if-eqz v3, :cond_0

    .line 1163
    iget v8, v3, Ltmsdk/common/module/aresengine/FilterResult;->mState:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v6, v7

    .line 1165
    goto :goto_0

    .line 1155
    .end local v1           #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    .end local v2           #intercepter:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    .end local v3           #result:Ltmsdk/common/module/aresengine/FilterResult;
    :cond_3
    const/4 v8, -0x1

    iput v8, v5, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    goto :goto_1

    .line 1167
    .restart local v1       #filter:Ltmsdk/bg/module/aresengine/DataFilter;,"Ltmsdk/bg/module/aresengine/DataFilter<Ltmsdk/common/module/aresengine/SmsEntity;>;"
    .restart local v2       #intercepter:Ltmsdk/bg/module/aresengine/DataInterceptor;,"Ltmsdk/bg/module/aresengine/DataInterceptor<*>;"
    .restart local v3       #result:Ltmsdk/common/module/aresengine/FilterResult;
    :pswitch_1
    iget v8, v3, Ltmsdk/common/module/aresengine/FilterResult;->mFilterfiled:I

    const/16 v9, 0x40

    if-ne v8, v9, :cond_0

    .line 1168
    iget-object v8, v3, Ltmsdk/common/module/aresengine/FilterResult;->mParams:[Ljava/lang/Object;

    aget-object v0, v8, v6

    check-cast v0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;

    .line 1169
    .local v0, checkResult:Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;
    iget v8, v0, Ltmsdk/common/module/aresengine/IntelliSmsCheckResult;->suggestion:I

    packed-switch v8, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    move v6, v7

    .line 1172
    goto :goto_0

    .line 1163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1169
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
