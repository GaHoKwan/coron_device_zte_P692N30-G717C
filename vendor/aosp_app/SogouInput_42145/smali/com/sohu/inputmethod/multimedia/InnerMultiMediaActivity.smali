.class public Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static a:F

.field public static b:F

.field public static c:F

.field public static d:F

.field public static e:F


# instance fields
.field private a:I

.field private a:Landroid/view/View;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

.field private a:Ljava/lang/String;

.field public a:Ltm;

.field public a:Ltu;

.field private a:Luc;

.field public a:Luv;

.field private a:Z

.field private b:I

.field private b:Landroid/view/View;

.field private b:Z

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/high16 v0, 0x3f80

    sput v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:F

    .line 57
    const/high16 v0, 0x3ec0

    sput v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:F

    .line 58
    const v0, 0x3ef1eb85

    sput v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->c:F

    .line 60
    const v0, 0x3f333333

    sput v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->d:F

    .line 61
    const v0, 0x3dcccccd

    sput v0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->e:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltm;

    .line 50
    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltu;

    .line 51
    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luv;

    .line 76
    iput-boolean v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Z

    .line 77
    iput-boolean v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Z

    .line 255
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 215
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->getWindow()Landroid/view/Window;

    .line 219
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_4

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_3

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    sget v2, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:F

    mul-float/2addr v0, v2

    :goto_0
    float-to-int v2, v0

    .line 223
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v4, :cond_5

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget v4, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:F

    mul-float/2addr v0, v4

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 225
    iput v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:I

    .line 226
    iput v2, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:I

    .line 227
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 228
    iget v2, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 229
    iget v2, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 230
    iget-object v2, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 233
    iget v2, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v2, :cond_6

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    sget v2, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->d:F

    mul-float/2addr v0, v2

    :goto_2
    float-to-int v2, v0

    .line 236
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v4, :cond_7

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget v1, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->e:F

    mul-float/2addr v0, v1

    :goto_3
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 237
    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 238
    iput v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->c:I

    .line 239
    iput v2, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->d:I

    .line 240
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->c:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 241
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->d:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 242
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltm;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltm;

    invoke-virtual {v0}, Ltm;->c()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltu;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltu;

    invoke-virtual {v0}, Ltu;->e()V

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luv;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luv;

    invoke-virtual {v0}, Luv;->e()V

    .line 253
    :cond_2
    return-void

    .line 219
    :cond_3
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget v2, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:F

    mul-float/2addr v0, v2

    goto/16 :goto_0

    :cond_4
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    goto/16 :goto_0

    .line 223
    :cond_5
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    sget v4, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->c:F

    mul-float/2addr v0, v4

    goto/16 :goto_1

    .line 235
    :cond_6
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    sget v2, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->d:F

    mul-float/2addr v0, v2

    goto :goto_2

    .line 236
    :cond_7
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    sget v1, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->e:F

    mul-float/2addr v0, v1

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:I

    return v0
.end method

