.class public Lcom/zte/retrieve/cloud/PRConnectUrl;
.super Ljava/lang/Object;
.source "PRConnectUrl.java"


# static fields
.field private static final ACTIVATION_CANCEL_URL_FORMAT:Ljava/lang/String; = "?ActiveType=%s&IMEI=%s"

.field private static final ACTIVATION_URL_FORMAT:Ljava/lang/String; = "?IMEI=%s&ActiveType=%s&Uid=%s&UA=%s&SECPhoneNumber=%s&Token=%s"

.field private static final BIND_STATUS_URL_FORMAT:Ljava/lang/String; = "?ActiveType=4&IMEI=%s&Uid=%s"

.field private static final FORWARD_RESREPORT_URL_FORMAT:Ljava/lang/String; = "?IMEI=%s&ActionType=%s&Rescode=%s&ActionParam=%s"

.field private static final MAP_RESREPORT_URL_FORMAT:Ljava/lang/String; = "?IMEI=%s&Rescode=%s&Longitude=%s&Latitude=%s"

.field private static final MAP_RESREPORT_URL_FORMAT_ERROR:Ljava/lang/String; = "?IMEI=%s&Rescode=%s"

.field private static final QUERY_IMEI_BIND_FORMAT:Ljava/lang/String; = "?ActiveType=5&IMEI=%s"

.field private static final RESULT_REPORT_URL_FORMAT:Ljava/lang/String; = "?IMEI=%s&ActionType=%s&Rescode=%s"

.field private static final SMS_SETTING_URL_FORMAT:Ljava/lang/String; = "?Username=%s&SECPhoneNumber=%s"

.field private static final URL_ACTIVATION:Ljava/lang/String; = "RetrieveServer/Activation"

.field private static final URL_LOCATE:Ljava/lang/String; = "RetrieveServer/Locate"

.field private static final URL_SMSSETTING:Ljava/lang/String; = "RetrieveServer/SMSSetting"

.field private static final URL_STATUSREPORT:Ljava/lang/String; = "RetrieveServer/StatusReport"

