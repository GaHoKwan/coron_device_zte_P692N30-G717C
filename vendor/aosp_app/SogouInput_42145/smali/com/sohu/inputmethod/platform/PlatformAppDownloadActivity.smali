.class public Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lalv;
.implements Lxw;


# instance fields
.field private a:I

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/content/SharedPreferences$Editor;

.field private a:Landroid/content/SharedPreferences;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/os/Handler;

.field private a:Landroid/view/LayoutInflater;

.field private a:Landroid/view/View$OnClickListener;

.field a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/view/View;

.field a:Landroid/widget/AbsListView$OnScrollListener;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ListView;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

.field private a:Ljava/lang/Process;

.field private final a:Ljava/lang/String;

.field private a:Ljava/lang/Thread;

.field private a:Ljava/util/List;

.field private a:Ljavax/xml/parsers/SAXParser;

.field private a:Lrr;

.field private a:Lsg;

.field private a:Lwo;

.field private a:Lxs;

.field private a:Lxx;

.field private a:Lym;

.field private a:Lyt;

.field private a:Lyv;

.field private a:Lyw;

.field private final a:Z

.field private b:Landroid/app/AlertDialog;

.field private b:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private b:Ljava/lang/Thread;

.field private b:Ljava/util/List;

.field private b:Z

.field private c:Landroid/app/AlertDialog;

.field private c:Landroid/widget/ImageView;

.field private c:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/TextView;

.field private c:Z

.field private d:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/RelativeLayout;

