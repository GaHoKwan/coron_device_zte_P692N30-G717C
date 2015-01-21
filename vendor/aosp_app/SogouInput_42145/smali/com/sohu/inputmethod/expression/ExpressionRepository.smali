.class public Lcom/sohu/inputmethod/expression/ExpressionRepository;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lalv;


# static fields
.field private static a:Ljava/lang/String;

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final h:I

.field private static final i:I


# instance fields
.field public a:I

.field private a:Landroid/app/AlertDialog;

.field private a:Landroid/content/Context;

.field a:Landroid/content/DialogInterface$OnClickListener;

.field private a:Landroid/os/Handler;

.field private a:Landroid/util/SparseArray;

.field public a:Landroid/view/LayoutInflater;

.field private a:Landroid/view/View$OnClickListener;

.field a:Landroid/view/View$OnTouchListener;

.field private a:Landroid/widget/ImageView;

.field private a:Landroid/widget/LinearLayout;

.field private a:Landroid/widget/ListView;

.field a:Landroid/widget/PopupWindow$OnDismissListener;

.field private a:Landroid/widget/PopupWindow;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:Landroid/widget/Toast;

.field private a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

.field private a:Ljava/util/ArrayList;

.field private a:Ljava/util/HashMap;

.field private a:Ljava/util/List;

.field private a:Ljavax/xml/parsers/SAXParser;

.field public a:Lon;

.field private a:Loz;

.field a:Lpb;

.field private a:Lpj;

.field private a:Lpk;

.field private a:Lpw;

.field private a:Lsg;

.field public a:Z

.field public b:I

.field private b:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private b:Z

.field private c:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/TextView;

.field private c:Z

.field private d:Z

.field private f:I