.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->finish()V

    .line 186
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltm;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltm;

    invoke-virtual {v0}, Ltm;->a()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltu;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltu;

    invoke-virtual {v0}, Ltu;->d()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luv;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luv;

    invoke-virtual {v0}, Luv;->d()V

    .line 195
    :cond_2
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltm;

    .line 196
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltu;

    .line 197
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luv;

    .line 198
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    .line 199
    iget-boolean v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Z

    if-nez v0, :cond_3

    .line 200
    const v0, 0x7f040013

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->overridePendingTransition(II)V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Z

    .line 203
    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 305
    iget-object v3, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    return-void

    :cond_0
    move v0, v2

    .line 305
    goto :goto_0

    :cond_1
    move v1, v2

    .line 306
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    if-nez p2, :cond_1

    .line 264
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    invoke-interface {v0}, Luc;->i()V

    .line 292
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 269
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 271
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    if-eqz v0, :cond_0

    .line 272
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    .line 273
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b035e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 274
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    invoke-interface {v0}, Luc;->i()V

    goto :goto_0

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Luc;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Luc;->a(Z)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 297
    iget-boolean v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Z

    if-nez v0, :cond_0

    .line 298
    const v0, 0x7f040013

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->overridePendingTransition(II)V

    .line 299
    iput-boolean v2, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Z

    .line 301
    :cond_0
    iput-boolean v2, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Z

    .line 302
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b()V

    .line 136
    sget-object v0, Ltm;->a:Ltm;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Ltm;->a:Ltm;

    invoke-virtual {v0}, Ltm;->d()V

    .line 138
    :cond_0
    sget-object v0, Ltu;->a:Ltu;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Ltu;->a:Ltu;

    invoke-virtual {v0}, Ltu;->b()V

    .line 140
    :cond_1
    sget-object v0, Luv;->a:Luv;

    if-eqz v0, :cond_2

    .line 141
    sget-object v0, Luv;->a:Luv;

    invoke-virtual {v0}, Luv;->b()V

    .line 142
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->finish()V

    .line 122
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->hideWindow()V

    .line 88
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->finish()V

    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "transfertype"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 93
    if-ne v1, v4, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 99
    const v0, 0x7f030029

    invoke-virtual {v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->setContentView(Landroid/view/View;)V

    .line 101
    const v0, 0x7f0700e2

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/widget/RelativeLayout;

    .line 102
    const v0, 0x7f0700e3

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f0700e4

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/view/View;

    .line 104
    const v0, 0x7f0700e5

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/multimedia/TimerRecView;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    .line 105
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/sohu/inputmethod/multimedia/TimerRecView;->setVisibility(I)V

    .line 106
    if-ne v1, v6, :cond_3

    .line 107
    const v0, 0x7f03002f

    invoke-virtual {v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Landroid/view/View;

    .line 108
    new-instance v0, Ltm;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Landroid/view/View;

    invoke-direct {v0, p0, v1, v6}, Ltm;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltm;

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 109
    :cond_3
    if-ne v1, v8, :cond_4

    .line 110
    const v0, 0x7f030030

    invoke-virtual {v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Landroid/view/View;

    .line 111
    new-instance v0, Luv;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Landroid/view/View;

    invoke-direct {v0, p0, v1, v8}, Luv;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luv;

    .line 112
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luv;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    goto :goto_1

    .line 113
    :cond_4
    if-ne v1, v7, :cond_5

    .line 114
    const v0, 0x7f030030

    invoke-virtual {v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Landroid/view/View;

    .line 115
    new-instance v0, Ltu;

    iget-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Landroid/view/View;

    invoke-direct {v0, p0, v1, v7}, Ltu;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltu;

    .line 116
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltu;

    iput-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    goto :goto_1

    .line 118
    :cond_5
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    const v0, 0x7f0700e2

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 173
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltm;

    .line 174
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Ltu;

    .line 175
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Luc;

    .line 176
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/widget/RelativeLayout;

    .line 177
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/widget/LinearLayout;

    .line 178
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Landroid/view/View;

    .line 179
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b:Landroid/view/View;

    .line 180
    iput-object v1, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Lcom/sohu/inputmethod/multimedia/TimerRecView;

    .line 181
    invoke-static {}, Laox;->a()V

    .line 182
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 147
    invoke-direct {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->b()V

    .line 148
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 153
    sget-object v0, Ltu;->a:Ltu;

    if-nez v0, :cond_2

    sget-object v0, Luv;->a:Luv;

    if-nez v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()V

    .line 160
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-static {}, Ltu;->g()V

    .line 162
    invoke-static {}, Ltm;->j()V

    .line 163
    invoke-static {}, Luv;->g()V

    .line 165
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a:Z

    .line 166
    return-void

    .line 155
    :cond_2
    sget-object v0, Ltu;->a:Ltu;

    if-eqz v0, :cond_3

    sget-object v0, Ltu;->a:Ltu;

    invoke-virtual {v0}, Ltu;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()V

    goto :goto_0

    .line 157
    :cond_3
    sget-object v0, Luv;->a:Luv;

    if-eqz v0, :cond_0

    sget-object v0, Luv;->a:Luv;

    invoke-virtual {v0}, Luv;->a()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/sohu/inputmethod/multimedia/InnerMultiMediaActivity;->a()V

    goto :goto_0
.end method
