.class public interface abstract Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider$BluetoothPrxmDeviceMetaData;
.super Ljava/lang/Object;
.source "PrxmProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BluetoothPrxmDeviceMetaData"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.mtkbt.prxm.device"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.mtkbt.prxm.device"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "addr DESC"

.field public static final DEVICE_ADDR:Ljava/lang/String; = "addr"

.field public static final DEVICE_CREATION_DATE:Ljava/lang/String; = "creation"

.field public static final DEVICE_LINK_LOSS_LEVEL:Ljava/lang/String; = "link_ll"

.field public static final DEVICE_MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final DEVICE_PATH_LOSS_LEVEL:Ljava/lang/String; = "path_ll"

.field public static final DEVICE_PATH_LOSS_THRESHOLD:Ljava/lang/String; = "path_lt"

.field public static final DEVICE_STATE:Ljava/lang/String; = "state"

.field public static final TABLE_NAME:Ljava/lang/String; = "devices"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "content://com.mediatek.provider.bluetooth.prxm/devices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/bluetooth/prx/monitor/PrxmProvider$BluetoothPrxmDeviceMetaData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
