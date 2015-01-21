.class public final Lcom/mediatek/videoplayer/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videoplayer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final letv_MyAbsSpinner:[I = null

.field public static final letv_MyAbsSpinner_entries:I = 0x0

.field public static final letv_MyGallery:[I = null

.field public static final letv_MyGallery_animatioDuration:I = 0x1

.field public static final letv_MyGallery_gravity:I = 0x0

.field public static final letv_MyGallery_spacing:I = 0x2

.field public static final letv_MyGallery_unselectedAlpha:I = 0x3

.field public static final letv_PullToRefresh:[I = null

.field public static final letv_PullToRefresh_adapterViewBackground:I = 0x0

.field public static final letv_PullToRefresh_headerBackground:I = 0x1

.field public static final letv_PullToRefresh_headerTextColor:I = 0x2

.field public static final letv_PullToRefresh_mode:I = 0x3

.field public static final letv_Theme:[I = null

.field public static final letv_Theme_entries:I = 0x3

.field public static final letv_Theme_galleryStyle:I = 0x0

.field public static final letv_Theme_gravity:I = 0x2

.field public static final letv_Theme_spinnerStyle:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 783
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010003

    aput v2, v0, v1

    sput-object v0, Lcom/mediatek/videoplayer/R$styleable;->letv_MyAbsSpinner:[I

    .line 812
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/videoplayer/R$styleable;->letv_MyGallery:[I

    .line 919
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/videoplayer/R$styleable;->letv_PullToRefresh:[I

    .line 995
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/videoplayer/R$styleable;->letv_Theme:[I

    return-void

    .line 812
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 919
    :array_1
    .array-data 0x4
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
    .end array-data

    .line 995
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
