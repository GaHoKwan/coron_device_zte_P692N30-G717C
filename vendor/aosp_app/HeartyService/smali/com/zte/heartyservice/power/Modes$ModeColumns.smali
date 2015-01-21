.class public Lcom/zte/heartyservice/power/Modes$ModeColumns;
.super Ljava/lang/Object;
.source "Modes.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/Modes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModeColumns"
.end annotation


# static fields
.field public static final BaseNet:Ljava/lang/String; = "base_net"

.field public static final Bluetooth:Ljava/lang/String; = "bluetooth"

.field public static final Brightness:Ljava/lang/String; = "brightness"

.field public static final BrightnessAutomatic:Ljava/lang/String; = "brightness_auto"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.zte.modes"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.zte.modes"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFUALT_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field public static final Feedback:Ljava/lang/String; = "feedback"

.field public static final GPS:Ljava/lang/String; = "gps"

.field public static final Intelligent:Ljava/lang/String; = "intelligent"

.field public static final Name:Ljava/lang/String; = "mode_name"

.field public static final NetData:Ljava/lang/String; = "net_data"

.field public static final Rotate:Ljava/lang/String; = "rotate"

.field public static final Sync:Ljava/lang/String; = "sync"

.field public static final Timeout:Ljava/lang/String; = "timeout"

.field public static final Wifi:Ljava/lang/String; = "wifi"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "content://com.zte.heartyservice.power.provider/mode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method
