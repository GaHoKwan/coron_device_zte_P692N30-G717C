.class public final Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;
.super Ljava/lang/Object;
.source "ZTEVieusScanningActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "QScanResult"
.end annotation


# instance fields
.field records:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;",
            ">;"
        }
    .end annotation
.end field

.field scanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 844
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;->scanReport:Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;

    .line 846
    iput-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity$QScanResult;->records:Ljava/util/ArrayList;

    return-void
.end method
