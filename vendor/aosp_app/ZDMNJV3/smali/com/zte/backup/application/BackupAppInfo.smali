.class public Lcom/zte/backup/application/BackupAppInfo;
.super Ljava/lang/Object;
.source "BackupAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private apkName:Ljava/lang/String;

.field private apkResourceDir:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appSize:F

.field private dataDir:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private packageName:Ljava/lang/String;

.field private size:D

.field private uid:I

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/zte/backup/application/BackupAppInfo$1;

    invoke-direct {v0}, Lcom/zte/backup/application/BackupAppInfo$1;-><init>()V

    sput-object v0, Lcom/zte/backup/application/BackupAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->appName:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/zte/backup/application/BackupAppInfo;->apkName:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/zte/backup/application/BackupAppInfo;->packageName:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/zte/backup/application/BackupAppInfo;->dataDir:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/zte/backup/application/BackupAppInfo;->versionCode:I

    .line 32
    iput v2, p0, Lcom/zte/backup/application/BackupAppInfo;->uid:I

    .line 34
    iput-object v1, p0, Lcom/zte/backup/application/BackupAppInfo;->apkResourceDir:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->versionName:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/backup/application/BackupAppInfo;->appSize:F

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/backup/application/BackupAppInfo;->size:D

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->apkName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->dataDir:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->apkResourceDir:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/zte/backup/application/BackupAppInfo;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/zte/backup/application/BackupAppInfo;->versionCode:I

    return-void
.end method

.method static synthetic access$6(Lcom/zte/backup/application/BackupAppInfo;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/zte/backup/application/BackupAppInfo;->uid:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getApkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public getApkResourceDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->apkResourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/zte/backup/application/BackupAppInfo;->appSize:F

    return v0
.end method

.method public getAppname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()D
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/zte/backup/application/BackupAppInfo;->size:D

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/zte/backup/application/BackupAppInfo;->uid:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/zte/backup/application/BackupAppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public prettyPrint()V
    .locals 3

    .prologue
    .line 212
    const-string v0, "taskmanger"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zte/backup/application/BackupAppInfo;->appName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/backup/application/BackupAppInfo;->apkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/backup/application/BackupAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/backup/application/BackupAppInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void
.end method

.method public setApkName(Ljava/lang/String;)V
    .locals 0
    .parameter "apkName"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->apkName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setApkResourceDir(Ljava/lang/String;)V
    .locals 0
    .parameter "apkResourceDir"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->apkResourceDir:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setAppSize(F)V
    .locals 0
    .parameter "appSize"

    .prologue
    .line 82
    iput p1, p0, Lcom/zte/backup/application/BackupAppInfo;->appSize:F

    .line 83
    return-void
.end method

.method public setAppname(Ljava/lang/String;)V
    .locals 0
    .parameter "appname"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->appName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setDataDir(Ljava/lang/String;)V
    .locals 0
    .parameter "dataDir"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->dataDir:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 75
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->packageName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSize(D)V
    .locals 0
    .parameter "size"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/zte/backup/application/BackupAppInfo;->size:D

    .line 47
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 160
    iput p1, p0, Lcom/zte/backup/application/BackupAppInfo;->uid:I

    .line 161
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "versionName"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/zte/backup/application/BackupAppInfo;->versionName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setVisionCode(I)V
    .locals 0
    .parameter "versionCode"

    .prologue
    .line 147
    iput p1, p0, Lcom/zte/backup/application/BackupAppInfo;->versionCode:I

    .line 148
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flag"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->apkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/zte/backup/application/BackupAppInfo;->apkResourceDir:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget v0, p0, Lcom/zte/backup/application/BackupAppInfo;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Lcom/zte/backup/application/BackupAppInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return-void
.end method
