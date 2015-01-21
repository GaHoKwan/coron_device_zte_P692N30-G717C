.class public Lcom/itextpdf/awt/geom/misc/RenderingHints;
.super Ljava/lang/Object;
.source "RenderingHints.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;,
        Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;,
        Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final KEY_ALPHA_INTERPOLATION:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

.field public static final KEY_ANTIALIASING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

.field public static final KEY_COLOR_RENDERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

.field public static final KEY_DITHERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

.field public static final KEY_FRACTIONALMETRICS:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

.field public static final KEY_INTERPOLATION:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

.field public static final KEY_RENDERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

.field public static final KEY_STROKE_CONTROL:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

.field public static final KEY_TEXT_ANTIALIASING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

.field public static final VALUE_ALPHA_INTERPOLATION_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_ALPHA_INTERPOLATION_QUALITY:Ljava/lang/Object;

.field public static final VALUE_ALPHA_INTERPOLATION_SPEED:Ljava/lang/Object;

.field public static final VALUE_ANTIALIAS_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_ANTIALIAS_OFF:Ljava/lang/Object;

.field public static final VALUE_ANTIALIAS_ON:Ljava/lang/Object;

.field public static final VALUE_COLOR_RENDER_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

.field public static final VALUE_COLOR_RENDER_SPEED:Ljava/lang/Object;

.field public static final VALUE_DITHER_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_DITHER_DISABLE:Ljava/lang/Object;

.field public static final VALUE_DITHER_ENABLE:Ljava/lang/Object;

.field public static final VALUE_FRACTIONALMETRICS_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

.field public static final VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

.field public static final VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

.field public static final VALUE_RENDER_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_RENDER_QUALITY:Ljava/lang/Object;

.field public static final VALUE_RENDER_SPEED:Ljava/lang/Object;

.field public static final VALUE_STROKE_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_STROKE_NORMALIZE:Ljava/lang/Object;

.field public static final VALUE_STROKE_PURE:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_DEFAULT:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

.field public static final VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;


# instance fields
.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;-><init>(I)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_ALPHA_INTERPOLATION:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 38
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_ALPHA_INTERPOLATION:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_ALPHA_INTERPOLATION_DEFAULT:Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_ALPHA_INTERPOLATION:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_ALPHA_INTERPOLATION_SPEED:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_ALPHA_INTERPOLATION:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_ALPHA_INTERPOLATION_QUALITY:Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;-><init>(I)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_ANTIALIASING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 43
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_ANTIALIASING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_ANTIALIASING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_ANTIALIASING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_ANTIALIAS_OFF:Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;-><init>(I)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_COLOR_RENDERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 48
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_COLOR_RENDERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_COLOR_RENDER_DEFAULT:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_COLOR_RENDERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_COLOR_RENDER_SPEED:Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_COLOR_RENDERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_COLOR_RENDER_QUALITY:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;-><init>(I)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_DITHERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 53
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_DITHERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_DITHER_DEFAULT:Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_DITHERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_DITHER_DISABLE:Ljava/lang/Object;

    .line 55
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_DITHERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_DITHER_ENABLE:Ljava/lang/Object;

    .line 57
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;-><init>(I)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_FRACTIONALMETRICS:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 58
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_FRACTIONALMETRICS:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_FRACTIONALMETRICS_DEFAULT:Ljava/lang/Object;

    .line 59
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_FRACTIONALMETRICS:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    .line 60
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_FRACTIONALMETRICS:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_FRACTIONALMETRICS_OFF:Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;-><init>(I)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_INTERPOLATION:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 63
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_INTERPOLATION:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_INTERPOLATION_BICUBIC:Ljava/lang/Object;

    .line 64
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_INTERPOLATION:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_INTERPOLATION_BILINEAR:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_INTERPOLATION:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    .line 67
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;-><init>(I)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_RENDERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 68
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_RENDERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_RENDER_DEFAULT:Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_RENDERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_RENDER_SPEED:Ljava/lang/Object;

    .line 70
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_RENDERING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_RENDER_QUALITY:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;-><init>(I)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_STROKE_CONTROL:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 73
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_STROKE_CONTROL:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_STROKE_DEFAULT:Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_STROKE_CONTROL:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_STROKE_NORMALIZE:Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_STROKE_CONTROL:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_STROKE_PURE:Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyImpl;-><init>(I)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_TEXT_ANTIALIASING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 78
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_TEXT_ANTIALIASING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_TEXT_ANTIALIAS_DEFAULT:Ljava/lang/Object;

    .line 79
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_TEXT_ANTIALIASING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    .line 80
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;

    sget-object v1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->KEY_TEXT_ANTIALIASING:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints$KeyValue;-><init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;)V

    sput-object v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->VALUE_TEXT_ANTIALIAS_OFF:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/awt/geom/misc/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Lcom/itextpdf/awt/geom/misc/RenderingHints;->putAll(Ljava/util/Map;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/awt/geom/misc/RenderingHints;)V
    .locals 2
    .parameter "hints"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 98
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 164
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints;-><init>(Ljava/util/Map;)V

    .line 203
    .local v0, clone:Lcom/itextpdf/awt/geom/misc/RenderingHints;
    iget-object v1, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, v0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    .line 204
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 172
    instance-of v7, p1, Ljava/util/Map;

    if-nez v7, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object v3, p1

    .line 176
    check-cast v3, Ljava/util/Map;

    .line 177
    .local v3, m:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/misc/RenderingHints;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 178
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<*>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 182
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 185
    .local v1, key:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;
    invoke-virtual {p0, v1}, Lcom/itextpdf/awt/geom/misc/RenderingHints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 186
    .local v4, v1:Ljava/lang/Object;
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 187
    .local v5, v2:Ljava/lang/Object;
    if-nez v4, :cond_3

    if-nez v5, :cond_0

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 191
    .end local v1           #key:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;
    .end local v4           #v1:Ljava/lang/Object;
    .end local v5           #v2:Ljava/lang/Object;
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 101
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    invoke-virtual {v0, p2}, Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;->isCompatibleValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<**>;"
    instance-of v5, p1, Lcom/itextpdf/awt/geom/misc/RenderingHints;

    if-eqz v5, :cond_1

    .line 126
    iget-object v5, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    check-cast p1, Lcom/itextpdf/awt/geom/misc/RenderingHints;

    .end local p1           #m:Ljava/util/Map;,"Ljava/util/Map<**>;"
    iget-object v6, p1, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 140
    :cond_0
    return-void

    .line 128
    .restart local p1       #m:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 130
    .local v0, entries:Ljava/util/Set;,"Ljava/util/Set<*>;"
    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 132
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;

    .line 135
    .local v3, key:Lcom/itextpdf/awt/geom/misc/RenderingHints$Key;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 136
    .local v4, val:Ljava/lang/Object;
    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/awt/geom/misc/RenderingHints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RenderingHints["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/itextpdf/awt/geom/misc/RenderingHints;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
