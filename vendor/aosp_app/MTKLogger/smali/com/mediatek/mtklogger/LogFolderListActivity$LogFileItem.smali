.class Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;
.super Ljava/lang/Object;
.source "LogFolderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/LogFolderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogFileItem"
.end annotation


# instance fields
.field fileName:Ljava/lang/String;

.field filterFilePath:Ljava/lang/String;

.field showName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"
    .parameter "showName"
    .parameter "filterFilePath"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;->fileName:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;->showName:Ljava/lang/String;

    .line 85
    if-nez p3, :cond_0

    .line 86
    const-string p3, ""

    .line 88
    :cond_0
    iput-object p3, p0, Lcom/mediatek/mtklogger/LogFolderListActivity$LogFileItem;->filterFilePath:Ljava/lang/String;

    .line 89
    return-void
.end method
