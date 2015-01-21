.class public Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static a:Z


# instance fields
.field private a:I

.field private a:Laaq;

.field private a:Lage;

.field private a:Laia;

.field private a:Lajq;

.field a:Landroid/view/View$OnClickListener;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

.field private final a:Ljava/lang/String;

.field b:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private final b:Z

.field private c:Landroid/view/View;

.field private c:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/view/View;

.field private d:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, "SogouIMETabActivity"

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Ljava/lang/String;

    .line 34
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Z

    .line 36
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/RelativeLayout;

    .line 38
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/RelativeLayout;

    .line 39
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    .line 43
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    .line 46
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    .line 47
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    .line 48
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    .line 49
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/RelativeLayout;

    .line 50
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    .line 51
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View;

    .line 52
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/view/View;

    .line 53
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/view/View;

    .line 54
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->e:Landroid/view/View;

    .line 62
    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    .line 132
    new-instance v0, Lauk;

    invoke-direct {v0, p0}, Lauk;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Laul;

    invoke-direct {v0, p0}, Laul;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)Laaq;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)Lage;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    packed-switch p1, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 182
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 183
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 184
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 185
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 189
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 190
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 191
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 195
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 196
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 197
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0

    .line 200
    :pswitch_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 201
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 202
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 203
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 339
    packed-switch p1, :pswitch_data_0

    .line 362
    :goto_0
    return-void

    .line 341
    :pswitch_0
    const-string v0, "install_theme"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 346
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    goto :goto_0

    .line 350
    :pswitch_2
    const-string v0, "install_celldict"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 355
    :pswitch_3
    const-string v0, "install_app"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 357
    :cond_2
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c(Landroid/content/Intent;)V

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(I)V

    .line 212
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lage;

    invoke-direct {v0, p0}, Lage;-><init>(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {v0}, Lage;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {v0, p1}, Lage;->a(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View;

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 228
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    .line 229
    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    .line 231
    return-void

    .line 218
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {v0}, Lage;->i()V

    .line 219
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lafp;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lage;->a(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 234
    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(I)V

    .line 235
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lajq;

    invoke-direct {v0, p0}, Lajq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_5

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    invoke-virtual {v0, p1}, Lajq;->a(Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/view/View;

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    .line 251
    iput v3, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    .line 252
    return-void

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    invoke-virtual {v0}, Lajq;->b()V

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 123
    const v0, 0x7f0701d7

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v1

    invoke-virtual {v1}, Lafp;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 255
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(I)V

    .line 256
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Laaq;

    invoke-direct {v0, p0, p1}, Laaq;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/view/View;

    if-nez v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    invoke-virtual {v0}, Laaq;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/view/View;

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    .line 271
    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    .line 272
    return-void

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    invoke-virtual {v0, p1}, Laaq;->a(Landroid/content/Intent;)V

    .line 262
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    invoke-virtual {v0}, Laaq;->e()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 275
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(I)V

    .line 276
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Laia;

    invoke-direct {v0, p0}, Laia;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->e:Landroid/view/View;

    if-nez v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    invoke-virtual {v0}, Laia;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->e:Landroid/view/View;

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->e:Landroid/view/View;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    .line 291
    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    .line 292
    return-void

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    invoke-virtual {v0}, Laia;->a()V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 297
    sget-boolean v0, Laox;->a:Z

    if-nez v0, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 306
    :goto_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    packed-switch v0, :pswitch_data_0

    .line 328
    :goto_1
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 308
    :pswitch_0
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {v0}, Lage;->l()V

    .line 310
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Landroid/content/Intent;)V

    goto :goto_1

    .line 313
    :pswitch_1
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/view/View;

    .line 314
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    invoke-virtual {v0}, Lajq;->a()V

    .line 315
    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Z)V

    goto :goto_1

    .line 318
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    invoke-virtual {v0}, Laaq;->c()V

    goto :goto_1

    .line 321
    :pswitch_3
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->e:Landroid/view/View;

    .line 322
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    invoke-virtual {v0}, Laia;->i()V

    .line 323
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c(Landroid/content/Intent;)V

    goto :goto_1

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->requestWindowFeature(I)Z

    .line 75
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    const v1, 0x7f030058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->setContentView(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/content/Context;)Laox;

    .line 80
    const v0, 0x7f0701d9

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 81
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0701cf

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/RelativeLayout;

    .line 84
    const v0, 0x7f0701d8

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    .line 85
    const v0, 0x7f0701d0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/RelativeLayout;

    .line 86
    const v0, 0x7f0701d2

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/LinearLayout;

    .line 87
    const v0, 0x7f0701d1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/LinearLayout;

    .line 88
    const v0, 0x7f0701d3

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/LinearLayout;

    .line 89
    const v0, 0x7f0701d5

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    .line 90
    const v0, 0x7f0701d4

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 92
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setId(I)V

    .line 94
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setId(I)V

    .line 96
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 98
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    sget-boolean v0, Laox;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_0

    .line 101
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 108
    :goto_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b()V

    .line 116
    :goto_1
    iput-object p0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 117
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select_tab"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(ILandroid/content/Intent;)V

    .line 119
    invoke-static {}, Laox;->b()V

    .line 120
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 496
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 497
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sohu/inputmethod/settings/InstallThemeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->stopService(Landroid/content/Intent;)Z

    .line 501
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {v0}, Lage;->m()V

    .line 504
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {v0}, Lage;->k()V

    .line 505
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    invoke-virtual {v0}, Lajq;->k()V

    .line 511
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    invoke-virtual {v0}, Laaq;->d()V

    .line 517
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    .line 520
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    invoke-virtual {v0}, Laia;->j()V

    .line 523
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    invoke-virtual {v0}, Laia;->c()V

    .line 524
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    .line 526
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 527
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 528
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 529
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->e:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 530
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 531
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 533
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/RelativeLayout;

    .line 534
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/RelativeLayout;

    .line 535
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/RelativeLayout;

    .line 536
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/RelativeLayout;

    .line 538
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/widget/LinearLayout;

    .line 539
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/widget/LinearLayout;

    .line 540
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/widget/LinearLayout;

    .line 541
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/widget/LinearLayout;

    .line 543
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    .line 544
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    .line 545
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    .line 547
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View$OnClickListener;

    .line 548
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View$OnClickListener;

    .line 550
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Landroid/view/View;

    .line 551
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b:Landroid/view/View;

    .line 552
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->c:Landroid/view/View;

    .line 553
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->d:Landroid/view/View;

    .line 554
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;

    .line 555
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->e:Landroid/view/View;

    .line 556
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a()V

    .line 557
    invoke-static {}, Laox;->a()V

    .line 558
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 366
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 369
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mFlags"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 370
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 371
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 372
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    .line 376
    :goto_0
    if-eqz v0, :cond_1

    .line 390
    :goto_1
    return v1

    .line 372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    .line 378
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    packed-switch v0, :pswitch_data_0

    .line 390
    :cond_2
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 380
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {v0, p1, p2}, Lage;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 383
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    invoke-virtual {v0, p1, p2}, Lajq;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 332
    const-string v0, "onNewIntent is called"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Ljava/lang/String;)V

    .line 333
    const-string v0, "select_tab"

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 334
    invoke-direct {p0, v0, p1}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(ILandroid/content/Intent;)V

    .line 335
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 336
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 395
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 396
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    invoke-virtual {v0}, Laaq;->b()V

    .line 399
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    packed-switch v0, :pswitch_data_0

    .line 418
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 401
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {v0}, Lage;->j()V

    goto :goto_0

    .line 406
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    invoke-virtual {v0}, Lajq;->i()V

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 423
    const-string v0, "[[onResume]]"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Ljava/lang/String;)V

    .line 424
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->b()V

    .line 425
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    packed-switch v0, :pswitch_data_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 427
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {v0}, Lage;->i()V

    .line 428
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aX:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aX:I

    .line 430
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aZ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aZ:I

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    invoke-virtual {v0}, Lajq;->a()Z

    move-result v0

    goto :goto_1

    .line 436
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laaq;

    invoke-virtual {v0}, Laaq;->a()V

    goto :goto_0

    .line 439
    :pswitch_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    invoke-virtual {v0}, Laia;->a()V

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:I

    packed-switch v0, :pswitch_data_0

    .line 481
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 483
    return-void

    .line 463
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lage;

    invoke-virtual {v0}, Lage;->h()V

    goto :goto_0

    .line 467
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Lajq;

    invoke-virtual {v0}, Lajq;->j()V

    goto :goto_0

    .line 474
    :pswitch_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Laia;

    invoke-virtual {v0}, Laia;->b()V

    goto :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/SogouIMETabActivity;->a:Z

    .line 454
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 456
    return-void
.end method
