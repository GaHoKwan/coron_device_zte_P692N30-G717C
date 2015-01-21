.class public Lcom/android/camera/manager/ModePicker;
.super Lcom/android/camera/manager/ViewManager;
.source "ModePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/manager/ModePicker$OnModeChangedListener;
    }
.end annotation


# static fields
.field private static final DELAY_MSG_HIDE_MS:I = 0xbb8

.field public static final MODE_ASD:I = 0x5

.field private static final MODE_DEFAULT_MARGINBOTTOM:I = 0x64

.field private static final MODE_DEFAULT_PADDING:I = 0x14

.field public static final MODE_FACE_BEAUTY:I = 0x2

.field public static final MODE_HDR:I = 0x1

.field private static final MODE_ICONS_HIGHTLIGHT:[I = null

.field private static final MODE_ICONS_NORMAL:[I = null

.field private static final MODE_ICON_ORDER:[I = null

.field public static final MODE_LIVE_PHOTO:I = 0x8

.field public static final MODE_MAV:I = 0x4

.field private static final MODE_MIN_COUNTS:I = 0x6

.field public static final MODE_MOTION_TRACK:I = 0x7

.field public static final MODE_NUM_ALL:I = 0xb

.field public static final MODE_PANORAMA:I = 0x3

.field public static final MODE_PANORAMA_SINGLE_3D:I = 0xcb

.field public static final MODE_PHOTO:I = 0x0

.field public static final MODE_PHOTO_3D:I = 0x64

.field public static final MODE_PHOTO_SGINLE_3D:I = 0xc8

.field public static final MODE_SMILE_SHOT:I = 0x6

.field public static final MODE_VIDEO:I = 0x9

.field public static final MODE_VIDEO_3D:I = 0x6d

.field public static final MODE_VIDEO_EFFECT:I = 0xa

.field private static final OFFSET:I = 0x64

.field private static final OFFSET_STEREO_PREVIEW:I = 0x64

.field private static final OFFSET_STEREO_SINGLE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ModePicker"


# instance fields
.field private mCurrentMode:I

.field private mDisplayWidth:I

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mModeChangeListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

.field private mModeMarginBottom:I

.field private mModePreference:Lcom/android/camera/ListPreference;

.field private mModeToast:Lcom/android/camera/manager/OnScreenToast;

.field private final mModeViews:[Lcom/android/camera/ui/RotateImageView;

.field private mModeWidth:I

.field private mScrollView:Lcom/android/camera/ui/ModePickerScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICON_ORDER:[I

    .line 66
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    const v1, 0x7f0200fe

    aput v1, v0, v3

    .line 67
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    const v1, 0x7f0200f1

    aput v1, v0, v4

    .line 68
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    const v1, 0x7f0200fc

    aput v1, v0, v5

    .line 69
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    const v1, 0x7f0200f7

    aput v1, v0, v6

    .line 70
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    const/16 v1, 0x8

    const v2, 0x7f0200f5

    aput v2, v0, v1

    .line 71
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    const v1, 0x7f0200f9

    aput v1, v0, v7

    .line 73
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    .line 75
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    const v1, 0x7f0200ff

    aput v1, v0, v3

    .line 76
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    const v1, 0x7f0200f2

    aput v1, v0, v4

    .line 77
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    const v1, 0x7f0200fd

    aput v1, v0, v5

    .line 78
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    const v1, 0x7f0200f8

    aput v1, v0, v6

    .line 79
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    const/16 v1, 0x8

    const v2, 0x7f0200f6

    aput v2, v0, v1

    .line 80
    sget-object v0, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    const v1, 0x7f0200fb

    aput v1, v0, v7

    .line 81
    return-void

    .line 64
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x2

    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/manager/ViewManager;-><init>(Lcom/android/camera/Camera;)V

    .line 60
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/manager/ModePicker;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    .line 90
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/manager/ModePicker;->mModeMarginBottom:I

    .line 94
    invoke-virtual {p1, p0}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 95
    return-void
.end method

.method private applyListener()V
    .locals 2

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    return-void
.end method

.method private clearListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 201
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v1, v0

    .line 197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    return-void
.end method

.method private getDefaultMarginBottom()I
    .locals 2

    .prologue
    .line 344
    iget v0, p0, Lcom/android/camera/manager/ModePicker;->mDisplayWidth:I

    iget v1, p0, Lcom/android/camera/manager/ModePicker;->mModeWidth:I

    mul-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private getModeWidth()I
    .locals 5

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 336
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 337
    .local v1, bitmapWidth:I
    add-int/lit8 v2, v1, 0x28

    return v2
.end method

.method private getRewriteKeys(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter "key"

    .prologue
    .line 381
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pref_smile_shot_key"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pref_hdr_key"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "pref_asd_key"

    aput-object v3, v1, v2

    .line 383
    .local v1, keys:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 384
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    return-object v1
.end method

.method private highlightCurrentMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    iget v2, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    invoke-virtual {p0, v2}, Lcom/android/camera/manager/ModePicker;->getModeIndex(I)I

    move-result v1

    .line 141
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xb

    if-ge v0, v2, :cond_4

    .line 142
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 143
    if-ne v0, v1, :cond_3

    .line 144
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :cond_0
    :goto_1
    const/4 v2, 0x1

    if-eq v2, v1, :cond_1

    const/4 v2, 0x6

    if-eq v2, v1, :cond_1

    const/4 v2, 0x5

    if-ne v2, v1, :cond_2

    .line 150
    :cond_1
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v2, v2, v4

    sget-object v3, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_HIGHTLIGHT:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/camera/manager/ModePicker;->MODE_ICONS_NORMAL:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 155
    :cond_4
    return-void
.end method

.method private notifyModeChanged()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeChangeListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeChangeListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

    invoke-virtual {p0}, Lcom/android/camera/manager/ModePicker;->getCurrentMode()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/manager/ModePicker$OnModeChangedListener;->onModeChanged(I)V

    .line 245
    :cond_0
    return-void
.end method

.method private rewritePreference([Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "keys"
    .parameter "value"

    .prologue
    .line 392
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 393
    .local v2, key:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 392
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/camera/Camera;->getListPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v4

    .line 397
    .local v4, pref:Lcom/android/camera/ListPreference;
    if-eqz v4, :cond_0

    .line 398
    invoke-virtual {v4, p2}, Lcom/android/camera/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 402
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #pref:Lcom/android/camera/ListPreference;
    :cond_2
    return-void
.end method

.method private setRealMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    .line 102
    const-string v0, "ModePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRealMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mCurrentMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz p1, :cond_0

    if-eq p1, v3, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModePreference:Lcom/android/camera/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/camera/manager/ModePicker;->getRealMode(Lcom/android/camera/ListPreference;)I

    move-result p1

    .line 113
    :cond_1
    iget v0, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    if-eq v0, p1, :cond_3

    .line 114
    iput p1, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    .line 115
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->highlightCurrentMode()V

    .line 116
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->notifyModeChanged()V

    .line 117
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    invoke-virtual {v0}, Lcom/android/camera/manager/OnScreenToast;->cancel()V

    .line 124
    :cond_2
    :goto_0
    return-void

    .line 122
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/camera/manager/ModePicker;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentMode()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    return v0
.end method

.method public getModeIndex(I)I
    .locals 4
    .parameter "mode"

    .prologue
    .line 158
    rem-int/lit8 v0, p1, 0x64

    .line 159
    .local v0, index:I
    const-string v1, "ModePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModeIndex("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return v0
.end method

.method public getRealMode(Lcom/android/camera/ListPreference;)I
    .locals 5
    .parameter "pref"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/camera/manager/ModePicker;->mModePreference:Lcom/android/camera/ListPreference;

    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, mode:I
    if-eqz p1, :cond_1

    .line 361
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->reloadValue()V

    .line 362
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    invoke-virtual {p1}, Lcom/android/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, key:Ljava/lang/String;
    const-string v2, "pref_smile_shot_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 365
    const/4 v1, 0x6

    .line 373
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/manager/ModePicker;->getRewriteKeys(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "off"

    invoke-direct {p0, v2, v3}, Lcom/android/camera/manager/ModePicker;->rewritePreference([Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .end local v0           #key:Ljava/lang/String;
    :cond_1
    const-string v2, "ModePicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRealMode(), pref:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return v1

    .line 366
    .restart local v0       #key:Ljava/lang/String;
    :cond_2
    const-string v2, "pref_hdr_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 367
    const/4 v1, 0x1

    goto :goto_0

    .line 368
    :cond_3
    const-string v2, "pref_asd_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    const/4 v1, 0x5

    goto :goto_0
.end method

.method protected getView()Landroid/view/View;
    .locals 5

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->clearListener()V

    .line 170
    const v2, 0x7f040028

    invoke-virtual {p0, v2}, Lcom/android/camera/manager/ViewManager;->inflate(I)Landroid/view/View;

    move-result-object v1

    .line 171
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ModePickerScrollView;

    iput-object v2, p0, Lcom/android/camera/manager/ModePicker;->mScrollView:Lcom/android/camera/ui/ModePickerScrollView;

    .line 172
    iget-object v3, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v4, 0x0

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v3, v4

    .line 173
    iget-object v3, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/16 v4, 0x8

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v3, v4

    .line 174
    iget-object v3, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v4, 0x7

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v3, v4

    .line 175
    iget-object v3, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v4, 0x2

    const v2, 0x7f0b008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v3, v4

    .line 176
    iget-object v3, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v4, 0x3

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v3, v4

    .line 177
    iget-object v3, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    const/4 v4, 0x4

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    aput-object v2, v3, v4

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 179
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/manager/ModePicker;->mDisplayWidth:I

    .line 180
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->getModeWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/manager/ModePicker;->mModeWidth:I

    .line 181
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->getDefaultMarginBottom()I

    move-result v2

    iput v2, p0, Lcom/android/camera/manager/ModePicker;->mModeMarginBottom:I

    .line 182
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->applyListener()V

    .line 183
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->highlightCurrentMode()V

    .line 184
    return-object v1
.end method

.method public hideToast()V
    .locals 3

    .prologue
    .line 235
    const-string v0, "ModePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideToast(), mModeToast:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    invoke-virtual {v0}, Lcom/android/camera/manager/OnScreenToast;->hideToast()V

    .line 239
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 208
    const-string v1, "ModePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") isEnabled()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view.isEnabled()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", getContext().isFullScreen()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ModePicker;->setEnabled(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 215
    invoke-virtual {p0, v0}, Lcom/android/camera/manager/ModePicker;->setCurrentMode(I)V

    .line 232
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 213
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    .end local v0           #i:I
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/manager/ModePicker;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 328
    const-string v0, "ModePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFullScreenChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mModeToast="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    invoke-virtual {v0}, Lcom/android/camera/manager/OnScreenToast;->cancel()V

    .line 332
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 293
    const-string v0, "ModePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    if-nez v0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/manager/OnScreenToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/manager/OnScreenToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    .line 300
    :goto_0
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    invoke-virtual {v0}, Lcom/android/camera/manager/OnScreenToast;->showToast()V

    .line 303
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/OnScreenToast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 13

    .prologue
    const/16 v8, 0x8

    const/4 v12, -0x2

    const/16 v11, 0x14

    const/4 v7, 0x0

    .line 248
    const-string v6, "ModePicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onRefresh() mCurrentMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/manager/ModePicker;->mCurrentMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/android/camera/ModeChecker;->modesSupportedByCamera(Lcom/android/camera/Camera;I)I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 252
    .local v3, supportModes:I
    const/4 v6, 0x6

    if-gt v3, v6, :cond_0

    .line 253
    iget v6, p0, Lcom/android/camera/manager/ModePicker;->mDisplayWidth:I

    iget v9, p0, Lcom/android/camera/manager/ModePicker;->mModeWidth:I

    mul-int/2addr v9, v3

    sub-int/2addr v6, v9

    add-int/lit8 v9, v3, -0x1

    div-int/2addr v6, v9

    iput v6, p0, Lcom/android/camera/manager/ModePicker;->mModeMarginBottom:I

    .line 255
    :cond_0
    const-string v6, "ModePicker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mModeMarginBottom:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/manager/ModePicker;->mModeMarginBottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v6, p0, Lcom/android/camera/manager/ModePicker;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/android/camera/manager/ModePicker;->mModeMarginBottom:I

    invoke-virtual {v6, v7, v7, v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 258
    const/4 v5, 0x0

    .line 259
    .local v5, visibleCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v6, 0xb

    if-ge v0, v6, :cond_3

    .line 260
    iget-object v6, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    if-eqz v6, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v9

    invoke-static {v6, v9, v0}, Lcom/android/camera/ModeChecker;->getModePickerVisible(Lcom/android/camera/Camera;II)Z

    move-result v4

    .line 262
    .local v4, visible:Z
    iget-object v6, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v9, v6, v0

    if-eqz v4, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v6, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    iget-object v9, p0, Lcom/android/camera/manager/ModePicker;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v6, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v6, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v0

    invoke-virtual {v6, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 266
    if-eqz v4, :cond_1

    .line 267
    add-int/lit8 v5, v5, 0x1

    .line 259
    .end local v4           #visible:Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .restart local v4       #visible:Z
    :cond_2
    move v6, v8

    .line 262
    goto :goto_1

    .line 272
    .end local v4           #visible:Z
    :cond_3
    sget-object v6, Lcom/android/camera/manager/ModePicker;->MODE_ICON_ORDER:[I

    array-length v6, v6

    add-int/lit8 v0, v6, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 273
    sget-object v6, Lcom/android/camera/manager/ModePicker;->MODE_ICON_ORDER:[I

    aget v1, v6, v0

    .line 274
    .local v1, index:I
    iget-object v6, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v1

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 275
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 277
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 278
    iget-object v6, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v6, v6, v1

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    .end local v1           #index:I
    .end local v2           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    const/4 v6, 0x1

    if-gt v5, v6, :cond_6

    .line 284
    iget-object v6, p0, Lcom/android/camera/manager/ModePicker;->mScrollView:Lcom/android/camera/ui/ModePickerScrollView;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 288
    :goto_3
    invoke-direct {p0}, Lcom/android/camera/manager/ModePicker;->highlightCurrentMode()V

    .line 289
    return-void

    .line 272
    .restart local v1       #index:I
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 286
    .end local v1           #index:I
    :cond_6
    iget-object v6, p0, Lcom/android/camera/manager/ModePicker;->mScrollView:Lcom/android/camera/ui/ModePickerScrollView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/camera/manager/ViewManager;->onRelease()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/manager/ModePicker;->mModeToast:Lcom/android/camera/manager/OnScreenToast;

    .line 324
    return-void
.end method

.method public setCurrentMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/android/camera/manager/ModePicker;->getModeIndex(I)I

    move-result v0

    .line 128
    .local v0, realmode:I
    invoke-virtual {p0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isStereoMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isStereoSingle3d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    add-int/lit16 v0, v0, 0xc8

    .line 135
    :cond_0
    :goto_0
    const-string v1, "ModePicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") realmode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0, v0}, Lcom/android/camera/manager/ModePicker;->setRealMode(I)V

    .line 137
    return-void

    .line 132
    :cond_1
    add-int/lit8 v0, v0, 0x64

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/android/camera/manager/ViewManager;->setEnabled(Z)V

    .line 309
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mScrollView:Lcom/android/camera/ui/ModePickerScrollView;

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mScrollView:Lcom/android/camera/ui/ModePickerScrollView;

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/ModePickerScrollView;->setEnabled(Z)V

    .line 312
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 315
    iget-object v1, p0, Lcom/android/camera/manager/ModePicker;->mModeViews:[Lcom/android/camera/ui/RotateImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 312
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_2
    return-void
.end method

.method public setListener(Lcom/android/camera/manager/ModePicker$OnModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/camera/manager/ModePicker;->mModeChangeListener:Lcom/android/camera/manager/ModePicker$OnModeChangedListener;

    .line 165
    return-void
.end method

.method public setModePreference(Lcom/android/camera/ListPreference;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/camera/manager/ModePicker;->mModePreference:Lcom/android/camera/ListPreference;

    .line 350
    return-void
.end method
