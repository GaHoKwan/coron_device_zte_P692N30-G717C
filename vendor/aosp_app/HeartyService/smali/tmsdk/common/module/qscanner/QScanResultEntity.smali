.class public Ltmsdk/common/module/qscanner/QScanResultEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ltmsdk/common/module/qscanner/QScanResultEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public advice:I

.field public apkType:I

.field public certMd5:Ljava/lang/String;

.field public dexSha1:Ljava/lang/String;

.field public dirtyDataPathes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public discription:Ljava/lang/String;

.field public isInPayList:Z

.field public isInStealAccountList:Z

.field public label:Ljava/lang/String;

.field public malwareid:I

.field public name:Ljava/lang/String;

.field public needOpenAppMonitorToHandle:Z

.field public needRootToHandle:Z

.field public packageName:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public plugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/qscanner/QScanAdPluginEntity;",
            ">;"
        }
    .end annotation
.end field

.field public product:I

.field public safeLevel:I

.field public shortDesc:Ljava/lang/String;

.field public size:I

.field public softName:Ljava/lang/String;

.field public special:I

.field public systemFlaw:I

.field public type:I

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 183
    new-instance v0, Ltmsdk/common/module/qscanner/QScanResultEntity$1;

    invoke-direct {v0}, Ltmsdk/common/module/qscanner/QScanResultEntity$1;-><init>()V

    sput-object v0, Ltmsdk/common/module/qscanner/QScanResultEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->special:I

    .line 106
    iput v1, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->systemFlaw:I

    .line 110
    iput-boolean v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInPayList:Z

    .line 114
    iput-boolean v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInStealAccountList:Z

    .line 118
    iput-boolean v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->needRootToHandle:Z

    .line 122
    iput-boolean v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->needOpenAppMonitorToHandle:Z

    .line 127
    iput v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->product:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->apkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->certMd5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dexSha1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->plugins:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 155
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->advice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->malwareid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->safeLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->shortDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dirtyDataPathes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dirtyDataPathes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    :goto_0
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->special:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->systemFlaw:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-boolean v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInPayList:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 176
    iget-boolean v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->isInStealAccountList:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 177
    iget-boolean v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->needRootToHandle:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    iget-boolean v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->needOpenAppMonitorToHandle:Z

    if-eqz v0, :cond_5

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 179
    iget v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->product:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dirtyDataPathes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Ltmsdk/common/module/qscanner/QScanResultEntity;->dirtyDataPathes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 175
    goto :goto_1

    :cond_3
    move v0, v2

    .line 176
    goto :goto_2

    :cond_4
    move v0, v2

    .line 177
    goto :goto_3

    :cond_5
    move v1, v2

    .line 178
    goto :goto_4
.end method
