.class public final Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst$NaviPath;
.super Ljava/lang/Object;


# static fields
.field public static final COLUMN_NAME_NAVI_DATA_PATH:Ljava/lang/String; = "navi_data_path"

.field public static final GPS_INFO:[Ljava/lang/String; = null

.field public static final GPS_INFO_LAT:Ljava/lang/String; = "lat"

.field public static final GPS_INFO_LON:Ljava/lang/String; = "lon"

.field public static final GPS_INFO_URI:Landroid/net/Uri; = null

.field public static final NAVI_DATA_PATH_URI:Landroid/net/Uri; = null

.field public static QUERY_TYPE_GPS_INFO:Ljava/lang/String; = null

.field public static final QUERY_TYPE_NAVI_DATA_PATH:Ljava/lang/String; = "/navi_data_path"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "/gps_info"

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst$NaviPath;->QUERY_TYPE_GPS_INFO:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.autonavi.xmgd.plugin.contentprovider/plugin_request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst$NaviPath;->QUERY_TYPE_GPS_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst$NaviPath;->GPS_INFO_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lon"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst$NaviPath;->GPS_INFO:[Ljava/lang/String;

    const-string v0, "content://com.autonavi.xmgd.plugin.contentprovider/plugin_request/navi_data_path"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst$NaviPath;->NAVI_DATA_PATH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