.field private d:Z

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const-string v0, "AppDownloadActivity"

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Z

    .line 101
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    .line 102
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/LayoutInflater;

    .line 114
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/LinearLayout;

    .line 115
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/RelativeLayout;

    .line 116
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    .line 117
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/RelativeLayout;

    .line 118
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    .line 128
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Landroid/widget/RelativeLayout;

    .line 129
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    .line 130
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/Button;

    .line 131
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View;

    .line 132
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/ImageView;

    .line 133
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/app/AlertDialog;

    .line 134
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/app/AlertDialog;

    .line 135
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/app/AlertDialog;

    .line 136
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/view/View;

    .line 138
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    .line 139
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:I

    .line 141
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    .line 142
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lym;

    .line 144
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lwo;

    .line 145
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    .line 146
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyv;

    .line 147
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/graphics/drawable/Drawable;

    .line 149
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Thread;

    .line 150
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/lang/Thread;

    .line 151
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    .line 153
    iput-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Z

    .line 154
    iput-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Z

    .line 155
    iput-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Z

    .line 157
    new-instance v0, Lxz;

    invoke-direct {v0, p0}, Lxz;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    .line 325
    new-instance v0, Lye;

    invoke-direct {v0, p0}, Lye;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 331
    new-instance v0, Lyf;

    invoke-direct {v0, p0}, Lyf;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/AbsListView$OnScrollListener;

    .line 381
    new-instance v0, Lyq;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {v0, p0, v1}, Lyq;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Landroid/widget/AbsListView$OnScrollListener;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View$OnTouchListener;

    .line 384
    new-instance v0, Lyg;

    invoke-direct {v0, p0}, Lyg;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View$OnClickListener;

    .line 395
    new-instance v0, Lyh;

    invoke-direct {v0, p0}, Lyh;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/view/View$OnClickListener;

    .line 1718
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput p1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:I

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private a()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1432
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030036

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View;

    .line 1433
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1464
    :goto_0
    return-object v0

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View;

    const v1, 0x7f070121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/ImageView;

    .line 1435
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1436
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1437
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt;

    iget v0, v0, Lxt;->a:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1438
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1439
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt;

    iget-object v0, v0, Lxt;->e:Ljava/lang/String;

    .line 1440
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1441
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Ljava/lang/String;)V

    .line 1443
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lya;

    invoke-direct {v1, p0}, Lya;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1464
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View;

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Lcom/sohu/inputmethod/platform/PlatformAppInfo;)Lcom/sohu/inputmethod/platform/PlatformAppInfo;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Process;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/lang/Thread;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/lang/Thread;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lwo;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lwo;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lxx;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lym;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lym;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Lyv;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyv;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/16 v0, 0x18

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1134
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1136
    new-instance v2, Lyt;

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lyt;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyt;

    .line 1137
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyt;

    invoke-virtual {v2, p0}, Lyt;->a(Lalv;)V

    .line 1138
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyt;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lsg;

    .line 1139
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lsg;

    invoke-virtual {v0, v5}, Lsg;->b(Z)V

    .line 1140
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyt;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lsg;

    invoke-virtual {v0, v1}, Lyt;->c(Lsg;)V

    .line 1141
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1145
    :goto_0
    return-void

    .line 1143
    :cond_0
    const-string v0, "has this request,ignore!! "

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 1665
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lyr;

    if-eqz v0, :cond_1

    .line 1666
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyr;

    .line 1667
    if-eqz v0, :cond_0

    .line 1668
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Lyr;)V

    .line 1671
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1674
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1247
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    .line 1248
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    .line 1250
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v1, v4

    .line 1251
    :goto_0
    if-ge v1, v5, :cond_4

    if-ge v1, v6, :cond_4

    .line 1252
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    :goto_1
    if-eq v1, v2, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    const/4 v2, 0x2

    iput v2, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 1259
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Z

    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    .line 1260
    :goto_2
    if-lt v0, v4, :cond_0

    if-gt v0, v5, :cond_0

    .line 1261
    sub-int/2addr v0, v4

    .line 1262
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1264
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyr;

    .line 1265
    const-string v2, "0%"

    .line 1267
    const/4 v1, 0x1

    .line 1268
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v4, p1}, Lxx;->a(Ljava/lang/String;)Lxy;

    move-result-object v4

    .line 1269
    if-eqz v4, :cond_3

    .line 1270
    iget v2, v4, Lxy;->a:I

    .line 1271
    iget v1, v4, Lxy;->b:I

    .line 1272
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    int-to-long v5, v1

    int-to-long v7, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lxx;->a(JJ)Ljava/lang/String;

    move-result-object v4

    .line 1274
    :goto_3
    iget-object v5, v0, Lyr;->a:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1275
    iget-object v5, v0, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1276
    iget-object v3, v0, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1277
    iget-object v1, v0, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1278
    iget-object v1, v0, Lyr;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1279
    iget-object v0, v0, Lyr;->e:Landroid/widget/TextView;

    const v1, 0x7f0b040e

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1284
    :cond_0
    return-void

    .line 1251
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1259
    goto :goto_2

    :cond_3
    move-object v4, v2

    move v2, v3

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private a(Lyr;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1677
    if-eqz p1, :cond_0

    .line 1679
    iget-object v0, p1, Lyr;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1680
    iput-object v1, p1, Lyr;->a:Landroid/widget/ImageView;

    .line 1681
    iget-object v0, p1, Lyr;->a:Landroid/widget/ImageView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1682
    iput-object v1, p1, Lyr;->a:Landroid/widget/TextView;

    .line 1683
    iget-object v0, p1, Lyr;->b:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1684
    iput-object v1, p1, Lyr;->b:Landroid/widget/TextView;

    .line 1685
    iget-object v0, p1, Lyr;->a:Landroid/widget/LinearLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1686
    iput-object v1, p1, Lyr;->a:Landroid/widget/LinearLayout;

    .line 1687
    iget-object v0, p1, Lyr;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1688
    iput-object v1, p1, Lyr;->b:Landroid/widget/ImageView;

    .line 1689
    iget-object v0, p1, Lyr;->c:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1690
    iput-object v1, p1, Lyr;->c:Landroid/widget/TextView;

    .line 1691
    iget-object v0, p1, Lyr;->b:Landroid/widget/LinearLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1692
    iput-object v1, p1, Lyr;->b:Landroid/widget/LinearLayout;

    .line 1693
    iget-object v0, p1, Lyr;->a:Landroid/widget/ProgressBar;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1694
    iput-object v1, p1, Lyr;->a:Landroid/widget/ProgressBar;

    .line 1695
    iget-object v0, p1, Lyr;->d:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1696
    iput-object v1, p1, Lyr;->d:Landroid/widget/TextView;

    .line 1697
    iget-object v0, p1, Lyr;->e:Landroid/widget/TextView;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1698
    iput-object v1, p1, Lyr;->e:Landroid/widget/TextView;

    .line 1701
    :cond_0
    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1179
    :try_start_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->aj:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laox;->ak:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyw;

    invoke-virtual {v0, v2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 1180
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyw;

    invoke-virtual {v0}, Lyw;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    .line 1181
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyw;

    invoke-virtual {v0}, Lyw;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    .line 1182
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt;

    iget-boolean v0, v0, Lxt;->a:Z

    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Z

    .line 1185
    :cond_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1186
    const/4 v0, 0x1

    .line 1215
    :goto_0
    return v0

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 1189
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1190
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1191
    iput-object v5, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    :cond_1
    move v0, v1

    .line 1193
    goto :goto_0

    .line 1194
    :catch_1
    move-exception v0

    .line 1195
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1196
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1197
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1198
    iput-object v5, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    :cond_2
    move v0, v1

    .line 1200
    goto :goto_0

    .line 1201
    :catch_2
    move-exception v0

    .line 1202
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1203
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1204
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1205
    iput-object v5, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    :cond_3
    move v0, v1

    .line 1207
    goto :goto_0

    .line 1208
    :catch_3
    move-exception v0

    .line 1209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1210
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1211
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1212
    iput-object v5, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    :cond_4
    move v0, v1

    .line 1215
    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Z

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Z

    return p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 7

    .prologue
    .line 1219
    const-string v0, "Load APP status is called!!"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1221
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 1222
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 1223
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v4, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 1224
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v5, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    .line 1225
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v6, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->f:Ljava/lang/String;

    .line 1226
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyv;

    invoke-virtual {v0, v6, v4, v5}, Lyv;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 1227
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iput v5, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 1229
    const/4 v0, 0x1

    if-eq v5, v0, :cond_0

    const/4 v0, 0x2

    if-ne v5, v0, :cond_1

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v0, v6}, Lxx;->a(Ljava/lang/String;)Lxu;

    move-result-object v0

    .line 1231
    if-eqz v0, :cond_1

    .line 1232
    invoke-virtual {v0, p0}, Lxu;->a(Lxw;)V

    .line 1235
    :cond_1
    const/4 v0, 0x4

    if-ne v3, v0, :cond_2

    const/4 v0, 0x6

    if-ne v5, v0, :cond_2

    .line 1236
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyv;

    invoke-virtual {v0, v4}, Lyv;->b(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    const/4 v3, 0x7

    iput v3, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:I

    .line 1238
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1239
    const/16 v0, 0x6d

    iput v0, v3, Landroid/os/Message;->what:I

    .line 1240
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:Ljava/lang/String;

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1241
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1221
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1244
    :cond_3
    return-void
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 1332
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1333
    sparse-switch p1, :sswitch_data_0

    .line 1389
    :cond_0
    :goto_0
    return-void

    .line 1335
    :sswitch_0
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Z

    .line 1336
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1340
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lym;

    invoke-virtual {v0}, Lym;->notifyDataSetChanged()V

    goto :goto_0

    .line 1343
    :sswitch_1
    iput-boolean v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Z

    .line 1344
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1347
    :sswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1348
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1350
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1351
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(I)V

    goto :goto_0

    .line 1354
    :sswitch_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 1355
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1357
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1358
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(I)V

    goto :goto_0

    .line 1361
    :sswitch_4
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 1362
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1364
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1365
    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(I)V

    goto :goto_0

    .line 1368
    :sswitch_5
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 1369
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1371
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1372
    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(I)V

    goto :goto_0

    .line 1375
    :sswitch_6
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 1376
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1378
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1379
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(I)V

    goto/16 :goto_0

    .line 1382
    :sswitch_7
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt;

    iget-object v0, v0, Lxt;->e:Ljava/lang/String;

    .line 1383
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1333
    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_2
        0x21 -> :sswitch_3
        0x25 -> :sswitch_4
        0x26 -> :sswitch_5
        0x30 -> :sswitch_1
        0x31 -> :sswitch_6
        0x34 -> :sswitch_7
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b()V

    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/16 v0, 0x19

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1468
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1492
    :cond_0
    :goto_0
    return-void

    .line 1471
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laox;->ao:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1473
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1475
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1476
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/graphics/drawable/Drawable;

    .line 1477
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1479
    :cond_2
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    invoke-static {v2}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1481
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1482
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    new-instance v3, Lxs;

    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lxs;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxs;

    .line 1484
    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxs;

    invoke-virtual {v2, p0}, Lxs;->a(Lalv;)V

    .line 1485
    iget-object v4, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxs;

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lsg;

    .line 1486
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lsg;

    invoke-virtual {v0, v5}, Lsg;->b(Z)V

    .line 1487
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    goto/16 :goto_0

    .line 1489
    :cond_3
    const-string v0, "has this request,ignore!! "

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Z

    return p1
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1291
    new-instance v0, Ljava/io/File;

    sget-object v1, Laox;->al:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 1293
    if-eqz v4, :cond_3

    .line 1294
    array-length v5, v4

    .line 1295
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v3, v2

    .line 1296
    :goto_0
    if-ge v3, v5, :cond_3

    .line 1297
    aget-object v7, v4, v3

    move v1, v2

    .line 1299
    :goto_1
    if-ge v1, v6, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v8, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->b:Ljava/lang/String;

    .line 1301
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget v9, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->a:I

    .line 1302
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;

    iget-object v0, v0, Lcom/sohu/inputmethod/platform/PlatformAppInfo;->e:Ljava/lang/String;

    .line 1303
    invoke-static {v8, v9, v0}, Lwo;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1304
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1308
    :cond_0
    if-lt v1, v6, :cond_1

    .line 1309
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laox;->al:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1296
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1299
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1314
    :cond_3
    return-void
.end method

.method private c(I)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f09002d

    const v4, 0x7f09002c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1392
    iput-boolean v3, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Z

    .line 1393
    packed-switch p1, :pswitch_data_0

    .line 1429
    :goto_0
    return-void

    .line 1395
    :pswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0426

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1396
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1397
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1398
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1399
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1400
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1403
    :pswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0427

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1405
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1406
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1407
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1408
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1411
    :pswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0428

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1413
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1414
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1415
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1416
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1419
    :pswitch_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f0b0429

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1421
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1422
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1423
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1424
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1393
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a()V

    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1738
    return-void
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->m()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1746
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 1317
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1318
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1319
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1320
    const/16 v1, 0x25

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1321
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1329
    :goto_0
    return-void

    .line 1325
    :cond_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b()V

    .line 1326
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1327
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1328
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 1495
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

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    const v2, 0x7f0b0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lyc;

    invoke-direct {v2, p0}, Lyc;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    const v2, 0x7f0b0393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lyb;

    invoke-direct {v2, p0}, Lyb;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/app/AlertDialog;

    .line 1523
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 1526
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

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    const v2, 0x7f0b0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lyd;

    invoke-direct {v2, p0}, Lyd;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/app/AlertDialog;

    .line 1582
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 1585
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b041e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b041f

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b02ab

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/app/AlertDialog;

    .line 1591
    return-void
.end method

.method private declared-synchronized m()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1594
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v2, 0x6f

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1595
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1597
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    .line 1598
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1599
    const-string v2, "echo \"Do I have root?\" >/system/sd/temporary.txt\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1600
    const-string v2, "exit\n"

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 1602
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 1603
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 1604
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_3

    .line 1606
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

    .line 1607
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1608
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

    .line 1609
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1610
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1623
    :try_start_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1629
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 1607
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1614
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1623
    :goto_2
    :try_start_4
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1594
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1617
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 1619
    :catch_0
    move-exception v0

    .line 1621
    :try_start_6
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1623
    :try_start_7
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    goto :goto_1

    .line 1623
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    if-eqz v1, :cond_4

    .line 1624
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 1625
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    .line 1623
    :cond_4
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private n()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1632
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1633
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljavax/xml/parsers/SAXParser;

    .line 1634
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->o()V

    .line 1635
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1637
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/app/AlertDialog;

    .line 1639
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1640
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1641
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/graphics/drawable/Drawable;

    .line 1643
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lwo;

    if-eqz v0, :cond_2

    .line 1644
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lwo;

    invoke-virtual {v0}, Lwo;->d()V

    .line 1646
    :cond_2
    const v0, 0x7f070156

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1647
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1648
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1649
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/RelativeLayout;

    .line 1650
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    .line 1651
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1655
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1656
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1657
    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a(Landroid/view/View;)V

    .line 1658
    invoke-static {v1}, Laox;->a(Landroid/view/View;)V

    .line 1655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1662
    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 675
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 676
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 677
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 678
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 679
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 745
    const-string v0, "============download error================"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 748
    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 749
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 750
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 751
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 752
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->c(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 755
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 688
    const-string v0, "=========prepare download==============="

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v0, p1, p2, p3}, Lxx;->a(Ljava/lang/String;II)V

    .line 691
    return-void
.end method

.method public b(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 696
    const-string v0, "=========start download==============="

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 698
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

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v0, p1, p2, p3}, Lxx;->a(Ljava/lang/String;II)V

    .line 700
    return-void
.end method

.method public c(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v0, p1, p2, p3}, Lxx;->a(Ljava/lang/String;II)V

    .line 706
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->c(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 708
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 709
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 710
    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 711
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 656
    return-void
.end method

.method public d(Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 716
    const-string v0, "=========pause download==============="

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 718
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

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 721
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 661
    return-void
.end method

.method public e(Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    const-string v0, "=========cancel download==============="

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 728
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

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 731
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method public f(Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 736
    const-string v0, "=========finish download==============="

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 738
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

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    invoke-virtual {v0, p1}, Lxx;->a(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 741
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 671
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 611
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request code is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result code is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 614
    packed-switch p2, :pswitch_data_0

    .line 635
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 616
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_0

    .line 618
    const-string v1, "APP_RESULT_CONTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    const-string v2, "APP_RESULT_PACKAGE_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 620
    const-string v3, "APP_RESULT_APP_NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 621
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return content is:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\npackage name:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->finish()V

    .line 624
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_0

    .line 625
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v2, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 614
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 641
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 642
    iput-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Z

    .line 643
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lym;

    invoke-virtual {v0}, Lym;->notifyDataSetChanged()V

    .line 651
    :goto_0
    return-void

    .line 645
    :cond_0
    iput-boolean v2, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Z

    .line 646
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxt;

    iget-boolean v0, v0, Lxt;->a:Z

    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Z

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lym;

    invoke-virtual {v0}, Lym;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 412
    const-string v0, "app download on create!"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d(Ljava/lang/String;)V

    .line 413
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 414
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->requestWindowFeature(I)Z

    .line 415
    const v0, 0x7f03003c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->setContentView(I)V

    .line 417
    invoke-virtual {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    .line 418
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/LayoutInflater;

    .line 419
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/SharedPreferences;

    .line 420
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/SharedPreferences$Editor;

    .line 421
    new-instance v0, Lyw;

    invoke-direct {v0}, Lyw;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyw;

    .line 423
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    new-instance v0, Lrr;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    sget-object v2, Laox;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lrr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lrr;

    .line 428
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lyv;->a(Landroid/content/Context;)Lyv;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyv;

    .line 429
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lxx;->a(Landroid/content/Context;)Lxx;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lxx;

    .line 431
    sget-object v0, Laox;->aj:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 432
    sget-object v0, Laox;->al:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 433
    sget-object v0, Laox;->am:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 434
    sget-object v0, Laox;->an:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 435
    sget-object v0, Laox;->ao:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 437
    const v0, 0x7f070158

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/LinearLayout;

    .line 438
    const v0, 0x7f070157

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/LinearLayout;

    .line 439
    const v0, 0x7f07015c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    .line 441
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03003d

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/RelativeLayout;

    .line 442
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 444
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03003e

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    .line 445
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/TextView;

    .line 446
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Landroid/widget/LinearLayout;

    .line 447
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->e:Landroid/widget/LinearLayout;

    .line 448
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ImageView;

    .line 449
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/TextView;

    .line 450
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0700a1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->f:Landroid/widget/LinearLayout;

    .line 451
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0700a2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/ImageView;

    .line 452
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/TextView;

    .line 453
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lyi;

    invoke-direct {v1, p0}, Lyi;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03003b

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Landroid/widget/RelativeLayout;

    .line 466
    const v0, 0x7f07015b

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/Button;

    .line 467
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f070155

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    .line 468
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/Button;

    new-instance v1, Lyj;

    invoke-direct {v1, p0}, Lyj;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    new-instance v0, Lym;

    invoke-direct {v0, p0}, Lym;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lym;

    .line 479
    new-instance v0, Lwo;

    invoke-direct {v0}, Lwo;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lwo;

    .line 480
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lym;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 481
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lyk;

    invoke-direct {v1, p0}, Lyk;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 503
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 504
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->j()V

    .line 505
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->k()V

    .line 506
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->l()V

    .line 507
    new-instance v0, Lyl;

    invoke-direct {v0, p0}, Lyl;-><init>(Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Thread;

    .line 527
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 532
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 604
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 605
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->n()V

    .line 606
    invoke-static {}, Laox;->a()V

    .line 607
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 569
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 570
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 543
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 544
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 549
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 550
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 555
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->d:Z

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Z

    .line 561
    invoke-direct {p0}, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a()V

    .line 564
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 537
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 538
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 575
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 576
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 582
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyt;

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lyt;

    invoke-virtual {v0}, Lyt;->a()V

    .line 588
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lwo;

    if-eqz v0, :cond_5

    .line 589
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Lwo;

    invoke-virtual {v0}, Lwo;->c()V

    .line 591
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 592
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 593
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->b:Ljava/lang/Thread;

    .line 595
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    if-eqz v0, :cond_7

    .line 596
    iget-object v0, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 597
    iput-object v1, p0, Lcom/sohu/inputmethod/platform/PlatformAppDownloadActivity;->a:Ljava/lang/Process;

    .line 599
    :cond_7
    return-void
.end method
