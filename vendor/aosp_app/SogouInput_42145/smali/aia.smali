.class public Laia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laiz;
.implements Lalv;


# instance fields
.field private a:I

.field private a:Lahn;

.field private a:Lahr;

.field private a:Lahy;

.field private a:Laiq;

.field private a:Laiv;

.field private a:Laja;

.field private a:Lajd;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/LayoutInflater;

.field a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/view/View;

.field a:Landroid/widget/AbsListView$OnScrollListener;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ListView;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field private a:Ljavax/xml/parsers/SAXParser;

.field private a:Lrr;

.field private a:Lsg;

.field private final a:Z

.field private b:Landroid/app/AlertDialog;

.field private b:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private b:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

.field private b:Ljava/util/List;

.field private b:Z

.field private c:Landroid/app/AlertDialog;

.field private c:Landroid/view/View;

.field private c:Ljava/util/List;

.field private c:Z

.field private d:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "AppRecommendTab"

    iput-object v0, p0, Laia;->a:Ljava/lang/String;

    .line 64
    iput-boolean v3, p0, Laia;->a:Z

    .line 84
    iput-object v1, p0, Laia;->a:Landroid/view/LayoutInflater;

    .line 86
    iput-object v1, p0, Laia;->a:Landroid/view/View;

    .line 87
    iput-object v1, p0, Laia;->b:Landroid/view/View;

    .line 88
    iput-object v1, p0, Laia;->a:Landroid/widget/LinearLayout;

    .line 89
    iput-object v1, p0, Laia;->b:Landroid/widget/LinearLayout;

    .line 90
    iput-object v1, p0, Laia;->a:Landroid/widget/RelativeLayout;

    .line 91
    iput-object v1, p0, Laia;->a:Landroid/widget/ListView;

    .line 92
    iput-object v1, p0, Laia;->a:Landroid/widget/ImageView;

    .line 93
    iput-object v1, p0, Laia;->a:Landroid/app/AlertDialog;

    .line 94
    iput-object v1, p0, Laia;->b:Landroid/app/AlertDialog;

    .line 95
    iput-object v1, p0, Laia;->c:Landroid/app/AlertDialog;

    .line 96
    iput-object v1, p0, Laia;->d:Landroid/app/AlertDialog;

    .line 97
    iput-object v1, p0, Laia;->c:Landroid/view/View;

    .line 106
    iput-object v1, p0, Laia;->a:Ljava/util/List;

    .line 107
    iput-object v1, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Laia;->a:I

    .line 109
    iput-object v1, p0, Laia;->b:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    .line 110
    iput-object v1, p0, Laia;->b:Ljava/util/List;

    .line 111
    iput-object v1, p0, Laia;->a:Laiq;

    .line 112
    iput-object v1, p0, Laia;->a:Lahr;

    .line 113
    iput-object v1, p0, Laia;->a:Laja;

    .line 114
    iput-object v1, p0, Laia;->a:Lajd;

    .line 115
    iput-object v1, p0, Laia;->a:Landroid/graphics/drawable/Drawable;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laia;->c:Ljava/util/List;

    .line 118
    iput-boolean v3, p0, Laia;->b:Z

    .line 119
    iput-boolean v3, p0, Laia;->c:Z

    .line 121
    new-instance v0, Laib;

    invoke-direct {v0, p0}, Laib;-><init>(Laia;)V

    iput-object v0, p0, Laia;->a:Landroid/os/Handler;

    .line 164
    new-instance v0, Laii;

    invoke-direct {v0, p0}, Laii;-><init>(Laia;)V

    iput-object v0, p0, Laia;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 170
    new-instance v0, Laij;

    invoke-direct {v0, p0}, Laij;-><init>(Laia;)V

    iput-object v0, p0, Laia;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 219
    new-instance v0, Lait;

    iget-object v1, p0, Laia;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {v0, p0, v1}, Lait;-><init>(Laia;Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Laia;->a:Landroid/view/View$OnTouchListener;

    .line 223
    iput-object p1, p0, Laia;->b:Landroid/content/Context;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Landroid/content/Context;

    .line 225
    iget-object v0, p0, Laia;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Landroid/view/LayoutInflater;

    .line 227
    new-instance v0, Laiv;

    invoke-direct {v0}, Laiv;-><init>()V

    iput-object v0, p0, Laia;->a:Laiv;

    .line 229
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    new-instance v0, Lrr;

    iget-object v1, p0, Laia;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Laia;->a:Lrr;

    .line 234
    iget-object v0, p0, Laia;->a:Landroid/content/Context;

    invoke-static {v0}, Laja;->a(Landroid/content/Context;)Laja;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Laja;

    .line 235
    iget-object v0, p0, Laia;->a:Landroid/content/Context;

    invoke-static {v0}, Lajd;->a(Landroid/content/Context;)Lajd;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Lajd;

    .line 237
    sget-object v0, Laox;->ab:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 238
    sget-object v0, Laox;->ad:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 239
    sget-object v0, Laox;->ae:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 240
    sget-object v0, Laox;->ac:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 242
    invoke-direct {p0}, Laia;->p()V

    .line 243
    invoke-direct {p0}, Laia;->q()V

    .line 244
    invoke-direct {p0}, Laia;->r()V

    .line 245
    invoke-direct {p0}, Laia;->s()V

    .line 246
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Laia;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Laia;->a:I

    return v0
.end method

.method static synthetic a(Laia;)Lahr;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Lahr;

    return-object v0
.end method

.method static synthetic a(Laia;)Laiq;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Laiq;

    return-object v0
.end method

.method static synthetic a(Laia;)Laja;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Laja;

    return-object v0
.end method

.method static synthetic a(Laia;)Lajd;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Lajd;

    return-object v0
.end method

.method static synthetic a(Laia;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Laia;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Laia;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Laia;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic a(Laia;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->b:Landroid/view/View;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 1074
    if-nez p1, :cond_0

    .line 1075
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1084
    :goto_0
    return-object v0

    .line 1077
    :cond_0
    iget-object v0, p0, Laia;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1078
    const v0, 0x7f07011a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1079
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    const v0, 0x7f07011b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1081
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1082
    const v0, 0x7f07011e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1083
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 1084
    goto :goto_0
.end method

.method static synthetic a(Laia;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    return-object v0
.end method

.method static synthetic a(Laia;Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    return-object p1
.end method

.method static synthetic a(Laia;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Laia;)Lrr;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->a:Lrr;

    return-object v0
.end method

.method static synthetic a(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Laia;->o()V

    return-void
.end method

.method static synthetic a(Laia;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Laia;->b(I)V

    return-void
.end method

.method static synthetic a(Laia;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Laia;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Laiu;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 401
    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p1, Laiu;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 404
    iput-object v1, p1, Laiu;->a:Landroid/widget/ImageView;

    .line 405
    iget-object v0, p1, Laiu;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 406
    iput-object v1, p1, Laiu;->a:Landroid/widget/TextView;

    .line 407
    iget-object v0, p1, Laiu;->b:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 408
    iput-object v1, p1, Laiu;->b:Landroid/widget/TextView;

    .line 409
    iget-object v0, p1, Laiu;->c:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 410
    iput-object v1, p1, Laiu;->c:Landroid/widget/TextView;

    .line 411
    iget-object v0, p1, Laiu;->a:Landroid/widget/LinearLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 412
    iput-object v1, p1, Laiu;->a:Landroid/widget/LinearLayout;

    .line 413
    iget-object v0, p1, Laiu;->d:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 414
    iput-object v1, p1, Laiu;->d:Landroid/widget/TextView;

    .line 417
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 389
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Laiu;

    if-eqz v0, :cond_1

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiu;

    .line 391
    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0, v0}, Laia;->a(Laiu;)V

    .line 395
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 398
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/16 v0, 0x11

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 854
    iget-object v2, p0, Laia;->b:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Laia;->a:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->ac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 859
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 861
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 862
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Laia;->a:Landroid/graphics/drawable/Drawable;

    .line 863
    iget-object v0, p0, Laia;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Laia;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 865
    :cond_2
    iget-object v2, p0, Laia;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 867
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 868
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    new-instance v3, Lahn;

    iget-object v4, p0, Laia;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lahn;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Laia;->a:Lahn;

    .line 870
    iget-object v2, p0, Laia;->a:Lahn;

    invoke-virtual {v2, p0}, Lahn;->a(Lalv;)V

    .line 871
    iget-object v4, p0, Laia;->a:Lahn;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Lsg;

    .line 872
    iget-object v0, p0, Laia;->a:Lsg;

    invoke-virtual {v0, v5}, Lsg;->b(Z)V

    .line 873
    iget-object v0, p0, Laia;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Laia;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    goto/16 :goto_0

    .line 875
    :cond_3
    const-string v0, "has this request,ignore!! "

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 623
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->ab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->af:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 665
    :goto_0
    return v0

    .line 627
    :cond_0
    iget-object v2, p0, Laia;->a:Ljavax/xml/parsers/SAXParser;

    iget-object v3, p0, Laia;->a:Laiv;

    invoke-virtual {v2, v0, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 628
    iget-object v0, p0, Laia;->a:Laiv;

    invoke-virtual {v0}, Laiv;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Ljava/util/List;

    .line 629
    iget-object v0, p0, Laia;->a:Laiv;

    invoke-virtual {v0}, Laiv;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laia;->b:Ljava/util/List;

    .line 630
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    iget-boolean v0, v0, Laiw;->a:Z

    iput-boolean v0, p0, Laia;->b:Z

    .line 633
    :cond_1
    iget-object v0, p0, Laia;->a:Laiv;

    invoke-virtual {v0}, Laiv;->a()Ljava/lang/String;

    move-result-object v0

    .line 634
    iget-object v2, p0, Laia;->a:Landroid/content/Context;

    invoke-static {v2}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v2

    invoke-virtual {v2, v0}, Lafp;->r(Ljava/lang/String;)V

    .line 635
    invoke-direct {p0}, Laia;->n()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 636
    const/4 v0, 0x1

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 639
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 641
    iput-object v4, p0, Laia;->a:Ljava/util/List;

    :cond_2
    move v0, v1

    .line 643
    goto :goto_0

    .line 644
    :catch_1
    move-exception v0

    .line 645
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 646
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 647
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 648
    iput-object v4, p0, Laia;->a:Ljava/util/List;

    :cond_3
    move v0, v1

    .line 650
    goto :goto_0

    .line 651
    :catch_2
    move-exception v0

    .line 652
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 653
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 654
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 655
    iput-object v4, p0, Laia;->a:Ljava/util/List;

    :cond_4
    move v0, v1

    .line 657
    goto :goto_0

    .line 658
    :catch_3
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 661
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 662
    iput-object v4, p0, Laia;->a:Ljava/util/List;

    :cond_5
    move v0, v1

    .line 665
    goto/16 :goto_0
.end method

.method static synthetic a(Laia;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Laia;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Laia;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-boolean p1, p0, Laia;->c:Z

    return p1
.end method

.method static synthetic b(Laia;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic b(Laia;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 806
    iget-object v1, p0, Laia;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030008

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Laia;->b:Landroid/view/View;

    .line 807
    iget-object v1, p0, Laia;->b:Landroid/view/View;

    if-nez v1, :cond_0

    .line 850
    :goto_0
    return-object v0

    .line 808
    :cond_0
    iget-object v0, p0, Laia;->b:Landroid/view/View;

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laia;->a:Landroid/widget/ImageView;

    .line 809
    iget-object v0, p0, Laia;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 810
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 811
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    iget v0, v0, Laiw;->a:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 812
    iget-object v0, p0, Laia;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v0, v0, Laiw;->e:Ljava/lang/String;

    .line 814
    iget-object v1, p0, Laia;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 815
    invoke-direct {p0, v0}, Laia;->a(Ljava/lang/String;)V

    .line 817
    :cond_1
    iget-object v0, p0, Laia;->a:Landroid/widget/ImageView;

    new-instance v1, Laip;

    invoke-direct {v1, p0}, Laip;-><init>(Laia;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 850
    :cond_2
    iget-object v0, p0, Laia;->b:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic b(Laia;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Laia;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Laia;)Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->b:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    return-object v0
.end method

.method static synthetic b(Laia;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    return-object v0
.end method

.method private b(I)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b03f4

    .line 736
    sparse-switch p1, :sswitch_data_0

    .line 793
    :goto_0
    return-void

    .line 738
    :sswitch_0
    iget-object v0, p0, Laia;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 741
    :cond_0
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 742
    iget-object v0, p0, Laia;->a:Laiq;

    invoke-virtual {v0}, Laiq;->notifyDataSetChanged()V

    goto :goto_0

    .line 745
    :sswitch_1
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 749
    :sswitch_2
    iget-object v0, p0, Laia;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 752
    :cond_1
    iget-object v0, p0, Laia;->b:Landroid/content/Context;

    const v1, 0x7f0b0306

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laia;->c:Landroid/view/View;

    .line 753
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 757
    :sswitch_3
    iget-object v0, p0, Laia;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 758
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 760
    :cond_2
    iget-object v0, p0, Laia;->b:Landroid/content/Context;

    const v1, 0x7f0b0307

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laia;->c:Landroid/view/View;

    .line 761
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 765
    :sswitch_4
    iget-object v0, p0, Laia;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 766
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 768
    :cond_3
    iget-object v0, p0, Laia;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laia;->c:Landroid/view/View;

    .line 769
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 772
    :sswitch_5
    iget-object v0, p0, Laia;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 773
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 775
    :cond_4
    iget-object v0, p0, Laia;->b:Landroid/content/Context;

    const v1, 0x7f0b0309

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laia;->c:Landroid/view/View;

    .line 776
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 780
    :sswitch_6
    iget-object v0, p0, Laia;->b:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 781
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 783
    :cond_5
    iget-object v0, p0, Laia;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laia;->c:Landroid/view/View;

    .line 784
    iget-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laia;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 787
    :sswitch_7
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    iget-object v0, v0, Laiw;->e:Ljava/lang/String;

    .line 788
    invoke-direct {p0, v0}, Laia;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 736
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x21 -> :sswitch_3
        0x25 -> :sswitch_4
        0x26 -> :sswitch_5
        0x27 -> :sswitch_1
        0x28 -> :sswitch_6
        0x2b -> :sswitch_7
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic b(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Laia;->m()V

    return-void
.end method

.method static synthetic b(Laia;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Laia;->c(I)V

    return-void
.end method

.method static synthetic b(Laia;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Laia;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1039
    iget-object v0, p0, Laia;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 1040
    iget-object v0, p0, Laia;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v4

    .line 1042
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v1, v3

    .line 1043
    :goto_0
    if-ge v1, v4, :cond_4

    if-ge v1, v5, :cond_4

    .line 1044
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    :goto_1
    if-eq v1, v2, :cond_1

    .line 1050
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    const/4 v2, 0x2

    iput v2, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    .line 1051
    iget-boolean v0, p0, Laia;->b:Z

    if-eqz v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    .line 1052
    :goto_2
    if-lt v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    .line 1053
    sub-int/2addr v0, v3

    .line 1054
    iget-object v1, p0, Laia;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1055
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1056
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiu;

    .line 1057
    const-string v1, "0%"

    .line 1058
    iget-object v2, p0, Laia;->a:Laja;

    invoke-virtual {v2, p1}, Laja;->a(Ljava/lang/String;)Lajb;

    move-result-object v2

    .line 1059
    if-eqz v2, :cond_0

    .line 1060
    iget v1, v2, Lajb;->a:I

    .line 1061
    iget v2, v2, Lajb;->b:I

    .line 1062
    iget-object v3, p0, Laia;->a:Laja;

    int-to-long v4, v2

    int-to-long v1, v1

    invoke-virtual {v3, v4, v5, v1, v2}, Laja;->a(JJ)Ljava/lang/String;

    move-result-object v1

    .line 1064
    :cond_0
    iget-object v2, v0, Laiu;->a:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1065
    iget-object v2, v0, Laiu;->d:Landroid/widget/TextView;

    iget-object v3, p0, Laia;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1066
    iget-object v0, v0, Laiu;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    :cond_1
    return-void

    .line 1043
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1051
    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method static synthetic b(Laia;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Laia;->b:Z

    return v0
.end method

.method private c(I)V
    .locals 6
    .parameter

    .prologue
    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 1000
    iput p1, p0, Laia;->a:I

    .line 1001
    iget-boolean v0, p0, Laia;->b:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1002
    :cond_0
    iget-object v0, p0, Laia;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laia;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1003
    if-ltz p1, :cond_3

    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 1004
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iput-object v0, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    .line 1005
    iget-object v0, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1007
    :cond_1
    iget-object v0, p0, Laia;->b:Landroid/content/Context;

    const v1, 0x7f0b03f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1008
    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b03f8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v5, v5, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1009
    iget-object v2, p0, Laia;->b:Landroid/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v0, p0, Laia;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v0, p0, Laia;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1013
    :cond_2
    iget-object v0, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1014
    iget-object v0, p0, Laia;->a:Laja;

    iget-object v1, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    iget-object v2, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget v2, v2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    invoke-virtual {v0, v1, v2}, Laja;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1016
    iget-object v1, p0, Laia;->a:Lajd;

    iget-object v2, p0, Laia;->a:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v2, v2, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lajd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1017
    const-string v0, "apk file not exist!"

    invoke-direct {p0, v0}, Laia;->c(Ljava/lang/String;)V

    .line 1022
    :cond_3
    return-void
.end method

.method static synthetic c(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Laia;->l()V

    return-void
.end method

.method static synthetic c(Laia;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Laia;->d(I)V

    return-void
.end method

.method static synthetic c(Laia;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Laia;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1435
    iget-object v0, p0, Laia;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1436
    return-void
.end method

.method private d(I)V
    .locals 6
    .parameter

    .prologue
    .line 1025
    iget-boolean v0, p0, Laia;->b:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1026
    :cond_0
    iget-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laia;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1027
    if-ltz p1, :cond_1

    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1028
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iput-object v0, p0, Laia;->b:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    .line 1029
    iget-object v0, p0, Laia;->b:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1030
    iget-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b03f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b03f6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Laia;->b:Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v5, v5, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1032
    iget-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1036
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1444
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Laia;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Laia;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laia;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Laia;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 380
    invoke-direct {p0, v1}, Laia;->a(Landroid/view/View;)V

    .line 381
    invoke-static {v1}, Laox;->a(Landroid/view/View;)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    iput-object v2, p0, Laia;->a:Landroid/widget/ListView;

    .line 386
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x10

    .line 589
    iget-object v2, p0, Laia;->a:Landroid/content/Context;

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 590
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 591
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 592
    const/16 v1, 0x26

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 593
    iget-object v1, p0, Laia;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v2, p0, Laia;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 598
    new-instance v2, Lahy;

    iget-object v3, p0, Laia;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lahy;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Laia;->a:Lahy;

    .line 599
    iget-object v2, p0, Laia;->a:Lahy;

    invoke-virtual {v2, p0}, Lahy;->a(Lalv;)V

    .line 600
    iget-object v4, p0, Laia;->a:Lahy;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Lsg;

    .line 601
    iget-object v0, p0, Laia;->a:Lsg;

    invoke-virtual {v0, v5}, Lsg;->b(Z)V

    .line 602
    iget-object v0, p0, Laia;->a:Lahy;

    iget-object v1, p0, Laia;->a:Lsg;

    invoke-virtual {v0, v1}, Lahy;->c(Lsg;)V

    .line 603
    iget-object v0, p0, Laia;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Laia;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    goto :goto_0

    .line 605
    :cond_2
    iget-object v1, p0, Laia;->a:Landroid/content/Context;

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->a(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Lsg;

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find the request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laia;->a:Lsg;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Laia;->a:Lsg;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Laia;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lahy;

    iput-object v0, p0, Laia;->a:Lahy;

    .line 610
    iget-object v0, p0, Laia;->a:Lsg;

    invoke-virtual {v0, p0}, Lsg;->a(Lalv;)V

    .line 611
    iget-object v0, p0, Laia;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()V

    goto :goto_0
.end method

.method private m()V
    .locals 6

    .prologue
    .line 669
    const-string v0, "Load APP status is called!!"

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 671
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 672
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v3, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    .line 673
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget v4, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    .line 674
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v5, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->g:Ljava/lang/String;

    .line 675
    iget-object v0, p0, Laia;->a:Lajd;

    invoke-virtual {v0, v5, v3, v4}, Lajd;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 676
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iput v3, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->d:I

    .line 678
    const/4 v0, 0x2

    if-eq v3, v0, :cond_0

    const/4 v0, 0x1

    if-ne v3, v0, :cond_1

    .line 679
    :cond_0
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0, v5}, Laja;->a(Ljava/lang/String;)Laix;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {v0, p0}, Laix;->a(Laiz;)V

    .line 671
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 685
    :cond_2
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 686
    return-void
.end method

.method private n()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 693
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->ad:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 695
    if-eqz v4, :cond_3

    .line 696
    array-length v5, v4

    .line 697
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v3, v2

    .line 698
    :goto_0
    if-ge v3, v5, :cond_3

    .line 699
    aget-object v7, v4, v3

    move v1, v2

    .line 701
    :goto_1
    if-ge v1, v6, :cond_0

    .line 702
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v8, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->b:Ljava/lang/String;

    .line 703
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget v9, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->c:I

    .line 704
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/settings/apprecommend/RecommendAppInfo;->f:Ljava/lang/String;

    .line 705
    invoke-static {v8, v9, v0}, Lahr;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 710
    :cond_0
    if-lt v1, v6, :cond_1

    .line 711
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laox;->ad:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 698
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 701
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 716
    :cond_3
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 719
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 720
    iget-boolean v1, p0, Laia;->c:Z

    if-nez v1, :cond_0

    .line 721
    invoke-direct {p0}, Laia;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    iput v2, v0, Landroid/os/Message;->what:I

    .line 723
    const/16 v1, 0x25

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 724
    iget-object v1, p0, Laia;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 733
    :goto_0
    return-void

    .line 729
    :cond_0
    invoke-direct {p0}, Laia;->m()V

    .line 730
    iput v2, v0, Landroid/os/Message;->what:I

    .line 731
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 732
    iget-object v1, p0, Laia;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 881
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laid;

    invoke-direct {v2, p0}, Laid;-><init>(Laia;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b0393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laic;

    invoke-direct {v2, p0}, Laic;-><init>(Laia;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Landroid/app/AlertDialog;

    .line 909
    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 912
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laif;

    invoke-direct {v2, p0}, Laif;-><init>(Laia;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b0393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laie;

    invoke-direct {v2, p0}, Laie;-><init>(Laia;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Laia;->b:Landroid/app/AlertDialog;

    .line 960
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 963
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laih;

    invoke-direct {v2, p0}, Laih;-><init>(Laia;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b0393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laig;

    invoke-direct {v2, p0}, Laig;-><init>(Laia;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    .line 987
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 990
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b032c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laia;->b:Landroid/content/Context;

    const v2, 0x7f0b02ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laia;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Laia;->d:Landroid/app/AlertDialog;

    .line 996
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Laia;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Laia;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Laia;->a:Landroid/view/View;

    .line 251
    iget-object v0, p0, Laia;->a:Landroid/view/View;

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laia;->a:Landroid/widget/LinearLayout;

    .line 252
    iget-object v0, p0, Laia;->a:Landroid/view/View;

    const v1, 0x7f070040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laia;->b:Landroid/widget/LinearLayout;

    .line 254
    iget-object v0, p0, Laia;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Laia;->a:Landroid/widget/RelativeLayout;

    .line 255
    iget-object v0, p0, Laia;->a:Landroid/widget/RelativeLayout;

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Laia;->a:Landroid/widget/ListView;

    .line 256
    new-instance v0, Laiq;

    invoke-direct {v0, p0}, Laiq;-><init>(Laia;)V

    iput-object v0, p0, Laia;->a:Laiq;

    .line 257
    new-instance v0, Lahr;

    invoke-direct {v0}, Lahr;-><init>()V

    iput-object v0, p0, Laia;->a:Lahr;

    .line 258
    iget-object v0, p0, Laia;->a:Landroid/widget/ListView;

    iget-object v1, p0, Laia;->a:Laiq;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 259
    iget-object v0, p0, Laia;->a:Landroid/widget/ListView;

    new-instance v1, Laik;

    invoke-direct {v1, p0}, Laik;-><init>(Laia;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    iget-object v0, p0, Laia;->a:Landroid/widget/ListView;

    new-instance v1, Lail;

    invoke-direct {v1, p0}, Lail;-><init>(Laia;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 278
    iget-object v0, p0, Laia;->a:Landroid/widget/ListView;

    iget-object v1, p0, Laia;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 279
    iget-object v0, p0, Laia;->a:Landroid/widget/ListView;

    iget-object v1, p0, Laia;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    iget-object v0, p0, Laia;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ck:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ck:I

    .line 282
    new-instance v0, Laim;

    invoke-direct {v0, p0}, Laim;-><init>(Laia;)V

    .line 287
    iget-object v1, p0, Laia;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 290
    new-instance v0, Lain;

    invoke-direct {v0, p0}, Lain;-><init>(Laia;)V

    .line 312
    iget-object v1, p0, Laia;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 315
    :cond_0
    iget-object v0, p0, Laia;->a:Landroid/view/View;

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 322
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 510
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 511
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 512
    iget-object v1, p0, Laia;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 513
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 579
    const-string v0, "============download error================"

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0, p1}, Laja;->a(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0, p1}, Laja;->c(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 584
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 522
    const-string v0, "=========prepare download==============="

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0, p1, p2, p3}, Laja;->a(Ljava/lang/String;II)V

    .line 525
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Laia;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laia;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Laia;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 327
    :cond_0
    iget-object v0, p0, Laia;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laia;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Laia;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 329
    :cond_1
    iget-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 331
    :cond_2
    iget-object v0, p0, Laia;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Laia;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v0, p0, Laia;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 334
    :cond_3
    iget-object v0, p0, Laia;->a:Lahr;

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Laia;->a:Lahr;

    invoke-virtual {v0}, Lahr;->c()V

    .line 338
    :cond_4
    iget-object v0, p0, Laia;->a:Lahy;

    if-eqz v0, :cond_5

    .line 339
    iget-object v0, p0, Laia;->a:Lahy;

    invoke-virtual {v0}, Lahy;->a()V

    .line 342
    :cond_5
    iget-object v0, p0, Laia;->a:Lsg;

    if-eqz v0, :cond_6

    .line 343
    iget-object v0, p0, Laia;->a:Lsg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsg;->a(Lalv;)V

    .line 345
    :cond_6
    iget-object v0, p0, Laia;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 346
    if-eqz v0, :cond_7

    .line 347
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 351
    :cond_8
    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    const-string v0, "=========start download==============="

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0, p1, p2, p3}, Laja;->a(Ljava/lang/String;II)V

    .line 534
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public c(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0, p1, p2, p3}, Laja;->a(Ljava/lang/String;II)V

    .line 540
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0, p1}, Laja;->c(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 542
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 543
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 544
    iget-object v1, p0, Laia;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 545
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 490
    return-void
.end method

.method public d(Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 550
    const-string v0, "=========pause download==============="

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0, p1}, Laja;->a(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 555
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method public e(Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    const-string v0, "=========cancel download==============="

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0, p1}, Laja;->a(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 565
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public f(Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 570
    const-string v0, "=========finish download==============="

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalBytes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laia;->d(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0, p1}, Laja;->a(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 575
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 518
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Laia;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 364
    iput-boolean v2, p0, Laia;->b:Z

    .line 365
    iget-object v0, p0, Laia;->a:Laiq;

    invoke-virtual {v0}, Laiq;->notifyDataSetChanged()V

    .line 373
    :goto_0
    return-void

    .line 367
    :cond_0
    iput-boolean v2, p0, Laia;->b:Z

    .line 368
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw;

    iget-boolean v0, v0, Laiw;->a:Z

    iput-boolean v0, p0, Laia;->b:Z

    .line 371
    :cond_1
    iget-object v0, p0, Laia;->a:Laiq;

    invoke-virtual {v0}, Laiq;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    invoke-direct {p0}, Laia;->k()V

    .line 422
    iget-object v0, p0, Laia;->a:Laja;

    invoke-virtual {v0}, Laja;->a()V

    .line 424
    iget-object v0, p0, Laia;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laia;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Laia;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 427
    :cond_0
    iput-object v1, p0, Laia;->a:Landroid/app/AlertDialog;

    .line 429
    iget-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Laia;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 432
    :cond_1
    iput-object v1, p0, Laia;->c:Landroid/app/AlertDialog;

    .line 433
    iget-object v0, p0, Laia;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Laia;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    iget-object v0, p0, Laia;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 436
    :cond_2
    iput-object v1, p0, Laia;->a:Landroid/graphics/drawable/Drawable;

    .line 437
    iget-object v0, p0, Laia;->a:Lahr;

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p0, Laia;->a:Lahr;

    invoke-virtual {v0}, Lahr;->d()V

    .line 439
    iput-object v1, p0, Laia;->a:Lahr;

    .line 441
    :cond_3
    iget-object v0, p0, Laia;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 443
    new-instance v0, Laio;

    invoke-direct {v0, p0}, Laio;-><init>(Laia;)V

    .line 450
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 452
    :cond_4
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 453
    iget-object v0, p0, Laia;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 455
    :cond_5
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 456
    iget-object v0, p0, Laia;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 458
    :cond_6
    iget-object v0, p0, Laia;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 459
    iget-object v0, p0, Laia;->b:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 460
    iget-object v0, p0, Laia;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 485
    return-void
.end method
