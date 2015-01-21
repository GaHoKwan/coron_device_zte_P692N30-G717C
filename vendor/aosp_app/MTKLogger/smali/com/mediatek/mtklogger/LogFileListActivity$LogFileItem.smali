.class Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;
.super Ljava/lang/Object;
.source "LogFileListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/LogFileListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogFileItem"
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mIsChecked:Z

.field final synthetic this$0:Lcom/mediatek/mtklogger/LogFileListActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/mtklogger/LogFileListActivity;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "fileName"
    .parameter "fileSize"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->this$0:Lcom/mediatek/mtklogger/LogFileListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->mFileName:Ljava/lang/String;

    .line 335
    iput-wide p3, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->mFileSize:J

    .line 336
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->mFileSize:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->mIsChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->mIsChecked:Z

    .line 356
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 347
    iput-wide p1, p0, Lcom/mediatek/mtklogger/LogFileListActivity$LogFileItem;->mFileSize:J

    .line 348
    return-void
.end method
