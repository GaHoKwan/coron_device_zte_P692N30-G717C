.class public Lcom/mediatek/filemanager/ext/DefaultIconExtension;
.super Ljava/lang/Object;
.source "DefaultIconExtension.java"

# interfaces
.implements Lcom/mediatek/filemanager/ext/IIconExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSystemFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultPath"

    .prologue
    .line 47
    return-void
.end method

.method public getSystemFolderIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "path"

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSystemFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
