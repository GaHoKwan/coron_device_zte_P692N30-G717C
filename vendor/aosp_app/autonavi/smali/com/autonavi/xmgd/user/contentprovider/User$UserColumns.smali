.class public final Lcom/autonavi/xmgd/user/contentprovider/User$UserColumns;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATED_DATE:Ljava/lang/String; = "created"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified DESC"

.field public static final ISLOGIN:Ljava/lang/String; = "islogin"

.field public static final MODIFIED_DATE:Ljava/lang/String; = "modified"

.field public static final MY_ICON_URI:Ljava/lang/String; = "my_icon_uri"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final USERID:Ljava/lang/String; = "userid"

.field public static final USERNAME:Ljava/lang/String; = "username"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.autonavi.xmgd.user.contentprovider.tob/users"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/autonavi/xmgd/user/contentprovider/User$UserColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
