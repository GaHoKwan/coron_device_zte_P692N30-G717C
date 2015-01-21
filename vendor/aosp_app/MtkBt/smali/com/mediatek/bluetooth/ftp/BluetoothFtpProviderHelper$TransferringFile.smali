.class public final Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;
.super Ljava/lang/Object;
.source "BluetoothFtpProviderHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferringFile"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.mtkbt.ftp.transferring"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.mtkbt.ftp.transferring"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DIRECTION_PULL:I = 0x1e

.field public static final DIRECTION_PUSH:I = 0x1f

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PROGRESS:Ljava/lang/String; = "progress"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_FAILED:I = 0x17

.field public static final STATUS_SUCCESSFUL:I = 0x16

.field public static final STATUS_TRANSFERRING:I = 0x15

.field public static final STATUS_WAITING:I = 0x14

.field public static final TOTAL:Ljava/lang/String; = "total"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-string v0, "content://com.mediatek.provider.bluetooth.ftp/transferring"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$TransferringFile;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
