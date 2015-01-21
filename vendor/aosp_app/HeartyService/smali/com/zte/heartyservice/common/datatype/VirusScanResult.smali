.class public Lcom/zte/heartyservice/common/datatype/VirusScanResult;
.super Ljava/lang/Object;
.source "VirusScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APK_TYPE:Ljava/lang/String; = "apkType"

.field public static final APK_TYPE_PACKAGE_NORMAL:I = 0x0

.field public static final APK_TYPE_PACKAGE_SYSTEM:I = 0x1

.field public static final APK_TYPE_SDCARD:I = 0x2

.field public static final APK_TYPE_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final INTRODUCTION:Ljava/lang/String; = "introduction"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgName"

.field public static final RESULT_CODE:Ljava/lang/String; = "resultCode"

.field public static final SOFT_NAME:Ljava/lang/String; = "softName"

.field public static final TYPE_AD:I = 0x3

.field public static final TYPE_NOT_OFFICIAL:I = 0x4

.field public static final TYPE_OK:I = 0x0

.field public static final TYPE_RISK:I = 0x2

.field public static final TYPE_RISK_PAY:I = 0x5

.field public static final TYPE_RISK_STEALACCOUNT:I = 0x6

.field public static final TYPE_TROJAN:I = 0x7

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VIRUS:I = 0x1


# instance fields
.field public apkType:I

.field public introduction:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public resultCode:I

.field public softName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/zte/heartyservice/common/datatype/VirusScanResultCreator;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/datatype/VirusScanResultCreator;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->softName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->softName:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->softName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static getVirusScanResult(Landroid/database/Cursor;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .locals 2
    .parameter "c"

    .prologue
    .line 108
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    .line 110
    :cond_0
    new-instance v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    invoke-direct {v0}, Lcom/zte/heartyservice/common/datatype/VirusScanResult;-><init>()V

    .line 111
    .local v0, result:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    const-string v1, "pkgName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    .line 112
    const-string v1, "resultCode"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    .line 113
    const-string v1, "introduction"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    .line 114
    const-string v1, "apkType"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    .line 115
    const-string v1, "path"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    .line 116
    const-string v1, "softName"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->softName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "pkgName"

    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "resultCode"

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 99
    const-string v1, "introduction"

    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v1, "apkType"

    iget v2, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    const-string v1, "path"

    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "softName"

    iget-object v2, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->softName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, localStringBuilder:Ljava/lang/StringBuilder;
    const-string v1, "VirusScanResult [pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", introduction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", apkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", softName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->softName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "paramParcel"
    .parameter "paramInt"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->introduction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->apkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->softName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
