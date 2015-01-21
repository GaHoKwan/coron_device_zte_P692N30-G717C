.class public Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;
.super Landroid/preference/Preference;
.source "SourceFile"


# static fields
.field private static final a:[J


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Landroid/media/AudioManager;

.field private a:Landroid/os/Vibrator;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private a:Landroid/widget/SeekBar;

.field private a:Landroid/widget/TextView;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-boolean v3, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:Z

    .line 53
    const-string v0, "VolumeBarPreference"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/content/Context;

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iput-boolean v4, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:Z

    .line 58
    :cond_0
    sget-object v0, Lapr;->VolumeBarPreference:[I

    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:I

    .line 61
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Z

    .line 62
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Ljava/lang/String;

    .line 63
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:Ljava/lang/String;

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    new-instance v0, Lanp;

    invoke-direct {v0, p0}, Lanp;-><init>(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 117
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)I
    .locals 1
    .parameter

    .prologue
    .line 23
    iget v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput p1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/media/AudioManager;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/media/AudioManager;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Landroid/os/Vibrator;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/os/Vibrator;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;Landroid/os/Vibrator;)Landroid/os/Vibrator;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/os/Vibrator;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Z

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->persistInt(I)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->persistBoolean(Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic a()[J
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:[J

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 192
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/os/Vibrator;

    .line 193
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 199
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar;

    .line 201
    :cond_0
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/view/View;

    .line 202
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/TextView;

    .line 203
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:Landroid/widget/TextView;

    .line 204
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput p1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I

    .line 188
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindView,mSeekValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Ljava/lang/String;)V

    .line 127
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 129
    const v0, 0x7f0700c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar;

    .line 130
    const v0, 0x7f070217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f070218

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:I

    if-eq v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 136
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 138
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 145
    const-string v0, "onCreateView"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 148
    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:Landroid/view/View;

    return-object v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    const-string v0, "onGetDefaultValue"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSetInitialValue,restorePersistedValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&defaultValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_1

    .line 170
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSeekValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a(Ljava/lang/String;)V

    .line 184
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    if-eqz p2, :cond_0

    .line 173
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I

    goto :goto_0

    .line 175
    :cond_0
    iput v2, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I

    goto :goto_0

    .line 178
    :cond_1
    if-eqz p2, :cond_2

    .line 179
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I

    goto :goto_0

    .line 181
    :cond_2
    iput v2, p0, Lcom/sohu/inputmethod/settings/ui/VolumeBarPreference;->a:I

    goto :goto_0
.end method
