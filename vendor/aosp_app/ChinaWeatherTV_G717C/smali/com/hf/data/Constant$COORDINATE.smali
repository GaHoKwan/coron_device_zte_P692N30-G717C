.class public Lcom/hf/data/Constant$COORDINATE;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/data/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COORDINATE"
.end annotation


# static fields
.field public static final COORDINATE_ID:Ljava/lang/String; = "id"

.field public static final COORDINATE_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.hf.coordinate"

.field public static final COORDINATE_LAT:Ljava/lang/String; = "lat"

.field public static final COORDINATE_LNG:Ljava/lang/String; = "lng"

.field public static final COORDINATE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.hf.coordinate"

.field public static final COORDINATE_URI:Landroid/net/Uri; = null

.field public static final TABLE_COORDINATE:Ljava/lang/String; = "coordinate"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-string v0, "content://hf.weather/coordinate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/hf/data/Constant$COORDINATE;->COORDINATE_URI:Landroid/net/Uri;

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