.field private g:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x4080

    .line 70
    const-string v0, "ExpressionRepository"

    sput-object v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/lang/String;

    .line 105
    const/high16 v0, 0x43c3

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:I

    .line 106
    const/high16 v0, 0x4396

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d:I

    .line 107
    const/high16 v0, 0x4170

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->e:I

    .line 110
    sget v0, Laox;->a:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->h:I

    .line 111
    sget v0, Laox;->a:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    iput v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->j:I

    .line 130
    iput v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->k:I

    .line 131
    iput v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->l:I

    .line 132
    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/RelativeLayout;

    .line 133
    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/RelativeLayout;

    .line 134
    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/RelativeLayout;

    .line 135
    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ImageView;

    .line 136
    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/TextView;

    .line 139
    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/LinearLayout;

    .line 140
    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/LinearLayout;

    .line 148
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Z

    .line 149
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Z

    .line 157
    iput-boolean v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d:Z

    .line 161
    new-instance v0, Lpl;

    invoke-direct {v0, p0}, Lpl;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    .line 267
    new-instance v0, Lpo;

    invoke-direct {v0, p0}, Lpo;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/view/View$OnTouchListener;

    .line 302
    new-instance v0, Lpp;

    invoke-direct {v0, p0}, Lpp;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow$OnDismissListener;

    .line 313
    new-instance v0, Lpq;

    invoke-direct {v0, p0}, Lpq;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpb;

    .line 343
    new-instance v0, Lpr;

    invoke-direct {v0, p0}, Lpr;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 349
    new-instance v0, Lps;

    invoke-direct {v0, p0}, Lps;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lon;

    .line 623
    new-instance v0, Lpt;

    invoke-direct {v0, p0}, Lpt;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/view/View$OnClickListener;

    .line 633
    new-instance v0, Lpu;

    invoke-direct {v0, p0}, Lpu;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/view/View$OnClickListener;

    .line 1373
    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->m:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->n:I

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Loz;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Loz;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;Loz;)Loz;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Loz;

    return-object p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)Lpw;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpw;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->j()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c(I)V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 1083
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/CharSequence;I)V

    .line 1084
    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1071
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 1074
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1080
    :goto_0
    return-void

    .line 1077
    :cond_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/Toast;

    .line 1078
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1956
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1933
    if-nez p1, :cond_1

    .line 1950
    :cond_0
    return-void

    .line 1935
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1937
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1938
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1939
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    .line 1940
    const-string v2, "######################################################"

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1941
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "========title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnp;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "========packagename:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnp;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "========downloadUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnp;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "========iconurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnp;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1945
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "========count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnp;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "========previewImages:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lnp;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1947
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "========status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lnp;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Lol;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1856
    const-string v0, "downloadExpressionPackage"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1857
    const/16 v0, 0x25

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p2

    move-object v4, p1

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Z)Lsg;

    move-result-object v0

    .line 1859
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lqy;->b(Lsg;)I

    .line 1860
    return-void
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 767
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    .line 773
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/view/LayoutInflater;

    .line 775
    sget-object v0, Laox;->av:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 776
    sget-object v0, Laox;->aw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 777
    sget-object v0, Laox;->ay:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 778
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 779
    :goto_0
    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 780
    const/high16 v2, 0x4080

    sget v4, Laox;->a:F

    mul-float/2addr v2, v4

    float-to-int v4, v2

    .line 782
    new-instance v2, Lpk;

    invoke-direct {v2}, Lpk;-><init>()V

    iput-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpk;

    .line 783
    if-eqz v0, :cond_1

    invoke-static {p0}, Laox;->d(Landroid/content/Context;)I

    move-result v2

    :goto_1
    div-int/lit16 v2, v2, 0x9a

    iput v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->k:I

    .line 784
    if-eqz v0, :cond_2

    invoke-static {p0}, Laox;->c(Landroid/content/Context;)I

    move-result v2

    :goto_2
    div-int/lit16 v2, v2, 0x9a

    iput v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->l:I

    .line 785
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->l:I

    :goto_3
    iput v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->j:I

    .line 790
    const/high16 v0, 0x41a0

    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->o:I

    .line 792
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    .line 793
    :goto_4
    return v1

    .line 768
    :catch_0
    move-exception v0

    .line 769
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 770
    goto :goto_4

    :cond_0
    move v0, v2

    .line 778
    goto :goto_0

    .line 783
    :cond_1
    invoke-static {p0}, Laox;->c(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v4

    goto :goto_1

    .line 784
    :cond_2
    invoke-static {p0}, Laox;->d(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v4

    goto :goto_2

    .line 785
    :cond_3
    iget v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->k:I

    goto :goto_3
.end method

.method private a(II)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 600
    iget v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->g:I

    .line 601
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 603
    iget v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->f:I

    .line 604
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v0, v3

    iget v4, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->o:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    .line 617
    if-lt p1, v2, :cond_0

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->o:I

    add-int/2addr v1, v0

    if-lt p2, v1, :cond_0

    add-int/2addr v0, v3

    iget v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->o:I

    add-int/2addr v0, v1

    if-le p2, v0, :cond_1

    .line 619
    :cond_0
    const/4 v0, 0x0

    .line 620
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(II)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/expression/ExpressionRepository;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d:Z

    return p1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/expression/ExpressionRepository;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->n:I

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->m()V

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/ArrayList;

    .line 799
    return-void
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 924
    const-string v0, "showExpressionPrevsiew in"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 925
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->i()V

    .line 938
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 939
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v2, v0, Lnp;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->setPreviewImageSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpb;

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    invoke-virtual {v1, p1, v2, v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(ILpb;Lnp;)V

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 950
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 953
    :cond_1
    iput p1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->m:I

    .line 956
    :cond_2
    const-string v0, "showExpressionPrevsiew out"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->k()V

    return-void
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b(I)V

    return-void
.end method

.method private b()Z
    .locals 4

    .prologue
    .line 1580
    :try_start_0
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljavax/xml/parsers/SAXParser;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laox;->at:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laox;->au:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpk;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/File;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 1581
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpk;

    invoke-virtual {v0}, Lpk;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    .line 1582
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->o()V

    .line 1583
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->n()V

    .line 1584
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->p()V

    .line 1585
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    sget-object v1, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1586
    const/4 v0, 0x1

    .line 1591
    :goto_0
    return v0

    .line 1588
    :catch_0
    move-exception v0

    .line 1589
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1590
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1591
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 802
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ListView;

    .line 803
    new-instance v0, Lpw;

    invoke-direct {v0, p0, p0}, Lpw;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpw;

    .line 804
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpw;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 805
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ListView;

    new-instance v1, Lpv;

    invoke-direct {v1, p0}, Lpv;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 822
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/RelativeLayout;

    .line 823
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/RelativeLayout;

    .line 824
    const v0, 0x7f0700a4

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/RelativeLayout;

    .line 825
    const v0, 0x7f07009b

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ImageView;

    .line 826
    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/TextView;

    .line 827
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/LinearLayout;

    .line 828
    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/TextView;

    .line 829
    const v0, 0x7f0700a3

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/TextView;

    .line 831
    const v0, 0x7f0700a1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/LinearLayout;

    .line 832
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/LinearLayout;

    .line 837
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/LinearLayout;

    new-instance v1, Lpm;

    invoke-direct {v1, p0}, Lpm;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lafp;->a(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    .line 846
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 847
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    const v2, 0x7f0b0495

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 848
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    const v2, 0x7f0b0496

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 849
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    const v3, 0x7f0b02ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 851
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    const v3, 0x7f0b02ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lpn;

    invoke-direct {v3, p0}, Lpn;-><init>(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 856
    return-void
.end method

.method private c(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v1, 0x8

    const v5, 0x7f09002d

    const v4, 0x7f09002c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 988
    iput-boolean v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d:Z

    .line 989
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 995
    sparse-switch p1, :sswitch_data_0

    .line 1019
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/TextView;

    const v1, 0x7f0b042d

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1020
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1021
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1022
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1023
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 998
    :sswitch_0
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/TextView;

    const v1, 0x7f0b042c

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1000
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1001
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1002
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1005
    :sswitch_1
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/TextView;

    const v1, 0x7f0b042d

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1007
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1008
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1009
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 1012
    :sswitch_2
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/TextView;

    const v1, 0x7f0b042b

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1013
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1014
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1015
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1016
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 995
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x21 -> :sswitch_0
        0x26 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->n()V

    return-void
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0b0497

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1644
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1645
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 1646
    if-lt p1, v0, :cond_0

    if-gt p1, v1, :cond_0

    .line 1647
    sub-int v0, p1, v0

    .line 1648
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1649
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpz;

    .line 1650
    if-eqz v0, :cond_0

    .line 1651
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnp;

    iget v1, v1, Lnp;->a:I

    packed-switch v1, :pswitch_data_0

    .line 1683
    :cond_0
    :goto_0
    return-void

    .line 1653
    :pswitch_0
    iget-object v1, v0, Lpz;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1654
    iget-object v1, v0, Lpz;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1655
    iget-object v1, v0, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1656
    iget-object v1, v0, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1657
    iget-object v1, v0, Lpz;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1658
    iget-object v1, v0, Lpz;->b:Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->h:Ljava/lang/String;

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->i:Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {p0, v6, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1661
    :pswitch_1
    iget-object v1, v0, Lpz;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1662
    iget-object v1, v0, Lpz;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1663
    iget-object v1, v0, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1664
    iget-object v1, v0, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1665
    iget-object v1, v0, Lpz;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1666
    iget-object v1, v0, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 1667
    iget-object v2, v0, Lpz;->a:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnp;

    iget v1, v1, Lnp;->b:I

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1668
    iget-object v1, v0, Lpz;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget v0, v0, Lnp;->b:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1671
    :pswitch_2
    iget-object v1, v0, Lpz;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1672
    iget-object v1, v0, Lpz;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1673
    iget-object v1, v0, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1674
    iget-object v1, v0, Lpz;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1675
    iget-object v1, v0, Lpz;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1676
    iget-object v1, v0, Lpz;->b:Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->h:Ljava/lang/String;

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->i:Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {p0, v6, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1651
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->p()V

    return-void
.end method

.method public static synthetic d(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->e(I)V

    return-void
.end method

.method private e(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x7

    const/4 v4, -0x1

    const/16 v3, 0x25

    .line 1687
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    const/16 v1, 0xe3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1740
    :cond_0
    :goto_0
    return-void

    .line 1691
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1692
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    .line 1693
    const/4 v1, 0x3

    iput v1, v0, Lnp;->a:I

    .line 1694
    const/4 v1, 0x0

    iput v1, v0, Lnp;->b:I

    .line 1695
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1696
    const/16 v1, 0xea

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1697
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1698
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1699
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Loz;

    if-eqz v0, :cond_2

    .line 1700
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->m:I

    if-ne v0, p1, :cond_2

    .line 1701
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Loz;

    invoke-interface {v0}, Loz;->a()V

    .line 1705
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v1, v0, Lnp;->c:Ljava/lang/String;

    .line 1706
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v2, v0, Lnp;->f:Ljava/lang/String;

    .line 1707
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v1}, Lqy;->a(IILjava/lang/String;)I

    move-result v0

    .line 1708
    if-ne v0, v4, :cond_4

    .line 1709
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lqy;->c(I)I

    move-result v0

    .line 1710
    if-ne v0, v4, :cond_3

    .line 1711
    new-instance v0, Lol;

    invoke-direct {v0}, Lol;-><init>()V

    .line 1712
    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lon;

    invoke-virtual {v0, v3}, Lol;->a(Lon;)V

    .line 1713
    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1714
    invoke-direct {p0, v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lol;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1716
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lqy;->a(ILjava/lang/String;)Lsg;

    move-result-object v0

    .line 1717
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1718
    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lol;

    .line 1719
    if-eqz v0, :cond_0

    .line 1720
    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lon;

    invoke-virtual {v0, v3}, Lol;->a(Lon;)V

    .line 1722
    invoke-direct {p0, v0, v1, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Lol;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1727
    :cond_4
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    invoke-virtual {v0, v3, v5, v1}, Lqy;->a(IILjava/lang/String;)Lsg;

    move-result-object v0

    .line 1728
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1729
    invoke-virtual {v0}, Lsg;->a()Lsl;

    move-result-object v0

    check-cast v0, Lol;

    .line 1730
    if-eqz v0, :cond_0

    .line 1731
    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    invoke-virtual {v0}, Lol;->c()V

    .line 1733
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lon;

    invoke-virtual {v0, v1}, Lol;->a(Lon;)V

    goto/16 :goto_0
.end method

.method public static synthetic e(Lcom/sohu/inputmethod/expression/ExpressionRepository;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b()V

    return-void
.end method

.method public static synthetic e(Lcom/sohu/inputmethod/expression/ExpressionRepository;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->f(I)V

    return-void
.end method

.method private f(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0xe7

    .line 1743
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1744
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1745
    const/16 v0, 0xe9

    iput v0, v2, Landroid/os/Message;->what:I

    .line 1746
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1799
    :goto_0
    return-void

    .line 1750
    :cond_0
    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_5

    .line 1751
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v3, v0, Lnp;->f:Ljava/lang/String;

    .line 1752
    sget-object v4, Laox;->ax:Ljava/lang/String;

    .line 1753
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 1756
    if-nez v5, :cond_1

    .line 1757
    iput v8, v2, Landroid/os/Message;->what:I

    .line 1758
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1761
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_5

    .line 1762
    aget-object v6, v5, v0

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1763
    if-gez v6, :cond_3

    .line 1761
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1765
    :cond_3
    aget-object v7, v5, v0

    invoke-virtual {v7, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1766
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v5, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1768
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rm -r "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1776
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 1778
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    const/4 v1, 0x2

    iput v1, v0, Lnp;->a:I

    .line 1785
    const/16 v0, 0xe8

    iput v0, v2, Landroid/os/Message;->what:I

    .line 1786
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1787
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1779
    :catch_0
    move-exception v0

    .line 1780
    iput v8, v2, Landroid/os/Message;->what:I

    .line 1781
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1790
    :cond_4
    iput v8, v2, Landroid/os/Message;->what:I

    .line 1791
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1797
    :cond_5
    iput v8, v2, Landroid/os/Message;->what:I

    .line 1798
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 859
    const-string v0, "createExpressionPreviewWindow"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 861
    const-string v0, "mExpressionPreviewWindow != null"

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 885
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    .line 886
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 891
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 892
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 893
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 894
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 896
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/view/LayoutInflater;

    const v2, 0x7f030014

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    .line 898
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-virtual {v0, p0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->a(Landroid/app/Activity;)V

    .line 900
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 902
    sget v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d:I

    iput v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->g:I

    .line 903
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->g:I

    sub-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x2

    .line 904
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->o:I

    sub-int/2addr v0, v3

    sget v3, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:I

    if-le v0, v3, :cond_2

    .line 905
    sget v0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:I

    iput v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->f:I

    .line 906
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->f:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->o:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    .line 916
    :goto_1
    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 917
    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 918
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    iget v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->o:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v2, v3}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->setShowLocation(IIII)V

    goto/16 :goto_0

    .line 908
    :cond_2
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->o:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->f:I

    .line 909
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->f:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->o:I

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method private j()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 961
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 962
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 964
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 968
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 969
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 971
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 974
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 979
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 980
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ImageView;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 981
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/TextView;

    const v1, 0x7f0b049a

    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private m()V
    .locals 6

    .prologue
    const/16 v0, 0x24

    const/4 v1, 0x0

    .line 1558
    const-string v2, "[*******loadExpressRepoFromInternet******]"

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1559
    invoke-static {p0}, Laox;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1563
    :cond_0
    invoke-static {p0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lqy;->b(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1565
    new-instance v2, Lpj;

    invoke-direct {v2, p0}, Lpj;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpj;

    .line 1567
    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpj;

    invoke-virtual {v2, p0}, Lpj;->a(Lalv;)V

    .line 1568
    iget-object v4, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpj;

    const/4 v5, 0x0

    move-object v2, v1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lsi;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Z)Lsg;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lsg;

    .line 1570
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpj;

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lsg;

    invoke-virtual {v0, v1}, Lpj;->c(Lsg;)V

    .line 1571
    invoke-static {p0}, Lqy;->a(Landroid/content/Context;)Lqy;

    move-result-object v0

    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lsg;

    invoke-virtual {v0, v1}, Lqy;->a(Lsg;)I

    .line 1575
    :goto_0
    return-void

    .line 1573
    :cond_1
    const-string v0, "has this request,ignore!! "

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private n()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1597
    sget-object v0, Laox;->ax:Ljava/lang/String;

    .line 1598
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1600
    if-nez v2, :cond_1

    .line 1611
    :cond_0
    return-void

    .line 1602
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v1

    .line 1603
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1604
    aget-object v3, v2, v0

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1605
    if-gez v3, :cond_2

    .line 1603
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1607
    :cond_2
    aget-object v4, v2, v0

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addedPackageName============================="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1609
    iget-object v4, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private o()V
    .locals 4

    .prologue
    .line 1614
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/util/SparseArray;

    .line 1615
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1617
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1619
    iget-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v0, v0, Lnp;->c:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1617
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1623
    :cond_0
    return-void
.end method

.method private p()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1626
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1627
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 1628
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 1629
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1630
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    iget-object v6, v0, Lnp;->f:Ljava/lang/String;

    move v1, v2

    .line 1631
    :goto_1
    if-ge v1, v5, :cond_1

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileName======================"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1634
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addedFileName======================"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1635
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnp;

    const/4 v7, 0x1

    iput v7, v0, Lnp;->a:I

    .line 1631
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1629
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1641
    :cond_2
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 1863
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1864
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1865
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 1866
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 1867
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1875
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Laox;->a(Landroid/view/View;)V

    .line 1877
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 1878
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1879
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1880
    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol;

    .line 1881
    if-eqz v0, :cond_0

    .line 1882
    invoke-virtual {v0}, Lol;->a()V

    goto :goto_0

    .line 1887
    :cond_1
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    .line 1888
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljavax/xml/parsers/SAXParser;

    .line 1889
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpj;

    .line 1890
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpk;

    if-eqz v0, :cond_2

    .line 1891
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpk;

    invoke-virtual {v0}, Lpk;->a()V

    .line 1892
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpk;

    .line 1895
    :cond_2
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/ListView;

    .line 1896
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/List;

    .line 1897
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 1898
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1899
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/util/SparseArray;

    .line 1901
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1902
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1903
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/ArrayList;

    .line 1905
    :cond_4
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpw;

    if-eqz v0, :cond_5

    .line 1906
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpw;

    invoke-static {v0}, Lpw;->b(Lpw;)V

    .line 1907
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 1908
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1910
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 1911
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    .line 1913
    :cond_7
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpw;

    .line 1914
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/RelativeLayout;

    .line 1915
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/RelativeLayout;

    .line 1916
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/RelativeLayout;

    .line 1917
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/TextView;

    .line 1918
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Landroid/widget/LinearLayout;

    .line 1919
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Landroid/widget/LinearLayout;

    .line 1920
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    .line 1921
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    .line 1922
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    if-eqz v0, :cond_8

    .line 1923
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b()V

    .line 1924
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    .line 1926
    :cond_8
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Loz;

    .line 1929
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 1824
    const-string v0, "============================OnWindowStop==========================="

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 1825
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1826
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->l()V

    .line 1847
    :cond_0
    :goto_0
    return-void

    .line 1829
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1841
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1842
    const/16 v1, 0xfd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1843
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1844
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1831
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d:Z

    .line 1832
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1833
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1829
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b0486

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1029
    const-string v0, ""

    .line 1030
    packed-switch p1, :pswitch_data_0

    .line 1065
    :goto_0
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/CharSequence;)V

    .line 1066
    return-void

    .line 1032
    :pswitch_1
    const v0, 0x7f0b0488

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1035
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1038
    :pswitch_3
    const v0, 0x7f0b0490

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1041
    :pswitch_4
    const v0, 0x7f0b0491

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1044
    :pswitch_5
    const v0, 0x7f0b048f

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1047
    :pswitch_6
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1050
    :pswitch_7
    const v0, 0x7f0b0492

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1053
    :pswitch_8
    const v0, 0x7f0b0493

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1056
    :pswitch_9
    const v0, 0x7f0b0494

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1059
    :pswitch_a
    const v0, 0x7f0b0487

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1030
    :pswitch_data_0
    .packed-switch 0xdd
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public d()V
    .locals 0

    .prologue
    .line 1805
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 1810
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 1815
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 1820
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 1853
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 731
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 732
    iput-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b:Z

    .line 733
    iput-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c:Z

    .line 734
    iget-object v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 735
    :goto_0
    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->l:I

    :goto_1
    iput v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->j:I

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onConfigurationChanged]mItemCountPerRow=================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;->b()V

    .line 756
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lcom/sohu/inputmethod/expression/ExpressionPreviewContainer;

    .line 758
    :cond_2
    iput-object v3, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/widget/PopupWindow;

    .line 759
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpw;

    if-eqz v0, :cond_3

    .line 760
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpw;

    invoke-virtual {v0}, Lpw;->notifyDataSetChanged()V

    .line 762
    :cond_3
    return-void

    .line 734
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 735
    :cond_5
    iget v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->k:I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 648
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 649
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->requestWindowFeature(I)Z

    .line 650
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->setContentView(I)V

    .line 652
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a()Z

    .line 653
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->c()V

    .line 654
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b()V

    .line 656
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 662
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->l()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 722
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 723
    invoke-virtual {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a()V

    .line 725
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 668
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 669
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 707
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 708
    iget-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d:Z

    if-eqz v0, :cond_0

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->d:Z

    .line 710
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 711
    invoke-direct {p0}, Lcom/sohu/inputmethod/expression/ExpressionRepository;->b()V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/os/Handler;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 716
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 675
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 676
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpj;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpj;

    invoke-virtual {v0}, Lpj;->a()V

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 681
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 682
    iget-object v2, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lol;

    .line 683
    if-eqz v0, :cond_1

    .line 684
    invoke-virtual {v0}, Lol;->a()V

    goto :goto_0

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 697
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 699
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpw;

    if-eqz v0, :cond_4

    .line 700
    iget-object v0, p0, Lcom/sohu/inputmethod/expression/ExpressionRepository;->a:Lpw;

    invoke-static {v0}, Lpw;->a(Lpw;)V

    .line 702
    :cond_4
    return-void
.end method
