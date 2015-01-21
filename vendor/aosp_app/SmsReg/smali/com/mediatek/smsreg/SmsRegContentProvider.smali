.class public Lcom/mediatek/smsreg/SmsRegContentProvider;
.super Landroid/content/ContentProvider;
.source "SmsRegContentProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsReg/SmsRegContentProvider"


# instance fields
.field private mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

.field private mSmsRegColumn:[Ljava/lang/String;

.field private mXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "enable"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "op"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "smsNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "smsPort"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "manufacturer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "product"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "version"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mSmsRegColumn:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 75
    const-string v0, "SmsReg/SmsRegContentProvider"

    const-string v1, "SmsRegContentProvider onCreate.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/mediatek/smsreg/SmsBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/smsreg/SmsBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

    .line 78
    invoke-static {}, Lcom/mediatek/smsreg/SmsRegConst;->getConfigPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/smsreg/XMLGenerator;->getInstance(Ljava/lang/String;)Lcom/mediatek/smsreg/ConfigInfoGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 85
    const-string v10, "SmsReg/SmsRegContentProvider"

    const-string v11, "SmsRegContentProvider query.."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, ""

    .line 88
    .local v1, enable:Ljava/lang/String;
    new-instance v10, Lcom/mediatek/smsreg/SmsRegReceiver;

    invoke-direct {v10}, Lcom/mediatek/smsreg/SmsRegReceiver;-><init>()V

    invoke-virtual {v10}, Lcom/mediatek/smsreg/SmsRegReceiver;->enableSmsReg()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 89
    const-string v1, "yes"

    .line 93
    :goto_0
    const-string v10, "SmsReg/SmsRegContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "is SmsReg enable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v10, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

    iget-object v11, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    const-string v12, "getimei"

    invoke-virtual {v10, v11, v12}, Lcom/mediatek/smsreg/SmsBuilder;->getContentInfo(Lcom/mediatek/smsreg/ConfigInfoGenerator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, imei:Ljava/lang/String;
    const-string v10, "SmsReg/SmsRegContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "imei : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v10, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

    iget-object v11, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    const-string v12, "getproduct"

    invoke-virtual {v10, v11, v12}, Lcom/mediatek/smsreg/SmsBuilder;->getContentInfo(Lcom/mediatek/smsreg/ConfigInfoGenerator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, product:Ljava/lang/String;
    const-string v10, "SmsReg/SmsRegContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "product : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v10, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

    iget-object v11, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    const-string v12, "getversion"

    invoke-virtual {v10, v11, v12}, Lcom/mediatek/smsreg/SmsBuilder;->getContentInfo(Lcom/mediatek/smsreg/ConfigInfoGenerator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, version:Ljava/lang/String;
    const-string v10, "SmsReg/SmsRegContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "product : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v10, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v10}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, opName:Ljava/lang/String;
    const-string v10, "SmsReg/SmsRegContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "opName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v10, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mSmsBuilder:Lcom/mediatek/smsreg/SmsBuilder;

    iget-object v11, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    const-string v12, "getvendor"

    invoke-virtual {v10, v11, v12}, Lcom/mediatek/smsreg/SmsBuilder;->getContentInfo(Lcom/mediatek/smsreg/ConfigInfoGenerator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, manufacturerName:Ljava/lang/String;
    const-string v10, "SmsReg/SmsRegContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "manufacturer : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v10, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v10}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getSmsNumber()Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, smsNumber:Ljava/lang/String;
    const-string v10, "SmsReg/SmsRegContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "smsNumber : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v10, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mXmlGenerator:Lcom/mediatek/smsreg/ConfigInfoGenerator;

    invoke-interface {v10}, Lcom/mediatek/smsreg/ConfigInfoGenerator;->getSmsPort()Ljava/lang/Short;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Short;->shortValue()S

    move-result v10

    invoke-static {v10}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, smsPort:Ljava/lang/String;
    const-string v10, "SmsReg/SmsRegContentProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "smsPort : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/16 v10, 0x8

    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v6, v10

    const/4 v10, 0x1

    aput-object v2, v6, v10

    const/4 v10, 0x2

    aput-object v4, v6, v10

    const/4 v10, 0x3

    aput-object v7, v6, v10

    const/4 v10, 0x4

    aput-object v8, v6, v10

    const/4 v10, 0x5

    aput-object v3, v6, v10

    const/4 v10, 0x6

    aput-object v5, v6, v10

    const/4 v10, 0x7

    aput-object v9, v6, v10

    .line 122
    .local v6, row:[Ljava/lang/String;
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v10, p0, Lcom/mediatek/smsreg/SmsRegContentProvider;->mSmsRegColumn:[Ljava/lang/String;

    invoke-direct {v0, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 123
    .local v0, cur:Landroid/database/MatrixCursor;
    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 125
    return-object v0

    .line 91
    .end local v0           #cur:Landroid/database/MatrixCursor;
    .end local v2           #imei:Ljava/lang/String;
    .end local v3           #manufacturerName:Ljava/lang/String;
    .end local v4           #opName:Ljava/lang/String;
    .end local v5           #product:Ljava/lang/String;
    .end local v6           #row:[Ljava/lang/String;
    .end local v7           #smsNumber:Ljava/lang/String;
    .end local v8           #smsPort:Ljava/lang/String;
    .end local v9           #version:Ljava/lang/String;
    :cond_0
    const-string v1, "no"

    goto/16 :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method
