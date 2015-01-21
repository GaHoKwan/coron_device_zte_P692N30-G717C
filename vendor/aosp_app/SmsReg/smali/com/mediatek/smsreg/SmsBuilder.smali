.class Lcom/mediatek/smsreg/SmsBuilder;
.super Ljava/lang/Object;
.source "SmsBuilder.java"


# instance fields
.field private mConfigInfo:Lcom/mediatek/smsreg/ConfigInfoGenerator;

.field private mModelName:Ljava/lang/String;

.field private mSimId:I

.field private mTAG:Ljava/lang/String;

.field private mTeleMgr:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "SmsReg/SmsBuilder"

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTeleMgr:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/smsreg/SmsBuilder;->mSimId:I

    .line 56
    iput-object v1, p0, Lcom/mediatek/smsreg/SmsBuilder;->mModelName:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTeleMgr:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 60
    invoke-static {}, Lcom/mediatek/smsreg/SmsRegConst;->getConfigPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/smsreg/XMLGenerator;->getInstance(Ljava/lang/String;)Lcom/mediatek/smsreg/ConfigInfoGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsBuilder;->mConfigInfo:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    .line 61
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsBuilder;->mConfigInfo:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    const-string v1, "get XMLGenerator instance failed!"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public getContentInfo(Lcom/mediatek/smsreg/ConfigInfoGenerator;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "configGenerator"
    .parameter "command"

    .prologue
    const/4 v0, 0x0

    .line 109
    const-string v3, "getimsi"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get imsi by mSimId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/smsreg/SmsBuilder;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v3, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTeleMgr:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v4, p0, Lcom/mediatek/smsreg/SmsBuilder;->mSimId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 116
    :cond_1
    const-string v3, "getimei"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    iget-object v3, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTeleMgr:Lcom/mediatek/telephony/TelephonyManagerEx;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, imei:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return IMEI (single/gemini) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v0           #imei:Ljava/lang/String;
    :cond_2
    const-string v3, "getversion"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    iget-object v3, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_3
    const-string v3, "getproduct"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 127
    const-string v3, "dm"

    const-string v4, "Model"

    const-string v5, "MTK"

    invoke-static {v3, v4, v5}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/smsreg/SmsBuilder;->mModelName:Ljava/lang/String;

    .line 129
    iget-object v3, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " return product(\'MTK\' is for test): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/smsreg/SmsBuilder;->mModelName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/mediatek/smsreg/SmsBuilder;->mModelName:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_4
    const-string v3, "getvendor"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 132
    const-string v3, "dm"

    const-string v4, "Manufacturer"

    const-string v5, "MTK1"

    invoke-static {v3, v4, v5}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, man:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " return product(\'MTK1\' is for test): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 135
    goto/16 :goto_0

    .line 136
    .end local v1           #man:Ljava/lang/String;
    :cond_5
    const-string v3, "getOem"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 137
    invoke-interface {p1}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getOemName()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, oemName:Ljava/lang/String;
    if-eqz v2, :cond_0

    move-object v0, v2

    .line 142
    goto/16 :goto_0

    .line 144
    .end local v2           #oemName:Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    const-string v4, "The wrong command"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method getSmsContent(Lcom/mediatek/smsreg/ConfigInfoGenerator;I)Ljava/lang/String;
    .locals 11
    .parameter "configGenerator"
    .parameter "simCard"

    .prologue
    const/4 v4, 0x0

    .line 67
    iput p2, p0, Lcom/mediatek/smsreg/SmsBuilder;->mSimId:I

    .line 68
    iget-object v8, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SimId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/smsreg/SmsBuilder;->mSimId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v8, p0, Lcom/mediatek/smsreg/SmsBuilder;->mSimId:I

    if-gez v8, :cond_0

    .line 70
    iget-object v8, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    const-string v9, "SimId is not valid!"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-object v4

    .line 73
    :cond_0
    invoke-interface {p1}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getSmsInfoList()Ljava/util/List;

    move-result-object v5

    .line 74
    .local v5, smsInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/smsreg/SmsInfoUnit;>;"
    if-nez v5, :cond_1

    .line 75
    iget-object v8, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    const-string v9, "there is no sms segment in config file!"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_1
    const-string v4, ""

    .line 79
    .local v4, smsContext:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 80
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/smsreg/SmsInfoUnit;

    .line 81
    .local v6, smsUnit:Lcom/mediatek/smsreg/SmsInfoUnit;
    invoke-virtual {v6}, Lcom/mediatek/smsreg/SmsInfoUnit;->getContent()Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, smsUnitContent:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smsUnit = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0, p1, v7}, Lcom/mediatek/smsreg/SmsBuilder;->getContentInfo(Lcom/mediatek/smsreg/ConfigInfoGenerator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, smsContent:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 87
    invoke-virtual {v6}, Lcom/mediatek/smsreg/SmsInfoUnit;->getPrefix()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, prefix:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/mediatek/smsreg/SmsInfoUnit;->getPostfix()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, postfix:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 92
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    if-eqz v1, :cond_3

    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v1           #postfix:Ljava/lang/String;
    .end local v2           #prefix:Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The smsUnit ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] content is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v4, 0x0

    .line 103
    .end local v3           #smsContent:Ljava/lang/String;
    .end local v6           #smsUnit:Lcom/mediatek/smsreg/SmsInfoUnit;
    .end local v7           #smsUnitContent:Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/mediatek/smsreg/SmsBuilder;->mTAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sms context: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
