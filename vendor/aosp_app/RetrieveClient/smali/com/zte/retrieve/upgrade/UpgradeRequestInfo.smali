.class public Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;
.super Ljava/lang/Object;
.source "UpgradeRequestInfo.java"


# instance fields
.field country:Ljava/lang/String;

.field device:Ljava/lang/String;

.field operator:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->country:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->device:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0
    .parameter "operator"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->operator:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->packageName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 28
    iput p1, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->versionCode:I

    .line 29
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "versionName"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zte/retrieve/upgrade/UpgradeRequestInfo;->versionName:Ljava/lang/String;

    .line 35
    return-void
.end method
