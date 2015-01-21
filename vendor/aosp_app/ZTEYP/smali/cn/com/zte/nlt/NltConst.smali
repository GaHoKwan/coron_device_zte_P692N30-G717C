.class public interface abstract Lcn/com/zte/nlt/NltConst;
.super Ljava/lang/Object;
.source "NltConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/nlt/NltConst$NumberType;
    }
.end annotation


# static fields
.field public static final AREA_CODE:Ljava/lang/String; = "areacode"

.field public static final CARD_TYPE:Ljava/lang/String; = "cardtype"

.field public static final CITY_NAME:Ljava/lang/String; = "cityname"

.field public static final DATABASE_NAME:Ljava/lang/String; = "/data/data/cn.com.zte.yp/databases/numberinfo.db"

.field public static final DATABASE_NAME_JOUNAL:Ljava/lang/String; = "/data/data/cn.com.zte.yp/databases/numberinfo.db"

.field public static final DATA_DIR_PATH:Ljava/lang/String; = "/data/data/cn.com.zte.yp/"

.field public static final DB_DIR_PATH:Ljava/lang/String; = "/data/data/cn.com.zte.yp/databases/"

.field public static final DETAIL:Ljava/lang/String; = "detail"

.field public static final INTERNAL_QUERY:Ljava/lang/String; = "internal_query"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUM_PREFIX:Ljava/lang/String; = "number_prefix"

.field public static final PHONENUM:Ljava/lang/String; = "phonenum"

.field public static final URI_GET_VALUE:Landroid/net/Uri; = null

.field public static final URI_LOCATION:Landroid/net/Uri; = null

.field public static final URI_PUT_VALUE:Landroid/net/Uri; = null

.field public static final ZONE:Ljava/lang/String; = "zone"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "content://zte.com.cn.providers.numberlocatorprovider/location/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/com/zte/nlt/NltConst;->URI_LOCATION:Landroid/net/Uri;

    .line 23
    const-string v0, "content://zte.com.cn.providers.numberlocatorprovider/get_value"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/com/zte/nlt/NltConst;->URI_GET_VALUE:Landroid/net/Uri;

    .line 24
    const-string v0, "content://zte.com.cn.providers.numberlocatorprovider/put_value"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/com/zte/nlt/NltConst;->URI_PUT_VALUE:Landroid/net/Uri;

    return-void
.end method
