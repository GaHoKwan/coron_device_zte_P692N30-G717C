.class public final Lcom/android/ex/chips/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecipientEditTextView:[I = null

.field public static final RecipientEditTextView_chipAlternatesLayout:I = 0x4

.field public static final RecipientEditTextView_chipBackground:I = 0x1

.field public static final RecipientEditTextView_chipBackgroundPressed:I = 0x2

.field public static final RecipientEditTextView_chipDelete:I = 0x3

.field public static final RecipientEditTextView_chipFontSize:I = 0x7

.field public static final RecipientEditTextView_chipHeight:I = 0x6

.field public static final RecipientEditTextView_chipPadding:I = 0x5

.field public static final RecipientEditTextView_invalidChipBackground:I = 0x0

.field public static final SizeBoundingFrameLayout_attributes:[I = null

.field public static final SizeBoundingFrameLayout_attributes_maxHeight:I = 0x1

.field public static final SizeBoundingFrameLayout_attributes_maxWidth:I

.field public static final TogglePrefAttrs:[I

.field public static final TogglePrefAttrs_android_preferenceLayoutChild:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5729
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView:[I

    .line 5825
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/ex/chips/R$styleable;->SizeBoundingFrameLayout_attributes:[I

    .line 5870
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010094

    aput v2, v0, v1

    sput-object v0, Lcom/android/ex/chips/R$styleable;->TogglePrefAttrs:[I

    return-void

    .line 5729
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data

    .line 5825
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
