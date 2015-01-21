.class Lcom/zte/backup/application/BackupAppInfo$1;
.super Ljava/lang/Object;
.source "BackupAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/backup/application/BackupAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/backup/application/BackupAppInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 193
    new-instance v0, Lcom/zte/backup/application/BackupAppInfo;

    invoke-direct {v0}, Lcom/zte/backup/application/BackupAppInfo;-><init>()V

    .line 194
    .local v0, backupAppInfoObj:Lcom/zte/backup/application/BackupAppInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/backup/application/BackupAppInfo;->appName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->access$0(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/backup/application/BackupAppInfo;->apkName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->access$1(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/backup/application/BackupAppInfo;->packageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->access$2(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/backup/application/BackupAppInfo;->dataDir:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->access$3(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/backup/application/BackupAppInfo;->apkResourceDir:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->access$4(Lcom/zte/backup/application/BackupAppInfo;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/zte/backup/application/BackupAppInfo;->versionCode:I
    invoke-static {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->access$5(Lcom/zte/backup/application/BackupAppInfo;I)V

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Lcom/zte/backup/application/BackupAppInfo;->uid:I
    invoke-static {v0, v1}, Lcom/zte/backup/application/BackupAppInfo;->access$6(Lcom/zte/backup/application/BackupAppInfo;I)V

    .line 201
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/zte/backup/application/BackupAppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/backup/application/BackupAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/backup/application/BackupAppInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 207
    new-array v0, p1, [Lcom/zte/backup/application/BackupAppInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/zte/backup/application/BackupAppInfo$1;->newArray(I)[Lcom/zte/backup/application/BackupAppInfo;

    move-result-object v0

    return-object v0
.end method
