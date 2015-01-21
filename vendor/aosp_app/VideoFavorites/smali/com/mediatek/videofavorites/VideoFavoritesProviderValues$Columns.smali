.class public Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;
.super Ljava/lang/Object;
.source "VideoFavoritesProviderValues.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/VideoFavoritesProviderValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Columns"
.end annotation


# static fields
.field public static final CONTACT_URI:Ljava/lang/String; = "contact_uri"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "videofavorites.db"

.field public static final DATABASE_TABLE_NAME:Ljava/lang/String; = "videofavorites"

.field public static final DATABASE_VERSION:I = 0x2

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final STORAGE:Ljava/lang/String; = "storage"

.field public static final VIDEO_URI:Ljava/lang/String; = "video_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "content://com.mediatek.videofavorites.provider/datas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/videofavorites/VideoFavoritesProviderValues$Columns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
