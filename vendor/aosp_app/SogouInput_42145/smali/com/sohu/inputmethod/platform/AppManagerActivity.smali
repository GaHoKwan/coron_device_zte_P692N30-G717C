.class public Lcom/sohu/inputmethod/platform/AppManagerActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lxw;


# instance fields
.field private a:I

.field public a:Landroid/os/Handler;

.field a:Landroid/view/View$OnClickListener;

.field private a:Landroid/view/View;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/HashMap;

.field private a:Ljava/util/List;

.field private a:Ljavax/xml/parsers/SAXParser;

.field private a:Lwy;

.field private a:Lxg;

.field private a:Lxx;

.field private a:Lyv;

.field private a:Lyw;

.field private final a:Z

.field private b:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/util/List;

.field private c:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private c:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/ImageView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const-string v0, "AppManagerActivity"

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/lang/String;

    .line 37
    iput-boolean v2, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Z

    .line 51
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    .line 52
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyv;

    .line 53
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/HashMap;

    .line 54
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    .line 55
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    .line 58
    iput v2, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:I

    .line 67
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/view/View;

    .line 68
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/view/View;

    .line 69
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/view/View;

    .line 70
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/ImageView;

    .line 71
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/ImageView;

    .line 72
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/LinearLayout;

    .line 73
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/LinearLayout;

    .line 75
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/ImageView;

    .line 76
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->d:Landroid/widget/ImageView;

    .line 77
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->e:Landroid/widget/ImageView;

    .line 80
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->f:Landroid/widget/ImageView;

    .line 82
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/RelativeLayout;

    .line 83
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/RelativeLayout;

    .line 84
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    .line 85
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->d:Landroid/widget/RelativeLayout;

    .line 86
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/LinearLayout;

    .line 88
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxg;

    .line 89
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lwy;

    .line 91
    new-instance v0, Lwv;

    invoke-direct {v0, p0}, Lwv;-><init>(Lcom/sohu/inputmethod/platform/AppManagerActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    .line 272
    new-instance v0, Lwx;

    invoke-direct {v0, p0}, Lwx;-><init>(Lcom/sohu/inputmethod/platform/AppManagerActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Lwy;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lwy;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Lxg;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxg;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 297
    packed-switch p1, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 299
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 300
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 301
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 302
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 303
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 304
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 307
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 308
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 309
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 310
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 311
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 312
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 355
    packed-switch p1, :pswitch_data_0

    .line 367
    :goto_0
    return-void

    .line 357
    :pswitch_0
    const-string v0, "showCurrentView DOWNLOADED_TAB"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a()V

    goto :goto_0

    .line 361
    :pswitch_1
    const-string v0, "showCurrentView DOWNLOADING_TAB"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b()V

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->d()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppManagerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 649
    if-eqz p2, :cond_0

    .line 650
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 261
    const-string v0, "addAppWaitingToInfoList ==============enter"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0}, Lxx;->a()Ljava/util/LinkedList;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    .line 264
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v3

    .line 266
    new-instance v0, Lwn;

    iget-object v1, v3, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget v2, v3, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    iget-object v3, v3, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lwn;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_0
    const-string v0, "addAppWaitingToInfoList ==============leave"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    .line 583
    :try_start_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->aj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->ak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyw;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 584
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyw;

    invoke-virtual {v0}, Lyw;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    .line 585
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->e()V

    .line 586
    const-string v0, "parse################################################OK!"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 590
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    .line 595
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/AppManagerActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 659
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 660
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    return-void
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 598
    const-string v0, "Load APP status is called!!"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    if-nez v0, :cond_1

    .line 636
    :cond_0
    return-void

    .line 600
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v2, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    .line 603
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    .line 604
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v5, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preAppStatus=============================="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyv;

    invoke-virtual {v0, v4, v2, v3}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appStatus================================="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 609
    if-ne v5, v8, :cond_2

    const/4 v6, 0x6

    if-ne v0, v6, :cond_2

    .line 610
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyv;

    invoke-virtual {v0, v2}, Lyv;->b(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyv;

    invoke-virtual {v0, v4, v2, v3}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 612
    const-string v6, "preAppStatus == PlatformAppInfoManager.APP_STATUS_NEED_INSTALL && appStatus == PlatformAppInfoManager.APP_STATUS_NEED_ADD"

    invoke-direct {p0, v6}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 613
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appStatus==========="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 615
    :cond_2
    const/4 v6, 0x7

    if-ne v5, v6, :cond_3

    if-ne v0, v8, :cond_3

    .line 617
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, v2, v3}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 618
    iget-object v5, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyv;

    invoke-virtual {v5, v0}, Lyv;->c(Ljava/lang/String;)Z

    .line 619
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, v4}, Lxx;->d(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyv;

    invoke-virtual {v0, v4, v2, v3}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 621
    const-string v2, "preAppStatus == PlatformAppInfoManager.APP_STATUS_HAS_ADD && appStatus == PlatformAppInfoManager.APP_STATUS_NEED_INSTALL"

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    :cond_3
    move v2, v0

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appStatus ============="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 624
    packed-switch v2, :pswitch_data_0

    .line 633
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_1
    move v1, v0

    .line 635
    goto/16 :goto_0

    .line 629
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iput v2, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 630
    add-int/lit8 v0, v1, 0x1

    .line 631
    goto :goto_1

    .line 624
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 4

    .prologue
    .line 639
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 641
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    invoke-direct {p0, v3, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)V

    .line 641
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 646
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 655
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    return-object v0
.end method

.method public a()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 320
    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(I)V

    .line 321
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lwy;

    invoke-virtual {v0, p0}, Lwy;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/view/View;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 326
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/view/View;

    .line 327
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 334
    :goto_0
    iput v3, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:I

    .line 335
    return-void

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 574
    :cond_0
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 569
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    .line 571
    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 485
    const-string v0, "============download error================"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 488
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 489
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 490
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->c(Ljava/lang/String;)V

    .line 494
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Ljava/lang/String;I)V

    .line 495
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 496
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 432
    const-string v0, "=========prepare download==============="

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v3

    .line 436
    iget-object v7, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    new-instance v0, Lwn;

    iget-object v1, v3, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget v2, v3, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    iget-object v3, v3, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lwn;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, p1, p2, p3}, Lxx;->a(Ljava/lang/String;II)V

    .line 442
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 443
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 509
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    .line 518
    :goto_0
    return v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 512
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    .line 514
    iget-object v0, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 518
    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 338
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(I)V

    .line 339
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxg;

    invoke-virtual {v0}, Lxg;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/view/View;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/view/View;

    .line 345
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 352
    :goto_0
    iput v2, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:I

    .line 353
    return-void

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 545
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    .line 547
    iget-object v2, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 548
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    .line 549
    iput p2, v0, Lwn;->b:I

    .line 550
    const/4 v0, 0x2

    iput v0, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    const-string v0, "=========start download==============="

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 450
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

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, p1, p2, p3}, Lxx;->a(Ljava/lang/String;II)V

    .line 453
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 576
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    if-nez v0, :cond_0

    move v0, v1

    .line 577
    :goto_0
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    if-nez v2, :cond_1

    .line 578
    :goto_1
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b02cc

    invoke-virtual {p0, v4}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b02cd

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1
.end method

