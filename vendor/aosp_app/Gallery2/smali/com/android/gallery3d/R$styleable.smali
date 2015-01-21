.class public final Lcom/android/gallery3d/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CameraPreference:[I = null

.field public static final CameraPreference_title:I = 0x0

.field public static final CenteredLinearLayout:[I = null

.field public static final CenteredLinearLayout_max_width:I = 0x0

.field public static final IconIndicator:[I = null

.field public static final IconIndicator_icons:I = 0x0

.field public static final IconIndicator_modes:I = 0x1

.field public static final IconListPreference:[I = null

.field public static final IconListPreference_icons:I = 0x0

.field public static final IconListPreference_images:I = 0x3

.field public static final IconListPreference_largeIcons:I = 0x2

.field public static final IconListPreference_singleIcon:I = 0x1

.field public static final ImageButtonTitle:[I = null

.field public static final ImageButtonTitle_android_text:I = 0x1

.field public static final ImageButtonTitle_android_textColor:I = 0x0

.field public static final ListPreference:[I = null

.field public static final ListPreference_defaultValue:I = 0x1

.field public static final ListPreference_entries:I = 0x3

.field public static final ListPreference_entryValues:I = 0x2

.field public static final ListPreference_key:I = 0x0

.field public static final MaxLinearLayout:[I = null

.field public static final MaxLinearLayout_maxHeight:I = 0x0

.field public static final MaxLinearLayout_maxWidth:I = 0x1

.field public static final Theme_GalleryBase:[I = null

.field public static final Theme_GalleryBase_listPreferredItemHeightSmall:I = 0x0

.field public static final Theme_GalleryBase_switchStyle:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 4266
    new-array v0, v4, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/R$styleable;->CameraPreference:[I

    .line 4293
    new-array v0, v4, [I

    const v1, 0x7f01000e

    aput v1, v0, v3

    sput-object v0, Lcom/android/gallery3d/R$styleable;->CenteredLinearLayout:[I

    .line 4324
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/gallery3d/R$styleable;->IconIndicator:[I

    .line 4363
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/gallery3d/R$styleable;->IconListPreference:[I

    .line 4420
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/gallery3d/R$styleable;->ImageButtonTitle:[I

    .line 4451
    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/gallery3d/R$styleable;->ListPreference:[I

    .line 4511
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/gallery3d/R$styleable;->MaxLinearLayout:[I

    .line 4558
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/gallery3d/R$styleable;->Theme_GalleryBase:[I

    return-void

    .line 4324
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 4363
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    .line 4420
    :array_2
    .array-data 0x4
        0x98t 0x0t 0x1t 0x1t
        0x4ft 0x1t 0x1t 0x1t
    .end array-data

    .line 4451
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
    .end array-data

    .line 4511
    :array_4
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
    .end array-data

    .line 4558
    :array_5
    .array-data 0x4
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
