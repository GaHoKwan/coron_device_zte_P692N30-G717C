.class public final Lcom/mediatek/launcher2/ext/AllApps;
.super Ljava/lang/Object;
.source "AllApps.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.launcher2.settings"

.field public static final CELLX:Ljava/lang/String; = "cellX"

.field public static final CELLY:Ljava/lang/String; = "cellY"

.field public static final CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri; = null

.field public static final DB_CREATED_BUT_DEFAULT_ALLAPPS_NOT_LOADED:Ljava/lang/String; = "DB_CREATED_BUT_DEFAULT_ALLAPPS_NOT_LOADED"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final ITEM_TYPE:Ljava/lang/String; = "itemType"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PARAMETER_NOTIFY:Ljava/lang/String; = "notify"

.field public static final SCREEN:Ljava/lang/String; = "screen"

.field public static final SHARED_PREFERENCE_KEY:Ljava/lang/String; = "com.android.launcher2.prefs"

.field public static final TABLE_ALLAPPS:Ljava/lang/String; = "allapps"

.field public static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field public static final TAG_APPLICATION_ITEM:Ljava/lang/String; = "application_item"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final VISIBLE_FLAG:Ljava/lang/String; = "visible"

.field public static sAppsCellCountX:I

.field public static sAppsCellCountY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 56
    sput v0, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountX:I

    .line 57
    sput v0, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountY:I

    .line 62
    const-string v0, "content://com.android.launcher2.settings/allapps?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/launcher2/ext/AllApps;->CONTENT_URI:Landroid/net/Uri;

    .line 69
    const-string v0, "content://com.android.launcher2.settings/allapps?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/launcher2/ext/AllApps;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentUri(JZ)Landroid/net/Uri;
    .locals 2
    .parameter "id"
    .parameter "notify"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.launcher2.settings/allapps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