.method public c(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, p1, p2, p3}, Lxx;->a(Ljava/lang/String;II)V

    .line 459
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->c(Ljava/lang/String;)V

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b(Ljava/lang/String;I)V

    .line 461
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 462
    return-void
.end method

.method public d(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->g(Ljava/lang/String;II)V

    .line 469
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 470
    return-void
.end method

.method public e(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==================onCancelDownload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method public f(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0, p1, p2, p3}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->h(Ljava/lang/String;II)V

    .line 480
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 481
    return-void
.end method

.method public g(Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 527
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwn;

    .line 529
    iget-object v2, v0, Lwn;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 530
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v1

    .line 531
    iput p2, v0, Lwn;->d:I

    .line 532
    iput p3, v0, Lwn;->b:I

    .line 533
    const/4 v0, 0x3

    iput v0, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    goto :goto_0
.end method

.method public h(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    .line 560
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/lang/String;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request code is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result code is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 400
    packed-switch p2, :pswitch_data_0

    .line 428
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 402
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 403
    if-eqz v0, :cond_0

    .line 404
    const-string v1, "APP_RESULT_CONTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 405
    const-string v2, "APP_RESULT_PACKAGE_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    const-string v3, "APP_RESULT_APP_NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return content is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\npackage name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 409
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 410
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 411
    const-string v5, "APP_RESULT_CONTENT"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v1, "APP_RESULT_PACKAGE_NAME"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "APP_RESULT_APP_NAME"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 415
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->setResult(ILandroid/content/Intent;)V

    .line 416
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->finish()V

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->requestWindowFeature(I)Z

    .line 192
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->setContentView(I)V

    .line 193
    const v0, 0x7f070031

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/LinearLayout;

    .line 194
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/LinearLayout;

    new-instance v1, Lww;

    invoke-direct {v1, p0}, Lww;-><init>(Lcom/sohu/inputmethod/platform/AppManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    new-instance v0, Lyw;

    invoke-direct {v0}, Lyw;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyw;

    .line 203
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/HashMap;

    .line 209
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/RelativeLayout;

    .line 210
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/RelativeLayout;

    .line 212
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->e:Landroid/widget/ImageView;

    .line 215
    const v0, 0x7f07002d

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->f:Landroid/widget/ImageView;

    .line 216
    const v0, 0x7f07002f

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->d:Landroid/widget/RelativeLayout;

    .line 217
    const v0, 0x7f07002e

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c:Landroid/widget/RelativeLayout;

    .line 218
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/ImageView;

    .line 219
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/ImageView;

    .line 220
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/LinearLayout;

    .line 221
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/LinearLayout;

    .line 223
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 224
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 226
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    new-instance v0, Lxg;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lxg;-><init>(Lcom/sohu/inputmethod/platform/AppManagerActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxg;

    .line 229
    new-instance v0, Lwy;

    invoke-direct {v0, p0}, Lwy;-><init>(Lcom/sohu/inputmethod/platform/AppManagerActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lwy;

    .line 232
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    if-nez v0, :cond_0

    .line 233
    invoke-static {p0}, Lxx;->a(Landroid/content/Context;)Lxx;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyv;

    if-nez v0, :cond_1

    .line 235
    invoke-static {p0}, Lyv;->a(Landroid/content/Context;)Lyv;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lyv;

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->d()V

    .line 241
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lwy;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lwy;->a(Ljava/util/List;)V

    .line 243
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    .line 244
    const-string v0, "loadDownloadingApp ==============enter"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxx;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lxx;->a(Ljava/util/List;)Z

    .line 246
    const-string v0, "loadDownloadingApp ==============leave"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(Ljava/util/List;)V

    .line 248
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxg;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lxg;->a(Ljava/util/List;)V

    .line 251
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c()V

    .line 254
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "select_tab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(ILandroid/content/Intent;)V

    .line 256
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 239
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->b:Ljava/util/List;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 665
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 666
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 667
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 371
    const-string v0, "onNewIntent is called"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 372
    const-string v0, "select_tab"

    iget v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 373
    invoke-direct {p0, v0, p1}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a(ILandroid/content/Intent;)V

    .line 374
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 375
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 378
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 379
    const-string v0, "AppManagerActivity onResume"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTabTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 381
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:I

    if-nez v0, :cond_0

    .line 382
    const-string v0, "loadAppStatus"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Lxg;

    invoke-virtual {v0}, Lxg;->a()V

    .line 384
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    :cond_0
    iget v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 387
    const-string v0, "mTabTag == DOWNLOADED_TAB"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppManagerActivity;->c(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppManagerActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 391
    :cond_1
    return-void
.end method
