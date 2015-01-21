.class public final Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;
.super Ljava/lang/Object;
.source "QScanReportEntity.java"


# static fields
.field public static final AD_FOUND:Ljava/lang/String; = "adFound"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NOT_OFFICIAL_FOUND:Ljava/lang/String; = "notOfficialFound"

.field public static final RISK_FOUND:Ljava/lang/String; = "riskFound"

.field public static final RISK_PAY_FOUND:Ljava/lang/String; = "riskPayFound"

.field public static final RISK_STEALACCOUNT_FOUND:Ljava/lang/String; = "riskStealAccountFound"

.field public static final SCAN_DATE:Ljava/lang/String; = "scanDate"

.field public static final SCAN_MODE:Ljava/lang/String; = "scan_mode"

.field public static final TROJAN_FOUND:Ljava/lang/String; = "TrojanFound"

.field public static final VIRUS_CURED:Ljava/lang/String; = "virusCured"

.field public static final VIRUS_FOUND:Ljava/lang/String; = "virusFound"

.field public static final WAIT_DEALING:Ljava/lang/String; = "waitingDealing"


# instance fields
.field public mADFound:I

.field public mID:J

.field public mNotOfficialFound:I

.field public mRiskFound:I

.field public mRiskPayFound:I

.field public mRiskStealAccountFound:I

.field public mScanDate:Ljava/lang/String;

.field public mScanMode:I

.field public mTrojanFound:I

.field public mVirusCured:I

.field public mVirusFound:I

.field public mWaitingDealing:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mID:J

    .line 19
    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mScanMode:I

    .line 20
    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mVirusFound:I

    .line 21
    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mVirusCured:I

    .line 22
    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mWaitingDealing:I

    .line 23
    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mRiskFound:I

    .line 24
    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mADFound:I

    .line 25
    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mNotOfficialFound:I

    .line 26
    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mRiskPayFound:I

    .line 27
    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mRiskStealAccountFound:I

    .line 28
    iput v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/QScanReportEntity;->mTrojanFound:I

    return-void
.end method
