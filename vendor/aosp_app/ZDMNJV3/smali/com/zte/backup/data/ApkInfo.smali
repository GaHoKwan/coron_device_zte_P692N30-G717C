.class public Lcom/zte/backup/data/ApkInfo;
.super Ljava/lang/Object;
.source "ApkInfo.java"


# instance fields
.field private apkDir:Ljava/lang/String;

.field private apkIcon:Landroid/graphics/drawable/Drawable;

.field private apkName:Ljava/lang/String;

.field private apkSize:F

.field private generationOne:Z

.field private isInstalled:Z

.field private packageName:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean v2, p0, Lcom/zte/backup/data/ApkInfo;->generationOne:Z

    .line 7
    iput-object v1, p0, Lcom/zte/backup/data/ApkInfo;->apkDir:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/zte/backup/data/ApkInfo;->apkName:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/backup/data/ApkInfo;->apkSize:F

    .line 10
    iput-object v1, p0, Lcom/zte/backup/data/ApkInfo;->apkIcon:Landroid/graphics/drawable/Drawable;

    .line 11
    iput v2, p0, Lcom/zte/backup/data/ApkInfo;->versionCode:I

    .line 12
    iput-object v1, p0, Lcom/zte/backup/data/ApkInfo;->packageName:Ljava/lang/String;

    .line 13
    iput-boolean v2, p0, Lcom/zte/backup/data/ApkInfo;->isInstalled:Z

    .line 5
    return-void
.end method


# virtual methods
.method public getApkDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/backup/data/ApkInfo;->apkDir:Ljava/lang/String;

    return-object v0
.end method

.method public getApkIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/zte/backup/data/ApkInfo;->apkIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getApkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/zte/backup/data/ApkInfo;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public getApkSize()F
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/zte/backup/data/ApkInfo;->apkSize:F

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/backup/data/ApkInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/zte/backup/data/ApkInfo;->versionCode:I

    return v0
.end method

.method public isGenerationOne()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/zte/backup/data/ApkInfo;->generationOne:Z

    return v0
.end method

.method public isInstalled()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/zte/backup/data/ApkInfo;->isInstalled:Z

    return v0
.end method

.method public setApkDir(Ljava/lang/String;)V
    .locals 0
    .parameter "apkDir"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zte/backup/data/ApkInfo;->apkDir:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setApkIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "apkIcon"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/zte/backup/data/ApkInfo;->apkIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    return-void
.end method

.method public setApkName(Ljava/lang/String;)V
    .locals 0
    .parameter "apkName"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/zte/backup/data/ApkInfo;->apkName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setApkSize(F)V
    .locals 0
    .parameter "apkSize"

    .prologue
    .line 60
    iput p1, p0, Lcom/zte/backup/data/ApkInfo;->apkSize:F

    .line 61
    return-void
.end method

.method public setGenerationOne(Z)V
    .locals 0
    .parameter "generationOne"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/zte/backup/data/ApkInfo;->generationOne:Z

    .line 76
    return-void
.end method

.method public setInstalled(Z)V
    .locals 0
    .parameter "isInstalled"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/zte/backup/data/ApkInfo;->isInstalled:Z

    .line 21
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/backup/data/ApkInfo;->packageName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 36
    iput p1, p0, Lcom/zte/backup/data/ApkInfo;->versionCode:I

    .line 37
    return-void
.end method
