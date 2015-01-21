.class public Lcom/sohu/inputmethod/platform/AppDetailActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lalv;
.implements Lwh;
.implements Lxw;


# static fields
.field public static final a:I


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/LayoutInflater;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/PopupWindow;

.field private a:Landroid/widget/ProgressBar;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

.field private a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

.field private a:Ljava/lang/Process;

.field private final a:Ljava/lang/String;

.field private a:Ljava/lang/Thread;

.field private a:Ljava/util/ArrayList;

.field private a:Ljava/util/List;

.field private a:Lsg;

.field private a:Lwe;

.field private a:Lwg;

.field private a:Lxx;

.field private a:Lyv;

.field private final a:Z

.field private b:Landroid/app/AlertDialog;

.field private b:Landroid/widget/Button;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private b:Ljava/lang/Thread;

.field private c:Landroid/app/AlertDialog;

.field private c:Landroid/widget/Button;

.field private c:Landroid/widget/ImageView;

.field private c:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/app/AlertDialog;

.field private d:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    const/high16 v0, 0x4330

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const-string v0, "AppDetailActivity"

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Z

    .line 94
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    .line 95
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/view/LayoutInflater;

    .line 98
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lyv;

    .line 99
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    .line 101
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwg;

    .line 129
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/app/AlertDialog;

    .line 130
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/app/AlertDialog;

    .line 131
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/app/AlertDialog;

    .line 132
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/app/AlertDialog;

    .line 137
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 138
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/List;

    .line 140
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/ArrayList;

    .line 142
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Thread;

    .line 143
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Ljava/lang/Thread;

    .line 144
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    .line 146
    new-instance v0, Lvl;

    invoke-direct {v0, p0}, Lvl;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    .line 296
    new-instance v0, Lvu;

    invoke-direct {v0, p0}, Lvu;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 1477
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Process;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Ljava/lang/Thread;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Ljava/lang/Thread;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lwe;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwe;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lxx;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Lyv;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lyv;

    return-object v0
.end method

.method private a()V
    .locals 5

    .prologue
    .line 555
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v2, v2, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lwo;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-static {v0}, Lwo;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_0

    .line 558
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/TextView;

    const v1, 0x7f0b0411

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 564
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lvv;

    invoke-direct {v1, p0}, Lvv;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    new-instance v1, Lvw;

    invoke-direct {v1, p0}, Lvw;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/Button;

    new-instance v1, Lvy;

    invoke-direct {v1, p0}, Lvy;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->g:Landroid/widget/LinearLayout;

    new-instance v1, Lvz;

    invoke-direct {v1, p0}, Lvz;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lwa;

    invoke-direct {v1, p0}, Lwa;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    new-instance v0, Lwe;

    invoke-direct {v0, p0}, Lwe;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwe;

    .line 827
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwe;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 828
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwe;

    invoke-virtual {v0}, Lwe;->notifyDataSetChanged()V

    .line 829
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    new-instance v1, Lwb;

    invoke-direct {v1, p0}, Lwb;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 865
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/Button;

    new-instance v1, Lwc;

    invoke-direct {v1, p0}, Lwc;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 884
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1716
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Thread;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Thread;

    return-object p1
.end method

