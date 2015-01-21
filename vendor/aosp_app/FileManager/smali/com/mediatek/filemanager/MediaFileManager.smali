.class public Lcom/mediatek/filemanager/MediaFileManager;
.super Ljava/lang/Object;
.source "MediaFileManager.java"


# static fields
.field public static final FILE_TYPE_MS_EXCEL:I = 0x2c1

.field public static final FILE_TYPE_MS_POWERPOINT:I = 0x2c2

.field public static final FILE_TYPE_MS_WORD:I = 0x2c0

.field public static final FILE_TYPE_PDF:I = 0x2be


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 16
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
