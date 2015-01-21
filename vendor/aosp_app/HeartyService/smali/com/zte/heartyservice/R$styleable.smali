.class public final Lcom/zte/heartyservice/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleDrawableView:[I = null

.field public static final CircleDrawableView_drawableSrc:I = 0x0

.field public static final CircleView:[I = null

.field public static final CircleView_pressedDrawable:I = 0x4

.field public static final CircleView_text1:I = 0x5

.field public static final CircleView_text2:I = 0x6

.field public static final CircleView_txtColor1:I = 0x0

.field public static final CircleView_txtColor2:I = 0x1

.field public static final CircleView_txtSize1:I = 0x2

.field public static final CircleView_txtSize2:I = 0x3

.field public static final TextPicker:[I = null

.field public static final TextPicker_flingable:I = 0x1

.field public static final TextPicker_maxHeight:I = 0x5

.field public static final TextPicker_maxWidth:I = 0x7

.field public static final TextPicker_minHeight:I = 0x4

.field public static final TextPicker_minWidth:I = 0x6

.field public static final TextPicker_selectionDivider:I = 0x2

.field public static final TextPicker_selectionDividerHeight:I = 0x3

.field public static final TextPicker_solidColor:I = 0x0

.field public static final ZTESwitch:[I = null

.field public static final ZTESwitch_textOff:I = 0x0

.field public static final ZTESwitch_textOn:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5284
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010007

    aput v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/R$styleable;->CircleDrawableView:[I

    .line 5319
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/heartyservice/R$styleable;->CircleView:[I

    .line 5437
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/zte/heartyservice/R$styleable;->TextPicker:[I

    .line 5569
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/zte/heartyservice/R$styleable;->ZTESwitch:[I

    return-void

    .line 5319
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data

    .line 5437
    :array_1
    .array-data 0x4
        0xat 0x0t 0x1t 0x7ft
        0xbt 0x0t 0x1t 0x7ft
        0xct 0x0t 0x1t 0x7ft
        0xdt 0x0t 0x1t 0x7ft
        0xet 0x0t 0x1t 0x7ft
        0xft 0x0t 0x1t 0x7ft
        0x10t 0x0t 0x1t 0x7ft
        0x11t 0x0t 0x1t 0x7ft
    .end array-data

    .line 5569
    :array_2
    .array-data 0x4
        0x8t 0x0t 0x1t 0x7ft
        0x9t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
