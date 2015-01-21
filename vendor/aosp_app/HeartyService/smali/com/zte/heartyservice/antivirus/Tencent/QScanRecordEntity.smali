.class public final Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;
.super Ljava/lang/Object;
.source "QScanRecordEntity.java"


# static fields
.field public static final HANDLED:I = 0x1

.field public static final UNHANDLED:I


# instance fields
.field public advice:I

.field public apkType:I

.field public certMd5:Ljava/lang/String;

.field public discription:Ljava/lang/String;

.field public handleResult:I

.field public handled:I

.field public label:Ljava/lang/String;

.field public malwareid:I

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:I

.field public softName:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method constructor <init>(Ltmsdk/common/module/qscanner/QScanResultEntity;I)V
    .locals 1
    .parameter "entity"
    .parameter "handled"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget-object v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->packageName:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->softName:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->version:Ljava/lang/String;

    .line 32
    iget v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->versionCode:I

    iput v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->versionCode:I

    .line 33
    iget-object v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->path:Ljava/lang/String;

    .line 34
    iget v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->apkType:I

    iput v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->apkType:I

    .line 35
    iget-object v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->certMd5:Ljava/lang/String;

    .line 36
    iget v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    iput v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->size:I

    .line 37
    iget v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    iput v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->type:I

    .line 38
    iget v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    iput v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->advice:I

    .line 39
    iget v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->malwareid:I

    iput v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->malwareid:I

    .line 40
    iget-object v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->name:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->label:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->discription:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Ltmsdk/common/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->url:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->handled:I

    .line 45
    return-void
.end method
