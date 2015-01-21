.class public final Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst$NaviResource;
.super Ljava/lang/Object;


# static fields
.field public static final COLUMN_NAME_NAVI_RESOURCE_PATH:Ljava/lang/String; = "navi_resource_path"

.field public static final NAVI_RESOURCE_PATH_URI:Landroid/net/Uri; = null

.field public static final QUERY_TYPE_NAVI_RESCOURCE_PATH:Ljava/lang/String; = "/navi_resource_path"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.autonavi.xmgd.plugin.contentprovider/plugin_request/navi_resource_path"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/plugin/contentprovider/PluginProviderConst$NaviResource;->NAVI_RESOURCE_PATH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
