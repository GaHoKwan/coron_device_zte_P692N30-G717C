.class public final Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;
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
    name = "FolderContent"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.mtkbt.ftp.folder_content"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.mtkbt.ftp.folder_content"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified DESC"

.field public static final LOCAL_MARKS_URI:Landroid/net/Uri; = null

.field public static final LOCAL_URI:Landroid/net/Uri; = null

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SERVER_MARKS_URI:Landroid/net/Uri; = null

.field public static final SERVER_URI:Landroid/net/Uri; = null

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_AUDIO:I = 0xd

.field public static final TYPE_FOLDER:I = 0xa

.field public static final TYPE_IMAGE:I = 0xc

.field public static final TYPE_TEXT:I = 0xb

.field public static final TYPE_VIDEO:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "content://com.mediatek.provider.bluetooth.ftp/server_cur_folder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->SERVER_URI:Landroid/net/Uri;

    .line 68
    const-string v0, "content://com.mediatek.provider.bluetooth.ftp/server_cur_folder/marks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->SERVER_MARKS_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "content://com.mediatek.provider.bluetooth.ftp/local_cur_folder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->LOCAL_URI:Landroid/net/Uri;

    .line 74
    const-string v0, "content://com.mediatek.provider.bluetooth.ftp/local_cur_folder/marks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/ftp/BluetoothFtpProviderHelper$FolderContent;->LOCAL_MARKS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
