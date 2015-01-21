.class Ltmsdk/fg/module/qscanner/h$c;
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
    name = "c"
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
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iget-object v0, p1, Ltmsdkobf/bl;->name:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/h$c;->mName:Ljava/lang/String;

    .line 128
    iget-object v0, p1, Ltmsdkobf/bl;->ft:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/h$c;->Fm:Ljava/lang/String;

    .line 129
    iget v0, p1, Ltmsdkobf/bl;->level:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/h$c;->Fn:I

    .line 130
    iget-object v0, p1, Ltmsdkobf/bl;->eb:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/h$c;->Fo:Ljava/lang/String;

    .line 131
    iget v0, p1, Ltmsdkobf/bl;->advice:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/h$c;->Fp:I

    .line 132
    iget v0, p1, Ltmsdkobf/bl;->type:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/h$c;->mType:I

    .line 133
    return-void
.end method


# virtual methods
.method public b(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z
    .locals 1
    .parameter "scanResult"

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public hw()Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 137
    new-instance v4, Ltmsdk/common/module/qscanner/QScanResultEntity;

    invoke-direct {v4}, Ltmsdk/common/module/qscanner/QScanResultEntity;-><init>()V

    .line 138
    .local v4, resultEntity:Ltmsdk/common/module/qscanner/QScanResultEntity;
    const v6, 0x1d4c1

    iput v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->systemFlaw:I

    .line 139
    iget-object v6, p0, Ltmsdk/fg/module/qscanner/h$c;->Fm:Ljava/lang/String;

    iput-object v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->shortDesc:Ljava/lang/String;

    .line 140
    iget-object v6, p0, Ltmsdk/fg/module/qscanner/h$c;->Fo:Ljava/lang/String;

    iput-object v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    .line 141
    iget-object v6, p0, Ltmsdk/fg/module/qscanner/h$c;->mName:Ljava/lang/String;

    iput-object v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, isRisk:Z
    invoke-static {}, Ltmsdk/fg/module/qscanner/h;->hH()Ltmsdk/fg/module/qscanner/h;

    move-result-object v6

    invoke-static {v6}, Ltmsdk/fg/module/qscanner/h;->a(Ltmsdk/fg/module/qscanner/h;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 144
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.android.mms"

    const-string v7, "com.android.mms.transaction.SmsReceiverService"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v0, componentName:Landroid/content/ComponentName;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 147
    .local v5, serviceinfo:Landroid/content/pm/ServiceInfo;
    iget-boolean v6, v5, Landroid/content/pm/ServiceInfo;->exported:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_0

    .line 148
    const/4 v2, 0x1

    .line 162
    .end local v5           #serviceinfo:Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 163
    iget v6, p0, Ltmsdk/fg/module/qscanner/h$c;->mType:I

    iput v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 164
    iget v6, p0, Ltmsdk/fg/module/qscanner/h$c;->Fn:I

    iput v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    .line 165
    iget v6, p0, Ltmsdk/fg/module/qscanner/h$c;->Fp:I

    iput v6, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    .line 166
    iput-boolean v9, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->needOpenAppMonitorToHandle:Z

    .line 171
    :goto_1
    return-object v4

    .line 152
    :catch_0
    move-exception v1

    .line 160
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ltmsdkobf/id;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 168
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_1
    iput v9, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    .line 169
    iput v8, v4, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    goto :goto_1

    .line 150
    :catch_1
    move-exception v6

    goto :goto_0
.end method
