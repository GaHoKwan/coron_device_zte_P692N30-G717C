.class public Lcom/sohu/inputmethod/settings/BigramInfoActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Lalh;

.field public a:Lalm;

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/os/Handler;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ProgressBar;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/ScrollView;

.field private a:Landroid/widget/TextView;

.field public a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

.field private a:Lsg;

.field private a:Z

.field private b:I

.field private b:Landroid/app/AlertDialog;

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/app/AlertDialog;

.field private c:Landroid/widget/ImageView;

.field private c:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/app/AlertDialog;

.field private d:Landroid/widget/ImageView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/app/AlertDialog;

.field private e:Landroid/widget/ImageView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Z

    .line 101
    new-instance v0, Lzz;

    invoke-direct {v0, p0}, Lzz;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    .line 784
    new-instance v0, Laah;

    invoke-direct {v0, p0}, Laah;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lalh;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)Lalh;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Lsg;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lsg;)Lsg;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    return-object p1
.end method

.method private a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 780
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 782
    :cond_0
    return-void
.end method

.method private a(Lalh;)V
    .locals 7
    .parameter

    .prologue
    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 613
    const-string v2, "downloadBigram"

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v0, v3}, Lqy;->a(II)I

    .line 615
    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    .line 616
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0}, Lqy;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 618
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(II)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Lalh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Lalh;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 691
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    const v1, 0x7f0b044c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 694
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v3, 0x7f0b045c

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laab;

    invoke-direct {v3, p0}, Laab;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laac;

    invoke-direct {v3, p0}, Laac;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 712
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 715
    :cond_1
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 632
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->Y:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 635
    const/4 v0, 0x1

    .line 637
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a()Z

    move-result v0

    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 41
    iget v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:I

    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:I

    return p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/Button;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->f()V

    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 718
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    const v1, 0x7f0b044c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 721
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v3, 0x7f0b03db

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laad;

    invoke-direct {v3, p0}, Laad;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v3, 0x7f0b03dc

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laae;

    invoke-direct {v3, p0}, Laae;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 745
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 747
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 748
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    if-eqz v0, :cond_1

    .line 749
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    invoke-virtual {v0}, Lalh;->c()V

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 752
    :cond_2
    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 335
    sget-boolean v0, Laox;->a:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 337
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/TextView;

    const/high16 v2, 0x4198

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 338
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_1

    .line 339
    iput-boolean v5, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Z

    .line 343
    :goto_0
    iget-boolean v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Z

    if-eqz v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 345
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 347
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 348
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x4248

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 350
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 352
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 354
    const/16 v1, 0x280

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 355
    const/16 v1, 0x180

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 379
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    :cond_0
    return-void

    .line 341
    :cond_1
    iput-boolean v4, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Z

    goto :goto_0

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 360
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 361
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 362
    iget-object v2, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 365
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Laox;->a(Landroid/content/Context;)F

    move-result v2

    const/high16 v3, 0x4220

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 368
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 370
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 371
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 373
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 374
    const/16 v2, 0x14

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 376
    const/16 v1, 0x215

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 377
    const/16 v1, 0x140

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 755
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    const v1, 0x7f0b044c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 758
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v3, 0x7f0b03db

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laaf;

    invoke-direct {v3, p0}, Laaf;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 765
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v3, 0x7f0b03dc

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laag;

    invoke-direct {v3, p0}, Laag;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 772
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 775
    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/ImageView;

    new-instance v1, Laai;

    invoke-direct {v1, p0}, Laai;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/Button;

    new-instance v1, Laaj;

    invoke-direct {v1, p0}, Laaj;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/Button;

    new-instance v1, Laak;

    invoke-direct {v1, p0}, Laak;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/widget/LinearLayout;

    new-instance v1, Laal;

    invoke-direct {v1, p0}, Laal;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/widget/LinearLayout;

    new-instance v1, Laam;

    invoke-direct {v1, p0}, Laam;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->f:Landroid/widget/LinearLayout;

    new-instance v1, Laan;

    invoke-direct {v1, p0}, Laan;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    return-void
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/settings/BigramInfoActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 890
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, -0x1

    const/16 v3, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 533
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lqy;->a(II)I

    move-result v0

    .line 534
    if-ne v0, v4, :cond_2

    .line 535
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lqy;->c(I)I

    move-result v0

    .line 536
    if-eq v0, v4, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lqy;->b(I)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    .line 538
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    .line 548
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    iget-object v3, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    invoke-virtual {v0, v3}, Lalh;->a(Lalm;)V

    .line 551
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mController == null="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    if-nez v0, :cond_5

    .line 553
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->n()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 554
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 556
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 557
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 558
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/Button;

    const v1, 0x7f0b0451

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 610
    :goto_2
    return-void

    .line 543
    :cond_2
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Lqy;->a(II)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    .line 544
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lsg;

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lalh;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 551
    goto :goto_1

    .line 560
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 561
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 562
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 563
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 564
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/Button;

    const v1, 0x7f0b044f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 567
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    invoke-virtual {v0}, Lalh;->a()I

    move-result v0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d(Ljava/lang/String;)V

    .line 569
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 599
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    const/16 v1, 0xdc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 571
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 572
    const/16 v1, 0xdd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 573
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    invoke-virtual {v1}, Lalh;->b()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 574
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    invoke-virtual {v1}, Lalh;->c()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 575
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 579
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 580
    const/16 v1, 0xde

    iput v1, v0, Landroid/os/Message;->what:I

    .line 581
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    invoke-virtual {v1}, Lalh;->b()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 582
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    invoke-virtual {v1}, Lalh;->c()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 583
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 587
    :pswitch_3
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 588
    const/16 v1, 0xe0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 589
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    invoke-virtual {v1}, Lalh;->b()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 590
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    invoke-virtual {v1}, Lalh;->c()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 591
    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 595
    :pswitch_4
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    const/16 v1, 0xdf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 603
    :pswitch_5
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    const/16 v1, 0xdc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private f()V
    .locals 4

    .prologue
    .line 641
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    const v1, 0x7f0b0448

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 645
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laao;

    invoke-direct {v3, p0}, Laao;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 653
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0b02ab

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laap;

    invoke-direct {v3, p0}, Laap;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 670
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    const v1, 0x7f0b044a

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 673
    :cond_1
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 676
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0, v1}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/app/AlertDialog;

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/app/AlertDialog;

    const v1, 0x7f0b044b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 679
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f0b02ab

    invoke-virtual {p0, v2}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Laaa;

    invoke-direct {v3, p0}, Laaa;-><init>(Lcom/sohu/inputmethod/settings/BigramInfoActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 685
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/app/AlertDialog;

    const v1, 0x7f0b044e

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 686
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 688
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 287
    :cond_0
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/app/AlertDialog;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 292
    :cond_2
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/app/AlertDialog;

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 296
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 297
    :cond_4
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/app/AlertDialog;

    .line 299
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 300
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 301
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 302
    :cond_6
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/app/AlertDialog;

    .line 304
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 305
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 306
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 307
    :cond_8
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/app/AlertDialog;

    .line 309
    :cond_9
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 312
    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/Button;

    .line 313
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/ImageView;

    .line 314
    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/Button;

    .line 315
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/TextView;

    .line 316
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/LinearLayout;

    .line 317
    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/LinearLayout;

    .line 318
    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/ScrollView;

    .line 319
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/ImageView;

    .line 322
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/widget/LinearLayout;

    .line 323
    const v0, 0x7f070065

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/widget/LinearLayout;

    .line 324
    const v0, 0x7f070067

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/widget/LinearLayout;

    .line 325
    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->f:Landroid/widget/LinearLayout;

    .line 326
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/ProgressBar;

    .line 327
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b:Landroid/widget/TextView;

    .line 328
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/widget/TextView;

    .line 329
    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c:Landroid/widget/ImageView;

    .line 330
    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e:Landroid/widget/ImageView;

    .line 331
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d:Landroid/widget/ImageView;

    .line 332
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 623
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 624
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->setContentView(I)V

    .line 625
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b()V

    .line 626
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c()V

    .line 627
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e()V

    .line 628
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d()V

    .line 629
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 256
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->requestWindowFeature(I)Z

    .line 257
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 258
    const v1, 0x7f030013

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/RelativeLayout;

    .line 259
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->setContentView(Landroid/view/View;)V

    .line 260
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->b()V

    .line 261
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->c()V

    .line 262
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->d()V

    .line 263
    iput-object p0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lcom/sohu/inputmethod/settings/BigramInfoActivity;

    .line 264
    const-string v0, "com.sohu.inputmethod.settings.BigramInfoActivity.Notification"

    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ei:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ei:I

    .line 267
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a()V

    .line 275
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 276
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Landroid/widget/RelativeLayout;

    .line 277
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalh;

    .line 278
    iput-object v1, p0, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->a:Lalm;

    .line 279
    invoke-static {}, Laox;->b()V

    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 281
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 527
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 528
    invoke-direct {p0}, Lcom/sohu/inputmethod/settings/BigramInfoActivity;->e()V

    .line 529
    return-void
.end method
