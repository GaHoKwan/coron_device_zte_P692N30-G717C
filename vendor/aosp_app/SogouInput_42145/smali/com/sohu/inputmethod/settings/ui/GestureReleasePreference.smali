.class public Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:J

.field private a:Landroid/content/Context;

.field private a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private a:Landroid/widget/SeekBar;

.field private a:Landroid/widget/TextView;

.field private a:Ljava/lang/String;

.field private b:I

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/content/Context;

    .line 51
    sget-object v0, Lapr;->VolumeBarPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:I

    .line 53
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Ljava/lang/String;

    .line 54
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    new-instance v0, Lanm;

    invoke-direct {v0, p0}, Lanm;-><init>(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 96
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput p1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:I

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;)J
    .locals 2
    .parameter

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->persistLong(J)Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;)I
    .locals 1
    .parameter

    .prologue
    .line 19
    iget v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 179
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar;

    .line 181
    :cond_0
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 183
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/TextView;

    .line 184
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:Landroid/widget/TextView;

    .line 185
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput p1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->c:I

    .line 160
    return-void
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput p1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->d:I

    .line 167
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput p1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:I

    .line 171
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 107
    const v0, 0x7f0700c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar;

    .line 111
    const v0, 0x7f0700bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0700c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:I

    if-eq v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 124
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 133
    const v1, 0x7f03001f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->getPersistedLong(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:J

    .line 152
    :goto_0
    iget-wide v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:J

    long-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->b:I

    .line 153
    return-void

    .line 150
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sohu/inputmethod/settings/ui/GestureReleasePreference;->a:J

    goto :goto_0
.end method
