.class public Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;
.super Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;
.source "ColorPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;,
        Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;
    }
.end annotation


# static fields
.field private static final HISTORY_COLORS:Ljava/lang/String; = "history_colors"

.field private static final HISTORY_COLOR_COUNT:I = 0x3

.field private static final HISTORY_COLOR_KEYS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBaruView:Landroid/widget/ImageView;

.field private mColor:I

.field private mColorView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mHistColorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHistColorViews:[Landroid/widget/ImageView;

.field private mHistoryLayout:Landroid/widget/LinearLayout;

.field private mHsv:[F

.field private mHueView:Lzte/com/cn/cloudnotepad/skitch/view/HueView;

.field private mIsColorPlateVisible:Ljava/lang/Boolean;

.field private mKerkerView:Landroid/widget/ImageView;

.field private mLen:I

.field private mPaddingView:Landroid/view/View;

.field private mPanaView:Landroid/widget/ImageView;

.field private mPlateLayout:Landroid/widget/LinearLayout;

.field private mSuggestColorClickListener:Landroid/view/View$OnClickListener;

.field private mSuggestLayoutGroup1:Landroid/widget/LinearLayout;

.field private mSuggestLayoutGroup2:Landroid/widget/LinearLayout;

.field private mTvToggle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-string v0, "ColorPanel"

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->TAG:Ljava/lang/String;

    .line 203
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hist1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hist2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hist3"

    aput-object v2, v0, v1

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->HISTORY_COLOR_KEYS:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mIsColorPlateVisible:Ljava/lang/Boolean;

    .line 135
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$1;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mSuggestColorClickListener:Landroid/view/View$OnClickListener;

    .line 44
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->init(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mIsColorPlateVisible:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColor(I)V

    return-void
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mBaruView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)I
    .locals 1
    .parameter

    .prologue
    .line 207
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I

    return v0
.end method

.method static synthetic access$4(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I

    return-void
.end method

.method static synthetic access$5(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->setColor(I)V

    return-void
.end method

.method static synthetic access$6(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)[F
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F

    return-object v0
.end method

.method static synthetic access$7(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)Lzte/com/cn/cloudnotepad/skitch/view/HueView;
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHueView:Lzte/com/cn/cloudnotepad/skitch/view/HueView;

    return-object v0
.end method

.method static synthetic access$8(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mKerkerView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$9(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->toggleColorPlate()V

    return-void
.end method

.method private addColor(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;
    .locals 10
    .parameter "layout"
    .parameter "color"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 111
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 112
    const v7, 0x7f08001a

    .line 111
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 113
    .local v4, len:I
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 114
    const v7, 0x7f08001b

    .line 113
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 115
    .local v5, margin:I
    new-instance v2, Landroid/widget/ImageView;

    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v2, image:Landroid/widget/ImageView;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mSuggestColorClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 118
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    const/high16 v6, 0x3f80

    .line 118
    invoke-direct {v3, v8, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 120
    .local v3, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 121
    invoke-virtual {v3, v5, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 124
    :cond_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 127
    const/16 v6, 0x8

    new-array v0, v6, [F

    fill-array-data v0, :array_0

    .line 128
    .local v0, arrayOfFloat:[F
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v6, v0, v9, v9}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 129
    .local v1, drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    return-object v2

    .line 127
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 48
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initView()V

    .line 50
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColorPlate()V

    .line 51
    return-void
.end method

.method private initColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 221
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I

    .line 222
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 223
    return-void
.end method

.method private initColorGroup(Landroid/widget/LinearLayout;I)V
    .locals 3
    .parameter "layout"
    .parameter "resId"

    .prologue
    .line 102
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 104
    .local v0, colors:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 107
    return-void

    .line 105
    :cond_0
    aget v2, v0, v1

    invoke-direct {p0, p1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->addColor(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initColorPlate()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F

    .line 215
    const/high16 v0, -0x100

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColor(I)V

    .line 216
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColorPlateView()V

    .line 217
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColorPlateLayout()V

    .line 218
    return-void
.end method

.method private initHistoryColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 254
    new-array v1, v3, [Landroid/widget/ImageView;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorViews:[Landroid/widget/ImageView;

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorList:Ljava/util/ArrayList;

    .line 256
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 260
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->loadHistColorPrefs()V

    .line 261
    return-void

    .line 257
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorViews:[Landroid/widget/ImageView;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistoryLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v4}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->addColor(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;

    move-result-object v2

    aput-object v2, v1, v0

    .line 258
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 54
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mContext:Landroid/content/Context;

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, panelLayout:Landroid/view/View;
    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->addView(Landroid/view/View;)V

    .line 57
    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mTvToggle:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPaddingView:Landroid/view/View;

    .line 59
    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    .line 61
    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mSuggestLayoutGroup1:Landroid/widget/LinearLayout;

    .line 62
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mSuggestLayoutGroup1:Landroid/widget/LinearLayout;

    const v2, 0x7f050001

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColorGroup(Landroid/widget/LinearLayout;I)V

    .line 63
    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mSuggestLayoutGroup2:Landroid/widget/LinearLayout;

    .line 64
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mSuggestLayoutGroup2:Landroid/widget/LinearLayout;

    const v2, 0x7f050002

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColorGroup(Landroid/widget/LinearLayout;I)V

    .line 66
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initViewListener()V

    .line 67
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->updateColorPlate()V

    .line 68
    return-void
.end method

.method private initViewListener()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mTvToggle:Landroid/widget/TextView;

    new-instance v1, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$2;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$2;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method

.method private loadHistColorPrefs()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 275
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mContext:Landroid/content/Context;

    .line 276
    const-string v4, "history_colors"

    .line 275
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 277
    .local v1, hist_prefs:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 283
    return-void

    .line 278
    :cond_0
    sget-object v3, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->HISTORY_COLOR_KEYS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 279
    .local v0, color:I
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 280
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 281
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private saveHistColorPrefs()V
    .locals 6

    .prologue
    .line 264
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mContext:Landroid/content/Context;

    .line 265
    const-string v4, "history_colors"

    const/4 v5, 0x0

    .line 264
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 265
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 267
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 271
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    return-void

    .line 268
    :cond_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 269
    .local v0, color:I
    sget-object v3, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->HISTORY_COLOR_KEYS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 152
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    invoke-interface {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;->setPaintColor(I)V

    .line 155
    :cond_0
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->updateHistColorsWithCurrentColor(I)V

    .line 157
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->dismiss()V

    .line 159
    return-void
.end method

.method private toggleColorPlate()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mIsColorPlateVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mIsColorPlateVisible:Ljava/lang/Boolean;

    .line 98
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->updateColorPlate()V

    .line 99
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateColorPlate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mIsColorPlateVisible:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mTvToggle:Landroid/widget/TextView;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mTvToggle:Landroid/widget/TextView;

    const v1, 0x7f02001b

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 85
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPaddingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mTvToggle:Landroid/widget/TextView;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mTvToggle:Landroid/widget/TextView;

    const v1, 0x7f02001c

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 91
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPaddingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHistColorsWithCurrentColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    const/4 v5, 0x3

    .line 163
    const/4 v1, -0x1

    .line 164
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 170
    :goto_1
    if-nez v1, :cond_2

    .line 188
    :goto_2
    return-void

    .line 165
    :cond_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 166
    move v1, v0

    .line 167
    goto :goto_1

    .line 164
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_2
    const/4 v2, 0x0

    .line 174
    .local v2, value:Ljava/lang/Integer;
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 175
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #value:Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 181
    .restart local v2       #value:Ljava/lang/Integer;
    :goto_3
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 182
    const/4 v0, 0x0

    :goto_4
    if-lt v0, v5, :cond_4

    .line 187
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->saveHistColorPrefs()V

    goto :goto_2

    .line 178
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 179
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorList:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 183
    :cond_4
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorViews:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 184
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorViews:[Landroid/widget/ImageView;

    aget-object v4, v3, v0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistColorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method protected afterAutoDismiss()V
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->setColor(I)V

    .line 404
    return-void
.end method

.method public initColorPlateLayout()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHueView:Lzte/com/cn/cloudnotepad/skitch/view/HueView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->setHue(F)V

    .line 287
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->reCalcPana()V

    .line 288
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->reCalcKeker()V

    .line 289
    return-void
.end method

.method public initColorPlateView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 226
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 227
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 229
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHueView:Lzte/com/cn/cloudnotepad/skitch/view/HueView;

    .line 230
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColorView:Landroid/widget/ImageView;

    .line 231
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mKerkerView:Landroid/widget/ImageView;

    .line 232
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPanaView:Landroid/widget/ImageView;

    .line 234
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mLen:I

    .line 236
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mBaruView:Landroid/widget/ImageView;

    .line 237
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mBaruView:Landroid/widget/ImageView;

    iget v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 239
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHueView:Lzte/com/cn/cloudnotepad/skitch/view/HueView;

    new-instance v1, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$HueTouchListener;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)V

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 240
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColorView:Landroid/widget/ImageView;

    new-instance v1, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$ColorViewTouchListener;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mBaruView:Landroid/widget/ImageView;

    new-instance v1, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$3;

    invoke-direct {v1, p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel$3;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPlateLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHistoryLayout:Landroid/widget/LinearLayout;

    .line 250
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initHistoryColors()V

    .line 251
    return-void
.end method

.method protected reCalcKeker()V
    .locals 6

    .prologue
    .line 376
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mLen:I

    .line 377
    .local v0, len:I
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mKerkerView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 378
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    int-to-float v2, v0

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 379
    int-to-float v2, v0

    const/high16 v3, 0x3f80

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 380
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mKerkerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    return-void
.end method

.method protected reCalcPana()V
    .locals 7

    .prologue
    .line 364
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mLen:I

    .line 365
    .local v0, len:I
    int-to-float v3, v0

    const/high16 v4, 0x3f80

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mHsv:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    const/high16 v6, 0x43b4

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float v1, v3, v4

    .line 366
    .local v1, offset:F
    int-to-float v3, v0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    .line 367
    const/4 v1, 0x0

    .line 369
    :cond_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPanaView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 370
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 371
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mPanaView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mIsColorPlateVisible:Ljava/lang/Boolean;

    .line 387
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->updateColorPlate()V

    .line 388
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->skitchCanvas:Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;

    invoke-interface {v0}, Lzte/com/cn/cloudnotepad/skitch/iface/ISkitch;->getPaintColor()I

    move-result v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColor(I)V

    .line 389
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mBaruView:Landroid/widget/ImageView;

    iget v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 390
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/ColorPanel;->initColorPlateLayout()V

    .line 392
    invoke-super {p0}, Lzte/com/cn/cloudnotepad/skitch/view/AbstractPaintTool;->show()V

    .line 398
    :cond_0
    return-void
.end method
