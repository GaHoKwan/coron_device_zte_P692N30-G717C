.class public Lcom/hf/data/Constant$CITY;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/data/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CITY"
.end annotation


# static fields
.field public static final CITY_ENGLISH_NAME:Ljava/lang/String; = "city_englishName"

.field public static final CITY_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.hf.city"

.field public static final CITY_NAME:Ljava/lang/String; = "city_name"

.field public static final CITY_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.hf.city"

.field public static final CITY_URI:Landroid/net/Uri; = null

.field public static final ENGLISH_NAME:Ljava/lang/String; = "englishName"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final IS_HOT:Ljava/lang/String; = "is_hot"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NATION_ENGLISH_NAME:Ljava/lang/String; = "nation_englishName"

.field public static final NATION_NAME:Ljava/lang/String; = "nation_name"

.field public static final PINYIN:Ljava/lang/String; = "pinyin"

.field public static final PROVINCE_ENGLISH_NAME:Ljava/lang/String; = "province_englishName"

.field public static final PROVINCE_ID:Ljava/lang/String; = "province_id"

.field public static final PROVINCE_NAME:Ljava/lang/String; = "province_name"

.field public static final TABLE_CITY:Ljava/lang/String; = "city"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "content://hf.weather/city"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/hf/data/Constant$CITY;->CITY_URI:Landroid/net/Uri;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
