.class public Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;
.super Ljava/lang/Object;
.source "FileInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/FileInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationRecord"
.end annotation


# instance fields
.field private final mPath:Ljava/lang/String;

.field private final mSelectedFile:Lcom/mediatek/filemanager/FileInfo;

.field private final mTop:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mediatek/filemanager/FileInfo;I)V
    .locals 0
    .parameter "path"
    .parameter "selectedFile"
    .parameter "top"

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;->mPath:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;->mSelectedFile:Lcom/mediatek/filemanager/FileInfo;

    .line 321
    iput p3, p0, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;->mTop:I

    .line 322
    return-void
.end method


# virtual methods
.method public getRecordPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedFile()Lcom/mediatek/filemanager/FileInfo;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;->mSelectedFile:Lcom/mediatek/filemanager/FileInfo;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/mediatek/filemanager/FileInfoManager$NavigationRecord;->mTop:I

    return v0
.end method
