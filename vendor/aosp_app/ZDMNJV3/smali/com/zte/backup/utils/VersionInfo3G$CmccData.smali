.class Lcom/zte/backup/utils/VersionInfo3G$CmccData;
.super Ljava/lang/Object;
.source "VersionInfo3G.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/utils/VersionInfo3G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CmccData"
.end annotation


# instance fields
.field public alarmsNum:I

.field public browseNum:I

.field public calendarNum:I

.field public callHistryNum:I

.field public contactsNum:I

.field public favoritesSize:I

.field public galleryNum:I

.field public mmsNum:I

.field public notesNum:I

.field public reMark:Ljava/lang/String;

.field public settingsNum:I

.field public smsNum:I

.field public zteBrowseNum:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->contactsNum:I

    .line 44
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->smsNum:I

    .line 45
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->mmsNum:I

    .line 46
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->calendarNum:I

    .line 47
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->callHistryNum:I

    .line 48
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->browseNum:I

    .line 49
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->settingsNum:I

    .line 50
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->alarmsNum:I

    .line 51
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->notesNum:I

    .line 52
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->favoritesSize:I

    .line 53
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->galleryNum:I

    .line 54
    iput v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->zteBrowseNum:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/backup/utils/VersionInfo3G$CmccData;->reMark:Ljava/lang/String;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/backup/utils/VersionInfo3G$CmccData;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/zte/backup/utils/VersionInfo3G$CmccData;-><init>()V

    return-void
.end method
