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
.field public static final LunarDatePicker:[I = null

.field public static final LunarDatePicker_calendarViewShown:I = 0x3

.field public static final LunarDatePicker_endYear:I = 0x1

.field public static final LunarDatePicker_maxDate:I = 0x5

.field public static final LunarDatePicker_minDate:I = 0x4

.field public static final LunarDatePicker_spinnersShown:I = 0x2

.field public static final LunarDatePicker_startYear:I = 0x0

.field public static final RecipientEditTextView:[I = null

.field public static final RecipientEditTextView_chipAlternatesLayout:I = 0x4

.field public static final RecipientEditTextView_chipBackground:I = 0x1

.field public static final RecipientEditTextView_chipBackgroundPressed:I = 0x2

.field public static final RecipientEditTextView_chipDelete:I = 0x3

.field public static final RecipientEditTextView_chipFontSize:I = 0x7

.field public static final RecipientEditTextView_chipHeight:I = 0x6

.field public static final RecipientEditTextView_chipPadding:I = 0x5

.field public static final RecipientEditTextView_invalidChipBackground:I

.field public static final com_android_calendar_MultiStateButton:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2641
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/ex/chips/R$styleable;->LunarDatePicker:[I

    .line 2765
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/ex/chips/R$styleable;->RecipientEditTextView:[I

    .line 2851
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/ex/chips/R$styleable;->com_android_calendar_MultiStateButton:[I

    return-void

    .line 2641
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
    .end array-data

    .line 2765
    :array_1
    .array-data 0x4
        0x7t 0x0t 0x1t 0x7ft
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
