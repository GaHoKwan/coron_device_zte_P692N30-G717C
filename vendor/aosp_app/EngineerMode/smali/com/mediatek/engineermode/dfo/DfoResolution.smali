.class public Lcom/mediatek/engineermode/dfo/DfoResolution;
.super Landroid/app/Activity;
.source "DfoResolution.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_QUERY:I = 0x1

.field private static final DIALOG_REBOOT:I = 0x0

.field private static final DIALOG_SET:I = 0x2

.field private static final LCM_HEIGHT:Ljava/lang/String; = "LCM_FAKE_HEIGHT"

.field private static final LCM_WIDTH:Ljava/lang/String; = "LCM_FAKE_WIDTH"

.field private static final MSG_QUERY_DONE:I = 0x0

.field private static final MSG_SET_DONE:I = 0x1

.field private static final MSG_SET_FAILED:I = 0x2

.field private static final RESOLUTION_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "EM/DFO"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mCurrentHeight:I

.field private mCurrentWidth:I

.field private mDefaultHeight:I

.field private mDefaultWidth:I

.field private mDialogQuery:Landroid/app/ProgressDialog;

.field private mDialogSet:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mRadioButtons:[Landroid/widget/RadioButton;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private final mStandardHeight:[I

.field private final mStandardWidth:[I

.field private mToast:Landroid/widget/Toast;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardHeight:[I

    .line 80
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardWidth:[I

    .line 83
    new-array v0, v3, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;

    .line 84
    iput-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mButton:Landroid/widget/Button;

    .line 85
    iput-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogQuery:Landroid/app/ProgressDialog;

    .line 86
    iput-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogSet:Landroid/app/ProgressDialog;

    .line 87
    iput-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mToast:Landroid/widget/Toast;

    .line 89
    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDefaultHeight:I

    .line 90
    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDefaultWidth:I

    .line 91
    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentHeight:I

    .line 92
    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentWidth:I

    .line 93
    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mHeight:I

    .line 94
    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mWidth:I

    .line 95
    iput-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 97
    new-instance v0, Lcom/mediatek/engineermode/dfo/DfoResolution$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/dfo/DfoResolution$1;-><init>(Lcom/mediatek/engineermode/dfo/DfoResolution;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mHandler:Landroid/os/Handler;

    return-void

    .line 79
    :array_0
    .array-data 0x4
        0x80t 0x7t 0x0t 0x0t
        0x0t 0x5t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0x56t 0x3t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
    .end array-data

    .line 80
    :array_1
    .array-data 0x4
        0x38t 0x4t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x1ct 0x2t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogQuery:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/dfo/DfoResolution;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDefaultHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/dfo/DfoResolution;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDefaultWidth:I

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/dfo/DfoResolution;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/dfo/DfoResolution;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/engineermode/dfo/DfoResolution;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/engineermode/dfo/DfoResolution;->setResolution()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/dfo/DfoResolution;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentHeight:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/dfo/DfoResolution;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/dfo/DfoResolution;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardHeight:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/dfo/DfoResolution;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/dfo/DfoResolution;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/dfo/DfoResolution;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardWidth:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/dfo/DfoResolution;)[Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/dfo/DfoResolution;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/dfo/DfoResolution;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/dfo/DfoResolution;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogSet:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/dfo/DfoResolution;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/dfo/DfoResolution;->showToast(I)V

    return-void
.end method

.method private setResolution()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/engineermode/dfo/DfoResolution$3;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/dfo/DfoResolution$3;-><init>(Lcom/mediatek/engineermode/dfo/DfoResolution;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 246
    return-void
.end method

.method private showToast(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dfo/DfoResolution;->showToast(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 295
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mToast:Landroid/widget/Toast;

    .line 296
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 297
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-gez v1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentHeight:I

    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardHeight:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mCurrentWidth:I

    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardWidth:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    .line 204
    const v1, 0x7f080635

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/dfo/DfoResolution;->showToast(I)V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardHeight:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mHeight:I

    .line 208
    iget-object v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardWidth:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mWidth:I

    .line 201
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 213
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v2, 0x7f030033

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 138
    const-string v2, "wallpaper"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    iput-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 140
    const v2, 0x7f0b015c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 141
    iget-object v3, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;

    const v2, 0x7f0b015d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    aput-object v2, v3, v5

    .line 142
    iget-object v3, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;

    const v2, 0x7f0b015e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    aput-object v2, v3, v6

    .line 143
    iget-object v3, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;

    const/4 v4, 0x2

    const v2, 0x7f0b015f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    aput-object v2, v3, v4

    .line 144
    iget-object v3, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;

    const/4 v4, 0x3

    const v2, 0x7f0b0160

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    aput-object v2, v3, v4

    .line 145
    iget-object v3, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;

    const v2, 0x7f0b0161

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    aput-object v2, v3, v7

    .line 146
    const v2, 0x7f0b0162

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mButton:Landroid/widget/Button;

    .line 147
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v1, Lcom/mediatek/engineermode/dfo/DfoNative$DfoDefaultSize;

    invoke-direct {v1}, Lcom/mediatek/engineermode/dfo/DfoNative$DfoDefaultSize;-><init>()V

    .line 151
    .local v1, size:Lcom/mediatek/engineermode/dfo/DfoNative$DfoDefaultSize;
    invoke-static {v1}, Lcom/mediatek/engineermode/dfo/DfoNative;->getDefaultSize(Lcom/mediatek/engineermode/dfo/DfoNative$DfoDefaultSize;)I

    .line 152
    iget v2, v1, Lcom/mediatek/engineermode/dfo/DfoNative$DfoDefaultSize;->height:I

    iput v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDefaultHeight:I

    .line 153
    iget v2, v1, Lcom/mediatek/engineermode/dfo/DfoNative$DfoDefaultSize;->width:I

    iput v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDefaultWidth:I

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 157
    iget v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDefaultHeight:I

    iget-object v3, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardHeight:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDefaultWidth:I

    iget-object v3, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mStandardWidth:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_0

    .line 158
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;

    aget-object v2, v2, v0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mRadioButtons:[Landroid/widget/RadioButton;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    iget-object v2, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 194
    :goto_1
    return-void

    .line 167
    :cond_2
    invoke-virtual {p0, v6}, Landroid/app/Activity;->showDialog(I)V

    .line 168
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/mediatek/engineermode/dfo/DfoResolution$2;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/dfo/DfoResolution$2;-><init>(Lcom/mediatek/engineermode/dfo/DfoResolution;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 250
    packed-switch p1, :pswitch_data_0

    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 252
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08062c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080634

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08063b

    new-instance v2, Lcom/mediatek/engineermode/dfo/DfoResolution$5;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/dfo/DfoResolution$5;-><init>(Lcom/mediatek/engineermode/dfo/DfoResolution;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08063c

    new-instance v2, Lcom/mediatek/engineermode/dfo/DfoResolution$4;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/dfo/DfoResolution$4;-><init>(Lcom/mediatek/engineermode/dfo/DfoResolution;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 277
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogQuery:Landroid/app/ProgressDialog;

    .line 278
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogQuery:Landroid/app/ProgressDialog;

    const v1, 0x7f080636

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogQuery:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 280
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogQuery:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 282
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogSet:Landroid/app/ProgressDialog;

    .line 283
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogSet:Landroid/app/ProgressDialog;

    const v1, 0x7f080637

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogSet:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 285
    iget-object v0, p0, Lcom/mediatek/engineermode/dfo/DfoResolution;->mDialogSet:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
