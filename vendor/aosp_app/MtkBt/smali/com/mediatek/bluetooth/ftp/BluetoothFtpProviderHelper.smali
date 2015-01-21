.class public Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;
.super Ljava/lang/Object;
.source "BluetoothFtpProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;,
        Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.mediatek.provider.bluetooth.ftp"

.field private static final TAG:Ljava/lang/String; = "BluetoothFtpProviderHelper"

.field public static final UNKNOWN_DATE:Ljava/lang/String; = "unknown"

.field public static final UNKNOWN_SIZE:I = -0x1

.field private static sHSAudio:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHSImage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHSVideo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSAudio:Ljava/util/HashSet;

    .line 107
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSAudio:Ljava/util/HashSet;

    const-string v1, "aac"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSAudio:Ljava/util/HashSet;

    const-string v1, "amr"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSAudio:Ljava/util/HashSet;

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSAudio:Ljava/util/HashSet;

    const-string v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSAudio:Ljava/util/HashSet;

    const-string v1, "ogg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSAudio:Ljava/util/HashSet;

    const-string v1, "wav"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSAudio:Ljava/util/HashSet;

    const-string v1, "wma"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSImage:Ljava/util/HashSet;

    .line 116
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSImage:Ljava/util/HashSet;

    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSImage:Ljava/util/HashSet;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSImage:Ljava/util/HashSet;

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSImage:Ljava/util/HashSet;

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSImage:Ljava/util/HashSet;

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSVideo:Ljava/util/HashSet;

    .line 123
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSVideo:Ljava/util/HashSet;

    const-string v1, "3gp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSVideo:Ljava/util/HashSet;

    const-string v1, "avi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSAudio:Ljava/util/HashSet;

    const-string v1, "flv"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSVideo:Ljava/util/HashSet;

    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSVideo:Ljava/util/HashSet;

    const-string v1, "wmv"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeCode(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    .line 175
    const/16 v2, 0xb

    .line 176
    .local v2, ret:I
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, lastDot:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 179
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, ext:Ljava/lang/String;
    sget-object v3, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSAudio:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const/16 v2, 0xd

    .line 192
    .end local v0           #ext:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 183
    .restart local v0       #ext:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSImage:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    const/16 v2, 0xc

    goto :goto_0

    .line 185
    :cond_2
    sget-object v3, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;->sHSVideo:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    const/16 v2, 0xe

    goto :goto_0

    .line 188
    :cond_3
    const/16 v2, 0xb

    goto :goto_0
.end method
