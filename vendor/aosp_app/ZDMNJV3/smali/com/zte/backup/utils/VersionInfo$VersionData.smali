.class Lcom/zte/backup/utils/VersionInfo$VersionData;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/utils/VersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionData"
.end annotation


# instance fields
.field public ANDROID_VERSION:Ljava/lang/String;

.field public HARDWARE_MODEL:Ljava/lang/String;

.field public PHONE_MANUFACTURER:Ljava/lang/String;

.field public SOFTWARE_VERSION:Ljava/lang/String;

.field public isTDdata:Z

.field public mmsCount:I

.field public smsCount:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/backup/utils/VersionInfo$VersionData;->PHONE_MANUFACTURER:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/backup/utils/VersionInfo$VersionData;->HARDWARE_MODEL:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/backup/utils/VersionInfo$VersionData;->ANDROID_VERSION:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/backup/utils/VersionInfo$VersionData;->SOFTWARE_VERSION:Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/zte/backup/utils/VersionInfo$VersionData;->isTDdata:Z

    .line 31
    iput v1, p0, Lcom/zte/backup/utils/VersionInfo$VersionData;->smsCount:I

    .line 32
    iput v1, p0, Lcom/zte/backup/utils/VersionInfo$VersionData;->mmsCount:I

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/backup/utils/VersionInfo$VersionData;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/zte/backup/utils/VersionInfo$VersionData;-><init>()V

    return-void
.end method
