.class public Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

.field private static e:I

.field private static f:I


# instance fields
.field public a:I

.field private a:J

.field public a:Landroid/app/AlertDialog;

.field private a:Landroid/content/BroadcastReceiver;

.field public a:Landroid/os/Handler;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Landroid/widget/Toast;

.field private a:Ljava/lang/Runnable;

.field private a:Ljava/util/List;

.field private a:Z

.field private b:I

.field private b:J

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/Runnable;

.field private b:Z

.field private c:I

.field private c:Landroid/widget/Button;

.field private c:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:I

.field private d:Landroid/widget/Button;

.field private d:Landroid/widget/ImageView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/ImageView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 77
    sput v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:I

    .line 78
    sput v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Ljava/util/List;

    .line 59
    iput v2, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:I

    .line 62
    iput-boolean v3, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Z

    .line 64
    iput v2, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:I

    .line 66
    iput-boolean v3, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Z

    .line 67
    iput v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:I

    .line 75
    iput v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:I

    .line 96
    new-instance v0, Lajf;

    invoke-direct {v0, p0}, Lajf;-><init>(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    .line 195
    new-instance v0, Lajg;

    invoke-direct {v0, p0}, Lajg;-><init>(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Lajh;

    invoke-direct {v0, p0}, Lajh;-><init>(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Ljava/lang/Runnable;

    .line 288
    new-instance v0, Laji;

    invoke-direct {v0, p0}, Laji;-><init>(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:I

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/ImageView;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/TextView;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(I)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f020086

    const v3, 0x7f020082

    const v2, 0x7f020085

    const v1, 0x7f020081

    .line 565
    const v0, 0x7f0700cf

    if-ne p1, v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 567
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 568
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 569
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 571
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 573
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 574
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    const v0, 0x7f0700d2

    if-ne p1, v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 579
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 580
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 581
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 583
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 584
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 585
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 589
    :cond_2
    const v0, 0x7f0700d5

    if-ne p1, v0, :cond_3

    .line 590
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 591
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 592
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 593
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 595
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 596
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 597
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 598
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 601
    :cond_3
    const v0, 0x7f0700d8

    if-ne p1, v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 603
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 604
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 605
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 607
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 608
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 609
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 610
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, -0x1

    const/high16 v4, 0x3f00

    .line 543
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    sget v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:I

    if-eq v0, v1, :cond_2

    sget v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f:I

    if-ne v0, v1, :cond_3

    .line 545
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:I

    .line 547
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sput v0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f:I

    .line 549
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x4248

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 550
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    sget v2, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    mul-float/2addr v2, v3

    sget v3, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Ljava/lang/CharSequence;I)V

    .line 308
    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 312
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 315
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Toast;

    .line 319
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Z

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Z

    return p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:I

    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:I

    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/Button;

    return-object p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:Landroid/widget/ImageView;

    return-object p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 426
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Z

    return p1
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:I

    return v0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:Landroid/widget/ImageView;

    return-object p1
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:I

    return p1
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->f:Landroid/widget/ImageView;

    return-object p1
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public static synthetic e(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic e(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->g:Landroid/widget/ImageView;

    return-object p1
.end method

.method public static synthetic e(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic f(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic f(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->h:Landroid/widget/ImageView;

    return-object p1
.end method

.method public static synthetic g(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->i:Landroid/widget/ImageView;

    return-object p1
.end method

.method public static synthetic h(Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->j:Landroid/widget/ImageView;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    .line 482
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030042

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/LinearLayout;

    .line 484
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/LinearLayout;

    const v1, 0x7f070163

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 485
    const v1, 0x7f0b0329

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 487
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 489
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0b00a9

    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 325
    sparse-switch v0, :sswitch_data_0

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 327
    :sswitch_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dj:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dj:I

    .line 328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 329
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 332
    const v0, 0x7f0b028b

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 336
    :sswitch_1
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 337
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->dl:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->dl:I

    .line 338
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 339
    const v0, 0x7f0b028c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 344
    :sswitch_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dn:I

    .line 345
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->finish()V

    .line 347
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Laox;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Laox;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 353
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 360
    :sswitch_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dp:I

    .line 361
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->finish()V

    .line 363
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Laox;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Laox;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 369
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 375
    :sswitch_4
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iput v3, v1, Lamo;->k:I

    .line 376
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(I)V

    .line 377
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 379
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->c(Ljava/lang/String;)V

    .line 380
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 381
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->n(I)V

    goto/16 :goto_0

    .line 386
    :sswitch_5
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lamo;->k:I

    .line 387
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(I)V

    .line 388
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    const v1, 0x7f0b00aa

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->c(Ljava/lang/String;)V

    .line 391
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v5}, Lcom/sohu/inputmethod/sogou/SogouIME;->n(I)V

    goto/16 :goto_0

    .line 397
    :sswitch_6
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Lamo;->k:I

    .line 398
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(I)V

    .line 399
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 401
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->c(Ljava/lang/String;)V

    .line 402
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->n(I)V

    goto/16 :goto_0

    .line 408
    :sswitch_7
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iput v5, v1, Lamo;->k:I

    .line 409
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(I)V

    .line 410
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    invoke-static {p0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafp;->c(Ljava/lang/String;)V

    .line 413
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->n(I)V

    goto/16 :goto_0

    .line 371
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 355
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0700c8 -> :sswitch_0
        0x7f0700cb -> :sswitch_1
        0x7f0700ce -> :sswitch_3
        0x7f0700cf -> :sswitch_4
        0x7f0700d2 -> :sswitch_5
        0x7f0700d5 -> :sswitch_6
        0x7f0700d8 -> :sswitch_7
        0x7f0700dc -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->requestWindowFeature(I)Z

    .line 84
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->setContentView(I)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:J

    .line 86
    const v0, 0x7f0700c6

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/RelativeLayout;

    .line 87
    const v0, 0x7f0700c4

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    sput-object p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    .line 90
    invoke-static {p0}, Laox;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:I

    .line 92
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a()V

    .line 93
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ej:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ej:I

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 493
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 494
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 496
    iput-object v4, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/LinearLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 499
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 500
    iput-object v4, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/content/BroadcastReceiver;

    .line 501
    iget-wide v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:J

    .line 503
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget-wide v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lamo;->k:Ljava/lang/String;

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 508
    iput-object v4, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Toast;

    .line 511
    :cond_2
    iput-object v4, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/app/AlertDialog;

    .line 512
    iput-object v4, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/LinearLayout;

    .line 514
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 515
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 516
    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    goto :goto_0

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 520
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 521
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 522
    iput-object v4, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/ImageView;

    .line 525
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 526
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    iput-object v4, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/ImageView;

    .line 531
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 532
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b()V

    .line 533
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 534
    iput-object v4, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    .line 537
    :cond_6
    sput-object v4, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;

    .line 539
    invoke-static {}, Laox;->a()V

    .line 540
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 458
    const/4 v1, 0x4

    if-ne v1, p1, :cond_3

    .line 460
    iget v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 461
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v1

    iget v2, v1, Lamo;->di:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lamo;->di:I

    .line 463
    :cond_0
    iget-boolean v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Z

    if-eqz v1, :cond_1

    .line 464
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 475
    :goto_0
    return v0

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 466
    const v1, 0x7f0b0445

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 469
    :cond_2
    const v1, 0x7f0b028d

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 472
    :cond_3
    const/4 v0, 0x3

    if-ne v0, p1, :cond_4

    .line 473
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->finish()V

    .line 475
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x32

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 240
    const-string v0, "SettingGuideActivity.....onResume"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Ljava/lang/String;)V

    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 242
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkSelected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Laox;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDefault  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Laox;->e(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a(Ljava/lang/String;)V

    .line 246
    invoke-static {p0}, Laox;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iput v3, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:I

    .line 248
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030024

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 250
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    const v0, 0x7f0700c7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/ImageView;

    .line 255
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    const v0, 0x7f0700c8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Button;

    .line 257
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iput-boolean v3, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Z

    .line 286
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-static {p0}, Laox;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->finish()V

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:I

    .line 271
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030025

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 273
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 276
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    const v0, 0x7f0700ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/ImageView;

    .line 279
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    const v0, 0x7f0700cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/Button;

    .line 281
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iput-boolean v3, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b()V

    .line 433
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 434
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 4

    .prologue
    .line 439
    iget v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 440
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dk:I

    .line 448
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:J

    .line 450
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget-wide v1, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->a:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lamo;->k:Ljava/lang/String;

    .line 452
    :cond_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->b()V

    .line 453
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 454
    return-void

    .line 441
    :cond_2
    iget v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 442
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dm:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dm:I

    goto :goto_0

    .line 443
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    .line 444
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->do:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->do:I

    goto :goto_0

    .line 445
    :cond_4
    iget v0, p0, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->d:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/guide/SettingGuideActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->dq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->dq:I

    goto :goto_0
.end method
