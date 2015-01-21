.class public Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;
.super Ljava/lang/Object;
.source "EncapsulatedStorageManager.java"


# static fields
.field private static final PROP_SD_DEFAULT_PATH:Ljava/lang/String; = "persist.sys.sd.defaultpath"

.field private static final TAG:Ljava/lang/String; = "EncapsulatedStorageManager"

.field private static mStorageMamatger:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->mStorageMamatger:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 27
    const-string v0, "storage"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->mStorageMamatger:Landroid/os/storage/StorageManager;

    .line 29
    :cond_0
    return-void
.end method

.method public static getDefaultPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternalCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "packageName"

    .prologue
    .line 116
    invoke-static {p0}, Lcom/mediatek/storage/StorageManagerEx;->getExternalCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 94
    invoke-static {p0}, Lcom/mediatek/storage/StorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    .line 108
    return-void
.end method


# virtual methods
.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->mStorageMamatger:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "mountPoint"

    .prologue
    .line 37
    sget-object v0, Lcom/mediatek/encapsulation/android/os/storage/EncapsulatedStorageManager;->mStorageMamatger:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