.method private b()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 887
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 888
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lyv;

    iget-object v5, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v5, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v6, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v7, v7, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v4, v5, v6, v7}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 891
    const/4 v0, 0x7

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    if-ne v0, v10, :cond_0

    .line 893
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v5, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v0, v4, v5}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 894
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lyv;

    invoke-virtual {v4, v0}, Lyv;->c(Ljava/lang/String;)Z

    .line 895
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lyv;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lyv;->a(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lxx;->d(Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lyv;

    iget-object v5, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v5, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v6, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v7, v7, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v4, v5, v6, v7}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 898
    const-string v0, "preAppStatus == PlatformAppInfoManager.APP_STATUS_HAS_ADD && appStatus == PlatformAppInfoManager.APP_STATUS_NEED_INSTALL"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    .line 904
    :cond_0
    const-string v0, "0%"

    .line 905
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    packed-switch v4, :pswitch_data_0

    .line 1049
    :goto_0
    return-void

    .line 907
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    const v3, 0x7f0b040d

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 911
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 912
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 913
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 914
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 917
    :pswitch_1
    if-ne v3, v10, :cond_1

    .line 918
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lyv;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lyv;->b(Ljava/lang/String;)V

    .line 923
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 924
    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 925
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 926
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 927
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    const v3, 0x7f0b040a

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 932
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 933
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 934
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 935
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 941
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 942
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    const v3, 0x7f0b040b

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 944
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 945
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 946
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 947
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 951
    :pswitch_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    const v3, 0x7f0b0406

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 954
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 955
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 956
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 957
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 961
    :pswitch_4
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    const v3, 0x7f0b0409

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 964
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 965
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 966
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 967
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 971
    :pswitch_5
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 972
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 973
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    const v5, 0x7f0b0410

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lxx;->a(Ljava/lang/String;)Lxu;

    move-result-object v3

    .line 975
    if-eqz v3, :cond_2

    .line 976
    invoke-virtual {v3, p0}, Lxu;->a(Lxw;)V

    .line 977
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->e:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_2

    .line 978
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lxx;->b(Ljava/lang/String;)Lxy;

    move-result-object v4

    .line 979
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    iget-object v5, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v5, v5, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v6, v6, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    invoke-virtual {v3, v5, v6}, Lxx;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 980
    iget-object v5, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lyv;

    invoke-virtual {v5, v3}, Lyv;->b(Ljava/lang/String;)Z

    move-result v3

    .line 981
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 982
    iget v3, v4, Lxy;->b:I

    .line 983
    iget v1, v4, Lxy;->a:I

    .line 984
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    int-to-long v4, v3

    int-to-long v6, v1

    invoke-virtual {v0, v4, v5, v6, v7}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 986
    :goto_1
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 987
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 988
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 989
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 990
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 993
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1007
    :pswitch_6
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1008
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1009
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    const v5, 0x7f0b040f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lxx;->a(Ljava/lang/String;)Lxu;

    move-result-object v3

    .line 1011
    if-eqz v3, :cond_3

    .line 1012
    invoke-virtual {v3, p0}, Lxu;->a(Lxw;)V

    .line 1013
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->e:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_3

    .line 1014
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lxx;->a(Ljava/lang/String;)Lxy;

    move-result-object v4

    .line 1015
    if-eqz v4, :cond_5

    .line 1016
    iget v3, v4, Lxy;->b:I

    .line 1017
    iget v2, v4, Lxy;->a:I

    .line 1018
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    int-to-long v4, v3

    int-to-long v6, v2

    invoke-virtual {v0, v4, v5, v6, v7}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 1020
    :goto_2
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1022
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1023
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1024
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1027
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1030
    :pswitch_7
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1031
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1032
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    const v5, 0x7f0b040f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v4, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lxx;->b(Ljava/lang/String;)Lxy;

    move-result-object v4

    .line 1034
    if-eqz v4, :cond_4

    .line 1035
    iget v3, v4, Lxy;->b:I

    .line 1036
    iget v2, v4, Lxy;->a:I

    .line 1037
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    int-to-long v4, v3

    int-to-long v6, v2

    invoke-virtual {v0, v4, v5, v6, v7}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v0

    .line 1039
    :goto_3
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1041
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1042
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/ImageView;

    const v2, 0x7f020005

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1043
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1044
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto/16 :goto_0

    :cond_4
    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v1

    goto :goto_2

    :cond_6
    move v3, v1

    move v1, v2

    goto/16 :goto_1

    .line 905
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displaty detail images, download result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    .line 1082
    packed-switch p1, :pswitch_data_0

    .line 1112
    :goto_0
    return-void

    .line 1084
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    invoke-virtual {v0, v2}, Lcom/sohu/inputmethod/platform/AppDetailImagesView;->setVisibility(I)V

    .line 1095
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwe;

    invoke-virtual {v0}, Lwe;->notifyDataSetChanged()V

    goto :goto_0

    .line 1101
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1082
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->n()V

    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/AppDetailActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c(I)V

    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/AppDetailActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/Integer;)V
    .locals 3
    .parameter

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1274
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwe;

    invoke-virtual {v0}, Lwe;->notifyDataSetChanged()V

    .line 1288
    return-void
