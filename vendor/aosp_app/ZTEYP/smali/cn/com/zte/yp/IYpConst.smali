.class public interface abstract Lcn/com/zte/yp/IYpConst;
.super Ljava/lang/Object;
.source "IYpConst.java"


# static fields
.field public static final ACTION_LAUNCH_YP:Ljava/lang/String; = "cn.com.zte.intent.action.ypLaunch"

.field public static final AUTHORITIES:Ljava/lang/String; = "cn.com.zte.yp"

.field public static final DATA_SOURCE:Ljava/lang/String; = "datasource"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final EXTRA_DATA:Ljava/lang/String; = "extraPhoto"

.field public static final INTENT_KEY_LAUNCH_TYPE:Ljava/lang/String; = "LaunchType"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER_YP:Ljava/lang/String; = "numberYp"

.field public static final NUNBER:Ljava/lang/String; = "number"

.field public static final PATH_ENABLED:Ljava/lang/String; = "enabled"

.field public static final PATH_ONLINE:Ljava/lang/String; = "online"

.field public static final PATH_SWITCH:Ljava/lang/String; = "switch"

.field public static final PATH_YP:Ljava/lang/String; = "yp"

.field public static final PHOTO:Ljava/lang/String; = "photo"

.field public static final QUERY_YP:Ljava/lang/String; = "QueryYpNum"

.field public static final SWITCH:Ljava/lang/String; = "switch"

.field public static final URI_YP_CONTACT:Landroid/net/Uri; = null

.field public static final URI_YP_ENABLED:Landroid/net/Uri; = null

.field public static final URI_YP_ONLINE:Landroid/net/Uri; = null

.field public static final URI_YP_SWITCH:Landroid/net/Uri; = null

.field public static final VALUE_LAUNCH_TYPE_DOWNLOAD:Ljava/lang/String; = "Download"

.field public static final VALUE_LAUNCH_TYPE_SEARCH:Ljava/lang/String; = "Search"

.field public static final VALUE_LAUNCH_TYPE_SETTINGS:Ljava/lang/String; = "Settings"

.field public static final YP_DOT:Ljava/lang/String; = "YpDot"

.field public static final YP_MODULE_TOUCHPAL:Ljava/lang/String; = "TouchPal"

.field public static final YP_MODULE_ZD:Ljava/lang/String; = "ZD"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "content://cn.com.zte.yp/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/com/zte/yp/IYpConst;->URI_YP_ENABLED:Landroid/net/Uri;

    .line 22
    const-string v0, "content://cn.com.zte.yp/yp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/com/zte/yp/IYpConst;->URI_YP_CONTACT:Landroid/net/Uri;

    .line 24
    const-string v0, "content://cn.com.zte.yp/online"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/com/zte/yp/IYpConst;->URI_YP_ONLINE:Landroid/net/Uri;

    .line 26
    const-string v0, "content://cn.com.zte.yp/switch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/com/zte/yp/IYpConst;->URI_YP_SWITCH:Landroid/net/Uri;

    return-void
.end method
