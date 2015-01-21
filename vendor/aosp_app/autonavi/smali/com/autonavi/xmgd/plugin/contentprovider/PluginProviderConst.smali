.class public Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst;
.super Ljava/lang/Object;


# static fields
.field public static final AUTOHORITY:Ljava/lang/String; = "com.autonavi.xmgd.plugin.contentprovider"

.field public static final MD5KEY:[Ljava/lang/String; = null

.field public static final MD5KEY_URI:Landroid/net/Uri; = null

.field public static final MD5_KEY:Ljava/lang/String; = "md5key"

.field public static final PATH:Ljava/lang/String; = "plugin_request"

.field public static final PLUGIN_PROVIDER_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.autonavi.xmgd.plugin.contentprovider"

.field public static final PLUGIN_PROVIDER_TYPE_CODE:I = 0x1

.field public static final QUERY_TYPE_MD5KEY:Ljava/lang/String; = "/md5_key"

.field public static final QUERY_TYPE_SEARCH_CONDITION_INFO:Ljava/lang/String; = "/search_center_info"

.field public static final QUERY_TYPE_SYSCODE:Ljava/lang/String; = "/syscode"

.field public static final QUERY_TYPE_TTS_PATH:Ljava/lang/String; = "/tts_path"

.field private static final RequestURIString:Ljava/lang/String; = "content://com.autonavi.xmgd.plugin.contentprovider/plugin_request"

.field public static final SCI_COLUMN_CAR_LAT:Ljava/lang/String; = "sci_car_lat"

.field public static final SCI_COLUMN_CAR_LON:Ljava/lang/String; = "sci_car_lon"

.field public static final SCI_COLUMN_CENTER_ADCODE:Ljava/lang/String; = "sci_center_adcode"

.field public static final SCI_COLUMN_CENTER_LAT:Ljava/lang/String; = "sci_center_lat"

.field public static final SCI_COLUMN_CENTER_LON:Ljava/lang/String; = "sci_center_lon"

.field public static final SEARCH_CONDITION:[Ljava/lang/String; = null

.field public static final SEARCH_CONDITION_INFO_URI:Landroid/net/Uri; = null

.field public static final SYSCODE:[Ljava/lang/String; = null

.field public static final SYSCODE_COLUMN_SYSCODE:Ljava/lang/String; = "syscode"

.field public static final SYSCODE_URI:Landroid/net/Uri; = null

.field public static final TTSPATH_COLUMN_DIR:Ljava/lang/String; = "ttspath_dir"

.field public static final TTSPATH_COLUMN_NAME:Ljava/lang/String; = "ttspath_name"

.field public static final TTS_PATH:[Ljava/lang/String;

.field public static final TTS_PATH_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "content://com.autonavi.xmgd.plugin.contentprovider/plugin_request/tts_path"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst;->TTS_PATH_URI:Landroid/net/Uri;

    const-string v0, "content://com.autonavi.xmgd.plugin.contentprovider/plugin_request/search_center_info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst;->SEARCH_CONDITION_INFO_URI:Landroid/net/Uri;

    const-string v0, "content://com.autonavi.xmgd.plugin.contentprovider/plugin_request/syscode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst;->SYSCODE_URI:Landroid/net/Uri;

    const-string v0, "content://com.autonavi.xmgd.plugin.contentprovider/plugin_request/md5_key"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst;->MD5KEY_URI:Landroid/net/Uri;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "ttspath_dir"

    aput-object v1, v0, v3

    const-string v1, "ttspath_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst;->TTS_PATH:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sci_center_lon"

    aput-object v1, v0, v3

    const-string v1, "sci_center_lat"

    aput-object v1, v0, v4

    const-string v1, "sci_center_adcode"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "sci_car_lon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sci_car_lat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst;->SEARCH_CONDITION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "syscode"

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst;->SYSCODE:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "md5key"

    aput-object v1, v0, v3

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst;->MD5KEY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