.end method

.method private b(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1254
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwe;

    invoke-virtual {v0}, Lwe;->notifyDataSetChanged()V

    .line 1269
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1724
    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/List;

    .line 1056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/ArrayList;

    .line 1057
    new-instance v0, Lazf;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v1, v1, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->i:Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v2}, Lazf;-><init>(Ljava/lang/String;I)V

    .line 1059
    :goto_1
    invoke-virtual {v0}, Lazf;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1060
    invoke-virtual {v0}, Lazf;->a()Ljava/lang/String;

    move-result-object v1

    .line 1061
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/List;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1064
    :cond_2
    new-instance v0, Lvm;

    invoke-direct {v0, p0}, Lvm;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Thread;

    .line 1077
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private c(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1292
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030038

    invoke-virtual {v0, v1, v7, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1294
    new-instance v0, Lvs;

    invoke-direct {v0, p0}, Lvs;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1302
    const v0, 0x7f070128

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/ImageView;

    .line 1304
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1305
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->an:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1307
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1309
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1310
    if-eqz v0, :cond_0

    .line 1311
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1316
    :cond_0
    const v0, 0x7f070127

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1317
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 1318
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 1319
    new-instance v2, Lvt;

    invoke-direct {v2, p0}, Lvt;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1329
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1, v6, v6, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/PopupWindow;

    .line 1331
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1332
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/PopupWindow;

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1333
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1334
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 1335
    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->i()V

    return-void
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic e(Lcom/sohu/inputmethod/platform/AppDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private i()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1115
    sget-object v0, Laox;->an:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2, v5}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 1116
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    const/16 v2, 0xb2

    invoke-virtual {v0, v2}, Lqy;->b(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1118
    new-instance v0, Lwg;

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lwg;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwg;

    .line 1119
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwg;

    invoke-virtual {v0, p0}, Lwg;->a(Lalv;)V

    .line 1120
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwg;

    invoke-virtual {v0, p0}, Lwg;->a(Lwh;)V

    .line 1121
    const/16 v0, 0x18

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lwg;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lsg;

    .line 1122
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lsg;

    invoke-virtual {v0, v5}, Lsg;->b(Z)V

    .line 1123
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1127
    :goto_0
    return-void

    .line 1125
    :cond_0
    const-string v0, "has this request,ignore!! "

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 1130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    const v2, 0x7f0b0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lvn;

    invoke-direct {v2, p0}, Lvn;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/app/AlertDialog;

    .line 1172
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 1175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    const v2, 0x7f0b0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lvp;

    invoke-direct {v2, p0}, Lvp;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    const v2, 0x7f0b0393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lvo;

    invoke-direct {v2, p0}, Lvo;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/app/AlertDialog;

    .line 1216
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 1219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b041e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b041f

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02ab

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/app/AlertDialog;

    .line 1225
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 1228
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    const v2, 0x7f0b0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lvr;

    invoke-direct {v2, p0}, Lvr;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    const v2, 0x7f0b0393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lvq;

    invoke-direct {v2, p0}, Lvq;-><init>(Lcom/sohu/inputmethod/platform/AppDetailActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/app/AlertDialog;

    .line 1249
    return-void
.end method

.method private declared-synchronized n()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1338
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v2, 0x6f

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    .line 1342
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1343
    const-string v2, "echo \"Do I have root?\" >/system/sd/temporary.txt\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1344
    const-string v2, "exit\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 1346
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1347
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 1348
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    .line 1350
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/system/xbin/"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "/system/sbin/"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "/sbin/"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "/vendor/bin/"

    aput-object v3, v1, v2

    .line 1351
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1352
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1353
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1354
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1367
    :try_start_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1373
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 1351
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1358
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1367
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1361
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 1363
    :catch_0
    move-exception v0

    .line 1365
    :try_start_6
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1367
    :try_start_7
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    goto :goto_1

    .line 1367
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    if-eqz v1, :cond_4

    .line 1368
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 1369
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    .line 1367
    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 469
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 470
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 471
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 472
    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detail image load error! index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 549
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 550
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 551
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 552
    return-void
.end method

.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detail image load success! index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 539
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 540
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 541
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 542
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 543
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 525
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 526
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 527
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 528
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 530
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->c(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 533
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    const-string v0, "=========prepare download==============="

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    invoke-virtual {v0, p1, p2, p3}, Lxx;->a(Ljava/lang/String;II)V

    .line 484
    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    invoke-virtual {v0, p1, p2, p3}, Lxx;->a(Ljava/lang/String;II)V

    .line 490
    return-void
.end method

.method public c(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    invoke-virtual {v0, p1, p2, p3}, Lxx;->a(Ljava/lang/String;II)V

    .line 496
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->c(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 498
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public d(Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 505
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public e(Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 512
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public f(Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 517
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 519
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request code is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result code is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    .line 411
    packed-switch p1, :pswitch_data_0

    .line 444
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 413
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 415
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_0

    .line 417
    const-string v1, "APP_RESULT_CONTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 418
    const-string v2, "APP_RESULT_PACKAGE_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    const-string v3, "APP_RESULT_APP_NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 421
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

    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b(Ljava/lang/String;)V

    .line 422
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 423
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 424
    const-string v5, "APP_RESULT_CONTENT"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "APP_RESULT_PACKAGE_NAME"

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "APP_RESULT_APP_NAME"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 428
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->setResult(ILandroid/content/Intent;)V

    .line 429
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->finish()V

    goto :goto_0

    .line 411
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
    .end packed-switch

    .line 413
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 306
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->requestWindowFeature(I)Z

    .line 307
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->setContentView(I)V

    .line 308
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    .line 309
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/view/LayoutInflater;

    .line 310
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/SharedPreferences;

    .line 311
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/SharedPreferences$Editor;

    .line 312
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lyv;->a(Landroid/content/Context;)Lyv;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lyv;

    .line 313
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lxx;->a(Landroid/content/Context;)Lxx;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lxx;

    .line 315
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appDetailData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 317
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Ljava/lang/String;

    .line 320
    const v0, 0x7f07012b

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/LinearLayout;

    .line 321
    const v0, 0x7f07013c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ImageView;

    .line 322
    const v0, 0x7f07013e

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f07013f

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f070148

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f07012f

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/Button;

    .line 326
    const v0, 0x7f070130

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/Button;

    .line 327
    const v0, 0x7f070140

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/LinearLayout;

    .line 331
    const v0, 0x7f070143

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Lcom/sohu/inputmethod/platform/AppDetailImagesView;

    .line 332
    const v0, 0x7f070141

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/LinearLayout;

    .line 333
    const v0, 0x7f070144

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/widget/LinearLayout;

    .line 334
    const v0, 0x7f070146

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/widget/Button;

    .line 335
    const v0, 0x7f07012d

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->e:Landroid/widget/LinearLayout;

    .line 336
    const v0, 0x7f07012e

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->f:Landroid/widget/LinearLayout;

    .line 337
    const v0, 0x7f070131

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/RelativeLayout;

    .line 338
    const v0, 0x7f070136

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/widget/TextView;

    .line 339
    const v0, 0x7f070138

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/widget/ProgressBar;

    .line 340
    const v0, 0x7f070133

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->g:Landroid/widget/LinearLayout;

    .line 341
    const v0, 0x7f070134

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/widget/ImageView;

    .line 342
    const v0, 0x7f070132

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->h:Landroid/widget/LinearLayout;

    .line 343
    const v0, 0x7f070137

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->e:Landroid/widget/TextView;

    .line 345
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c()V

    .line 346
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a()V

    .line 348
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->j()V

    .line 349
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->k()V

    .line 350
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->m()V

    .line 351
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->l()V

    .line 352
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 401
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 402
    const v0, 0x7f070129

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 403
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 371
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 363
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 364
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b()V

    .line 365
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 358
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 376
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 389
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->b:Ljava/lang/Thread;

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    if-eqz v0, :cond_5

    .line 392
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 393
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/AppDetailActivity;->a:Ljava/lang/Process;

    .line 395
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 396
    return-void
.end method