.field private static mPRConnectUrl:Lcom/zte/retrieve/cloud/PRConnectUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/zte/retrieve/cloud/PRConnectUrl;

    invoke-direct {v0}, Lcom/zte/retrieve/cloud/PRConnectUrl;-><init>()V

    sput-object v0, Lcom/zte/retrieve/cloud/PRConnectUrl;->mPRConnectUrl:Lcom/zte/retrieve/cloud/PRConnectUrl;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getActivationCancelParams(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "activeType"
    .parameter "IMEI"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, params:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRConnectUrl_getActivationCancelParams:activeType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 119
    const-string v1, "?ActiveType=%s&IMEI=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRConnectUrl_getActivationCancelParams:params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 121
    return-object v0
.end method

.method private getActivationParams(ILcom/zte/retrieve/cloud/UserInfo;)Ljava/lang/String;
    .locals 10
    .parameter "activeType"
    .parameter "userinfo"

    .prologue
    .line 125
    const/4 v2, 0x0

    .line 126
    .local v2, params:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zte/retrieve/cloud/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, uid:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zte/retrieve/cloud/UserInfo;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, IMEI:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zte/retrieve/cloud/UserInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, uA:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zte/retrieve/cloud/UserInfo;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, token:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/zte/retrieve/cloud/UserInfo;->getSecurityNumber()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, SECPhoneNumber:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PRConnectUrl_getActivationParams:IMEI="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",activeType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 133
    const-string v7, ",uA="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",SECPhoneNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 134
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 135
    if-nez v3, :cond_1

    .line 136
    :cond_0
    const/4 v6, 0x0

    .line 153
    :goto_0
    return-object v6

    .line 138
    :cond_1
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    const-string v6, "_"

    const-string v7, " "

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 141
    :cond_2
    const-string v6, "?IMEI=%s&ActiveType=%s&Uid=%s&UA=%s&SECPhoneNumber=%s&Token=%s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v5, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v8, 0x4

    aput-object v1, v7, v8

    const/4 v8, 0x5

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PRConnectUrl_getActivationParams:params="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    move-object v6, v2

    .line 153
    goto :goto_0
.end method

.method private getBindStatusParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "IMEI"
    .parameter "uid"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, params:Ljava/lang/String;
    const-string v1, "?ActiveType=4&IMEI=%s&Uid=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRConnectUrl_getBindStatusParams:params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 69
    return-object v0
.end method

.method private getCallandSMSForwardParams(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "IMEI"
    .parameter "actionType"
    .parameter "rescode"
    .parameter "actionParam"

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, params:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRConnectUrl_getCallandSMSForwardParams: IMEI="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",actionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rescode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",extraParam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 41
    const-string v1, "?IMEI=%s&ActionType=%s&Rescode=%s&ActionParam=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRConnectUrl_getCallandSMSForwardParams: params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 43
    return-object v0
.end method

.method private getImeiBindParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "IMEI"

    .prologue
    .line 73
    const-string v1, "?ActiveType=5&IMEI=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, params:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRConnectUrl_getImeiBindParams:params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method public static getInstance()Lcom/zte/retrieve/cloud/PRConnectUrl;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/zte/retrieve/cloud/PRConnectUrl;->mPRConnectUrl:Lcom/zte/retrieve/cloud/PRConnectUrl;

    return-object v0
.end method

.method private getMapParams(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "IMEI"
    .parameter "rescode"

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, params:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMEI="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rescode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 59
    const-string v1, "?IMEI=%s&Rescode=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 61
    return-object v0
.end method

.method private getMapParams(Ljava/lang/String;IDD)Ljava/lang/String;
    .locals 5
    .parameter "IMEI"
    .parameter "rescode"
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, params:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMEI="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rescode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",longitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lantitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 50
    const-string v1, "?IMEI=%s&Rescode=%s&Longitude=%s&Latitude=%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 52
    return-object v0
.end method

.method private getResReportParams(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "IMEI"
    .parameter "actionType"
    .parameter "rescode"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, params:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRConnectUrl_getResReportParams:IMEI="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",actionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",rescode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 105
    const-string v1, "?IMEI=%s&ActionType=%s&Rescode=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRConnectUrl_getResReportParams:params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 108
    return-object v0
.end method

.method private getSMSSettingParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "uid"
    .parameter "sECPhoneNumber"

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, params:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRConnectUrl_getSMSSettingParams:uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sECPhoneNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 82
    const-string v1, "?Username=%s&SECPhoneNumber=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PRConnectUrl_getSMSSettingParams:params="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 91
    return-object v0
.end method

.method private getServerURL(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "method"

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, urlSuffix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 231
    .local v0, serverUrl:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRConnectUrl_getServerURL:method="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 232
    packed-switch p2, :pswitch_data_0

    .line 246
    const-string v2, "PRConnectUrl_getServerURL:wrong method"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    .line 247
    const/4 v2, 0x0

    .line 251
    :goto_0
    return-object v2

    .line 234
    :pswitch_0
    const-string v1, "RetrieveServer/Activation"

    .line 249
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getRetrieveServerURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRConnectUrl_getServerURL:url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    move-object v2, v0

    .line 251
    goto :goto_0

    .line 237
    :pswitch_1
    const-string v1, "RetrieveServer/StatusReport"

    .line 238
    goto :goto_1

    .line 240
    :pswitch_2
    const-string v1, "RetrieveServer/SMSSetting"

    .line 241
    goto :goto_1

    .line 243
    :pswitch_3
    const-string v1, "RetrieveServer/Locate"

    .line 244
    goto :goto_1

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActivationCancelUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "IMEI"

    .prologue
    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, url:Ljava/lang/String;
    const/4 v0, 0x0

    .line 197
    .local v0, params:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 198
    const/4 v2, 0x0

    .line 207
    :goto_0
    return-object v2

    .line 200
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getServerURL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 201
    const/4 v2, 0x2

    invoke-direct {p0, v2, p2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getActivationCancelParams(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 203
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRConnectUrl_getActivationCancelUrl:url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    move-object v2, v1

    .line 207
    goto :goto_0
.end method

.method public getActivationUrl(Landroid/content/Context;Lcom/zte/retrieve/cloud/UserInfo;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "userinfo"

    .prologue
    const/4 v2, 0x1

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, url:Ljava/lang/String;
    const/4 v0, 0x0

    .line 165
    .local v0, params:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 166
    const/4 v2, 0x0

    .line 175
    :goto_0
    return-object v2

    .line 168
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getServerURL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-direct {p0, v2, p2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getActivationParams(ILcom/zte/retrieve/cloud/UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 171
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRConnectUrl_getActivationUrl:url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    move-object v2, v1

    .line 175
    goto :goto_0
.end method

.method public getBindStatusUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "IMEI"
    .parameter "uid"

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, params:Ljava/lang/String;
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 289
    const/4 v1, 0x0

    .line 302
    :goto_0
    return-object v1

    .line 291
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getServerURL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, url:Ljava/lang/String;
    if-nez p3, :cond_2

    .line 293
    invoke-direct {p0, p2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getImeiBindParams(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_1
    if-eqz v1, :cond_1

    if-nez v0, :cond_3

    .line 298
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getBindStatusParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 300
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRConnectUrl_getBindStatusUrl:url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCallandSMSForwardUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "IMEI"
    .parameter "actionType"
    .parameter "rescode"
    .parameter "actionParam"

    .prologue
    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, url:Ljava/lang/String;
    const/4 v0, 0x0

    .line 309
    .local v0, params:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p5, :cond_1

    .line 310
    :cond_0
    const/4 v2, 0x0

    .line 319
    :goto_0
    return-object v2

    .line 312
    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getServerURL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 313
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getCallandSMSForwardParams(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 315
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 317
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRConnectUrl_getCallandSMSForwardUrl:url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    move-object v2, v1

    .line 319
    goto :goto_0
.end method

.method public getMapUrl(Landroid/content/Context;Ljava/lang/String;ILcom/zte/retrieve/service/instruct/Location$MapInfo;)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "IMEI"
    .parameter "rescode"
    .parameter "mapInfo"

    .prologue
    .line 323
    const/4 v8, 0x0

    .line 324
    .local v8, url:Ljava/lang/String;
    const/4 v7, 0x0

    .line 325
    .local v7, params:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 339
    :goto_0
    return-object v0

    .line 328
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getServerURL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 329
    if-nez p4, :cond_2

    .line 330
    invoke-direct {p0, p2, p3}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getMapParams(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 334
    :goto_1
    if-eqz v8, :cond_1

    if-nez v7, :cond_3

    .line 335
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_2
    invoke-virtual {p4}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p4}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->getLatitude()D

    move-result-wide v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getMapParams(Ljava/lang/String;IDD)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 337
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PRConnectUrl_getCallandSMSForwardUrl:url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    move-object v0, v8

    .line 339
    goto :goto_0
.end method

.method public getReactivationUrl(Landroid/content/Context;Lcom/zte/retrieve/cloud/UserInfo;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "userinfo"

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, url:Ljava/lang/String;
    const/4 v0, 0x0

    .line 181
    .local v0, params:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 182
    const/4 v2, 0x0

    .line 191
    :goto_0
    return-object v2

    .line 184
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getServerURL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 185
    const/4 v2, 0x3

    invoke-direct {p0, v2, p2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getActivationParams(ILcom/zte/retrieve/cloud/UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 186
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 187
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRConnectUrl_getRectivationUrl:url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    move-object v2, v1

    .line 191
    goto :goto_0
.end method

.method public getRectivationUrl(Landroid/content/Context;Lcom/zte/retrieve/cloud/UserInfo;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "userinfo"

    .prologue
    const/4 v2, 0x0

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, url:Ljava/lang/String;
    const/4 v0, 0x0

    .line 213
    .local v0, params:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 225
    :goto_0
    return-object v2

    .line 216
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getServerURL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 217
    const/4 v3, 0x3

    invoke-direct {p0, v3, p2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getActivationParams(ILcom/zte/retrieve/cloud/UserInfo;)Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 220
    :cond_1
    const-string v3, "getRectivationUrl:url or params is null"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRConnectUrl_getRectivationUrl:url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    move-object v2, v1

    .line 225
    goto :goto_0
.end method

.method public getSMSSettingUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "uid"
    .parameter "SECPhoneNumber"

    .prologue
    .line 271
    const/4 v1, 0x0

    .line 272
    .local v1, url:Ljava/lang/String;
    const/4 v0, 0x0

    .line 273
    .local v0, params:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 274
    :cond_0
    const/4 v2, 0x0

    .line 283
    :goto_0
    return-object v2

    .line 276
    :cond_1
    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getServerURL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-direct {p0, p2, p3}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getSMSSettingParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 279
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRConnectUrl_getSMSSettingUrl:url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    move-object v2, v1

    .line 283
    goto :goto_0
.end method

.method public getStatusReportUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "IMEI"
    .parameter "actionType"
    .parameter "rescode"

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, url:Ljava/lang/String;
    const/4 v0, 0x0

    .line 257
    .local v0, params:Ljava/lang/String;
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 258
    :cond_0
    const/4 v2, 0x0

    .line 267
    :goto_0
    return-object v2

    .line 260
    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getServerURL(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-direct {p0, p2, p3, p4}, Lcom/zte/retrieve/cloud/PRConnectUrl;->getResReportParams(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    .line 263
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "url must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 265
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRConnectUrl_getStatusReportUrl:url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->v(Ljava/lang/String;)V

    move-object v2, v1

    .line 267
    goto :goto_0
.end method
