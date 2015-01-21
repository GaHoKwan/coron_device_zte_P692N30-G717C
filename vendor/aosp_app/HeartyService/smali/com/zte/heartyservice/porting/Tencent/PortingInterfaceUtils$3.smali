.class Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$3;
.super Ljava/lang/Object;
.source "PortingInterfaceUtils.java"

# interfaces
.implements Ltmsdk/bg/module/aresengine/DataHandler$DataHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;
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
    .line 874
    iput-object p1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$3;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onCallback(Ltmsdk/common/module/aresengine/TelephonyEntity;II[Ljava/lang/Object;)V
    .locals 4
    .parameter "data"
    .parameter "filter"
    .parameter "state"
    .parameter "datas"

    .prologue
    .line 877
    instance-of v1, p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    if-eqz v1, :cond_1

    .line 879
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->getTrafficCorrection()Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    move-result-object v0

    .line 880
    .local v0, tc:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
    iget-object v2, p1, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ltmsdk/common/module/aresengine/SmsEntity;

    iget-object v1, v1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    check-cast p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .end local p1
    iget v3, p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    invoke-virtual {v0, v2, v1, v3}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->trafficCorrectionWithConfig(Ljava/lang/String;Ljava/lang/String;I)V

    .line 888
    .end local v0           #tc:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
    :cond_0
    :goto_0
    return-void

    .line 884
    .restart local p1
    :cond_1
    instance-of v1, p1, Ltmsdk/common/module/aresengine/SmsEntity;

    if-eqz v1, :cond_0

    .line 886
    iget-object v1, p1, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    check-cast p1, Ltmsdk/common/module/aresengine/SmsEntity;

    .end local p1
    iget-object v2, p1, Ltmsdk/common/module/aresengine/SmsEntity;->body:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->trafficCorrection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
