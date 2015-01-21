.class public Lcom/hf/UI/MapActivity;
.super Landroid/app/Activity;
.source "MapActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DIALOG_QUERYING:I = 0x3e9

.field private static final LADAR_TU_NAME:Ljava/lang/String; = "ladar_tu.jpg"

.field private static final URL_LADAR:Ljava/lang/String; = "http://app.weathercn.com/app/leida/leida_L.jpg"

.field private static final URL_YUN_TU:Ljava/lang/String; = "http://app.weathercn.com/app/yuntu/yuntu_L.jpg"

.field private static final YUN_TU_NAME:Ljava/lang/String; = "run_tu.jpg"


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mLeidaBitmap:Landroid/graphics/Bitmap;

.field private mNetSwitch:Z

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mYunTuBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/hf/UI/MapActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$1(Lcom/hf/UI/MapActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hf/UI/MapActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/hf/UI/MapActivity;->showHttpDialog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/hf/UI/MapActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hf/UI/MapActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/hf/UI/MapActivity;->setBitmap(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/hf/UI/MapActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/hf/UI/MapActivity;->mNetSwitch:Z

    return-void
.end method

.method static synthetic access$6(Lcom/hf/UI/MapActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/hf/UI/MapActivity;->mYunTuBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private loadBitmap()V
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/hf/UI/MapActivity$1;

    invoke-direct {v0, p0}, Lcom/hf/UI/MapActivity$1;-><init>(Lcom/hf/UI/MapActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 111
    invoke-virtual {v0, v1}, Lcom/hf/UI/MapActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void
.end method

.method private setBitmap(Ljava/lang/String;Z)V
    .locals 2
    .parameter "url"
    .parameter "isLeida"

    .prologue
    .line 214
    new-instance v0, Lcom/hf/UI/MapActivity$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/hf/UI/MapActivity$6;-><init>(Lcom/hf/UI/MapActivity;ZLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 253
    invoke-virtual {v0, v1}, Lcom/hf/UI/MapActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 254
    return-void
.end method

.method private showHttpDialog(Ljava/lang/String;Z)V
    .locals 4
    .parameter "url"
    .parameter "isLeida"

    .prologue
    .line 160
    invoke-static {p0}, Lcom/hf/utils/Util;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 161
    .local v1, net_type:I
    if-eqz v1, :cond_0

    .line 162
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 163
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hf/UI/MapActivity;->setBitmap(Ljava/lang/String;Z)V

    .line 210
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-boolean v2, p0, Lcom/hf/UI/MapActivity;->mNetSwitch:Z

    if-eqz v2, :cond_2

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/hf/UI/MapActivity;->setBitmap(Ljava/lang/String;Z)V

    goto :goto_0

    .line 172
    :cond_2
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 173
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    const v2, 0x7f0200b7

    invoke-virtual {v0, v2}, Lcom/hf/UI/HFDialog;->setIcon(I)V

    .line 174
    const v2, 0x7f08009f

    invoke-virtual {v0, v2}, Lcom/hf/UI/HFDialog;->setTitle(I)V

    .line 175
    const v2, 0x7f0800a0

    invoke-virtual {v0, v2}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/hf/UI/HFDialog;->setTitlePaddingBottom(I)V

    .line 177
    const/high16 v2, 0x104

    new-instance v3, Lcom/hf/UI/MapActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/hf/UI/MapActivity$3;-><init>(Lcom/hf/UI/MapActivity;Lcom/hf/UI/HFDialog;)V

    invoke-virtual {v0, v2, v3}, Lcom/hf/UI/HFDialog;->setNegativeButton(ILandroid/view/View$OnClickListener;)V

    .line 185
    const v2, 0x104000a

    new-instance v3, Lcom/hf/UI/MapActivity$4;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/hf/UI/MapActivity$4;-><init>(Lcom/hf/UI/MapActivity;Lcom/hf/UI/HFDialog;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/hf/UI/HFDialog;->setNeutralButton(ILandroid/view/View$OnClickListener;)V

    .line 195
    const v2, 0x7f0800a1

    new-instance v3, Lcom/hf/UI/MapActivity$5;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/hf/UI/MapActivity$5;-><init>(Lcom/hf/UI/MapActivity;Lcom/hf/UI/HFDialog;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/hf/UI/HFDialog;->setPositiveButton(ILandroid/view/View$OnClickListener;)V

    .line 209
    invoke-virtual {v0}, Lcom/hf/UI/HFDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dialog_net_notice_switch"

    iget-boolean v2, p0, Lcom/hf/UI/MapActivity;->mNetSwitch:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/hf/UI/MapActivity;->setResult(ILandroid/content/Intent;)V

    .line 303
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 305
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 257
    const v1, 0x7f0b0083

    if-ne p2, v1, :cond_3

    .line 258
    iget-object v1, p0, Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 260
    :try_start_0
    const-string v1, "ladar_tu.jpg"

    invoke-virtual {p0, v1}, Lcom/hf/UI/MapActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020070

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    const-string v1, "http://app.weathercn.com/app/leida/leida_L.jpg"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/hf/UI/MapActivity;->showHttpDialog(Ljava/lang/String;Z)V

    .line 295
    :cond_0
    :goto_1
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 268
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_1
    iget-object v1, p0, Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hf/UI/MapActivity;->mLeidaBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 275
    :cond_3
    const v1, 0x7f0b0084

    if-ne p2, v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/hf/UI/MapActivity;->mYunTuBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 279
    :try_start_1
    const-string v1, "run_tu.jpg"

    invoke-virtual {p0, v1}, Lcom/hf/UI/MapActivity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/UI/MapActivity;->mYunTuBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 283
    :goto_2
    iget-object v1, p0, Lcom/hf/UI/MapActivity;->mYunTuBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 284
    iget-object v1, p0, Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f020071

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    const-string v1, "http://app.weathercn.com/app/yuntu/yuntu_L.jpg"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/hf/UI/MapActivity;->showHttpDialog(Ljava/lang/String;Z)V

    goto :goto_1

    .line 280
    :catch_1
    move-exception v0

    .line 281
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_4
    iget-object v1, p0, Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hf/UI/MapActivity;->mYunTuBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 291
    :cond_5
    iget-object v1, p0, Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/hf/UI/MapActivity;->mYunTuBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 310
    .local v1, id:I
    const v2, 0x7f0b0002

    if-ne v1, v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/hf/UI/MapActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 312
    .local v0, checkedId:I
    const v2, 0x7f0b0083

    if-ne v0, v2, :cond_1

    .line 313
    const-string v2, "http://app.weathercn.com/app/leida/leida_L.jpg"

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/hf/UI/MapActivity;->showHttpDialog(Ljava/lang/String;Z)V

    .line 318
    .end local v0           #checkedId:I
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local v0       #checkedId:I
    :cond_1
    const v2, 0x7f0b0084

    if-ne v0, v2, :cond_0

    .line 315
    const-string v2, "http://app.weathercn.com/app/yuntu/yuntu_L.jpg"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/hf/UI/MapActivity;->showHttpDialog(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f0a004b

    const/4 v7, 0x7

    const/4 v8, 0x0

    .line 55
    invoke-virtual {p0, v7}, Lcom/hf/UI/MapActivity;->requestWindowFeature(I)Z

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onError(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onError(Landroid/content/Context;)V

    .line 59
    const v6, 0x7f03001c

    invoke-virtual {p0, v6}, Lcom/hf/UI/MapActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/hf/UI/MapActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 62
    .local v5, window:Landroid/view/Window;
    const v6, 0x7f03000b

    invoke-virtual {v5, v7, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 63
    const v6, 0x7f0b0032

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 64
    .local v4, title:Landroid/widget/TextView;
    const v6, 0x7f08002a

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 66
    invoke-virtual {p0}, Lcom/hf/UI/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const-string v6, "dialog_net_notice_switch"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/hf/UI/MapActivity;->mNetSwitch:Z

    .line 69
    const v6, 0x7f0b0033

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 70
    .local v2, mLayout:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 71
    .local v1, mBtn:Landroid/widget/ImageButton;
    const v6, 0x7f020080

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 72
    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 73
    invoke-virtual {p0}, Lcom/hf/UI/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/hf/UI/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1, v8, v6, v8, v7}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 74
    const v6, 0x7f0b0002

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setId(I)V

    .line 75
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    const v6, 0x7f0b0082

    invoke-virtual {p0, v6}, Lcom/hf/UI/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, Lcom/hf/UI/MapActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 81
    iget-object v6, p0, Lcom/hf/UI/MapActivity;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 82
    const v6, 0x7f0b0081

    invoke-virtual {p0, v6}, Lcom/hf/UI/MapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;

    .line 83
    iget-object v6, p0, Lcom/hf/UI/MapActivity;->mImageView:Landroid/widget/ImageView;

    new-instance v7, Lcom/hf/UI/MulitPointTouchListener;

    invoke-direct {v7}, Lcom/hf/UI/MulitPointTouchListener;-><init>()V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    invoke-direct {p0}, Lcom/hf/UI/MapActivity;->loadBitmap()V

    .line 86
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 131
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    .line 133
    :try_start_0
    new-instance v0, Lcom/hf/UI/HFDialog;

    invoke-direct {v0, p0}, Lcom/hf/UI/HFDialog;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, dialog:Lcom/hf/UI/HFDialog;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setStyle([I)V

    .line 135
    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setContent(I)V

    .line 136
    new-instance v1, Lcom/hf/UI/MapActivity$2;

    invoke-direct {v1, p0}, Lcom/hf/UI/MapActivity$2;-><init>(Lcom/hf/UI/MapActivity;)V

    invoke-virtual {v0, v1}, Lcom/hf/UI/HFDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #dialog:Lcom/hf/UI/HFDialog;
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v1

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 125
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onPause(Landroid/content/Context;)V

    .line 126
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onPause(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 117
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$Umeng;->onResume(Landroid/content/Context;)V

    .line 118
    invoke-static {p0}, Lcom/hf/utils/StatisticsUtil$BaiDu;->onResume(Landroid/content/Context;)V

    .line 119
    return-void
.end method
