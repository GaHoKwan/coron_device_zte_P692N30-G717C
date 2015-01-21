.class Ltmsdk/fg/module/qscanner/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/fg/module/qscanner/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/fg/module/qscanner/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field Fm:Ljava/lang/String;

.field Fn:I

.field Fo:Ljava/lang/String;

.field Fp:I

.field mName:Ljava/lang/String;

.field mType:I


# direct methods
.method constructor <init>(Ltmsdkobf/bl;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iget-object v0, p1, Ltmsdkobf/bl;->name:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/h$a;->mName:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Ltmsdkobf/bl;->ft:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/h$a;->Fm:Ljava/lang/String;

    .line 195
    iget v0, p1, Ltmsdkobf/bl;->level:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/h$a;->Fn:I

    .line 196
    iget-object v0, p1, Ltmsdkobf/bl;->eb:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/h$a;->Fo:Ljava/lang/String;

    .line 197
    iget v0, p1, Ltmsdkobf/bl;->advice:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/h$a;->Fp:I

    .line 198
    iget v0, p1, Ltmsdkobf/bl;->type:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/h$a;->mType:I

    .line 199
    return-void
.end method

.method private hI()Z
    .locals 6

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, rst:Z
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v4

    const/16 v5, 0xf

    if-gt v4, v5, :cond_1

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v5, "4.0.4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 228
    const-string v2, "com.sec.android.app.launcher"

    .line 229
    .local v2, touchwizPkg:Ljava/lang/String;
    const-class v4, Ltmsdk/common/module/software/SoftwareManager;

    invoke-static {v4}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/software/SoftwareManager;

    const/16 v5, 0x8

    invoke-virtual {v4, v2, v5}, Ltmsdk/common/module/software/SoftwareManager;->getAppInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v0

    .line 230
    .local v0, entity:Ltmsdk/common/module/software/AppEntity;
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0}, Ltmsdk/common/module/software/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, touchwizVersion:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    :cond_0
    const/4 v1, 0x1

    .line 238
    .end local v0           #entity:Ltmsdk/common/module/software/AppEntity;
    .end local v2           #touchwizPkg:Ljava/lang/String;
    .end local v3           #touchwizVersion:Ljava/lang/String;
    :cond_1
    return v1
.end method


# virtual methods
.method public b(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z
    .locals 1
    .parameter "scanResult"

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public hw()Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 203
    new-instance v0, Ltmsdk/common/module/qscanner/QScanResultEntity;

    invoke-direct {v0}, Ltmsdk/common/module/qscanner/QScanResultEntity;-><init>()V

    .line 204
    .local v0, resultEntity:Ltmsdk/common/module/qscanner/QScanResultEntity;
    const v1, 0x1d4c2

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->systemFlaw:I

    .line 205
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/h$a;->Fm:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->shortDesc:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/h$a;->Fo:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    .line 207
    iget-object v1, p0, Ltmsdk/fg/module/qscanner/h$a;->mName:Ljava/lang/String;

    iput-object v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Ltmsdk/fg/module/qscanner/h$a;->hI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget v1, p0, Ltmsdk/fg/module/qscanner/h$a;->mType:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 210
    iget v1, p0, Ltmsdk/fg/module/qscanner/h$a;->Fn:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 211
    iget v1, p0, Ltmsdk/fg/module/qscanner/h$a;->Fp:I

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    .line 212
    iput-boolean v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->needOpenAppMonitorToHandle:Z

    .line 217
    :goto_0
    return-object v0

    .line 214
    :cond_0
    iput v2, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 215
    const/4 v1, 0x0

    iput v1, v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    goto :goto_0
.end method
