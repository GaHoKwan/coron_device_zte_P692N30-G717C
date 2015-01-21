.class public Lawx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:F

.field private static f:Ljava/util/List;

.field private static g:Ljava/util/List;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private a:F

.field private a:I

.field private a:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Lawm;

.field private a:Lawo;

.field private a:Lawq;

.field private a:Lawz;

.field private a:Laxa;

.field private a:Laxn;

.field a:Layx;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/List;

.field a:Z

.field private a:[[I

.field private b:F

.field private b:I

.field private b:Landroid/graphics/Rect;

.field private b:Landroid/graphics/drawable/Drawable;

.field private b:Lawo;

.field private b:Lawq;

.field private b:Ljava/lang/String;

.field private b:Ljava/util/List;

.field public b:Z

.field private c:I

.field private c:Landroid/graphics/drawable/Drawable;

.field private c:Lawo;

.field private c:Lawq;

.field private c:Ljava/util/List;

.field private c:Z

.field private d:F

.field private d:I

.field private d:Lawo;

.field private d:Lawq;

.field private d:Ljava/util/List;

.field private d:Z

.field private e:F

.field private e:I

.field private e:Lawo;

.field private e:Lawq;

.field private e:Ljava/util/List;

.field private f:I

.field private f:Lawq;

.field private g:I

.field private g:Lawq;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    const v0, 0x3fb33333

    sput v0, Lawx;->c:F

    .line 265
    sput-object v1, Lawx;->f:Ljava/util/List;

    .line 266
    sput-object v1, Lawx;->g:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Layx;ILawm;Laxa;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v3, -0x100

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput v1, p0, Lawx;->a:F

    .line 141
    iput v1, p0, Lawx;->b:F

    .line 144
    iput v3, p0, Lawx;->k:I

    .line 147
    iput v3, p0, Lawx;->l:I

    .line 150
    iput-object v0, p0, Lawx;->a:Lawo;

    .line 153
    iput-object v0, p0, Lawx;->b:Lawo;

    .line 156
    iput-object v0, p0, Lawx;->c:Lawo;

    .line 158
    iput-boolean v2, p0, Lawx;->c:Z

    .line 161
    iput-boolean v2, p0, Lawx;->d:Z

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawx;->b:Z

    .line 402
    iput-object p2, p0, Lawx;->a:Layx;

    .line 403
    iput-object p4, p0, Lawx;->a:Lawm;

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 405
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lawx;->h:I

    .line 406
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lawx;->i:I

    .line 409
    iput v2, p0, Lawx;->c:I

    iput v2, p0, Lawx;->a:I

    iput v2, p0, Lawx;->b:I

    .line 410
    iget v0, p0, Lawx;->h:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lawx;->d:I

    .line 411
    iget v0, p0, Lawx;->d:I

    iput v0, p0, Lawx;->e:I

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lawx;->a:Ljava/util/List;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lawx;->b:Ljava/util/List;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lawx;->c:Ljava/util/List;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lawx;->d:Ljava/util/List;

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lawx;->e:Ljava/util/List;

    .line 419
    iput p3, p0, Lawx;->j:I

    .line 421
    iput-object p5, p0, Lawx;->a:Laxa;

    .line 423
    invoke-virtual {p0, p1, p2}, Lawx;->d(Landroid/content/Context;Layx;)V

    .line 424
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Layx;Lawm;Laxa;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lawx;-><init>(Landroid/content/Context;Layx;ILawm;Laxa;)V

    .line 395
    return-void
.end method

.method static synthetic a(Lawx;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lawx;->h:I

    return v0
.end method

.method private final a(Lawx;Ljava/lang/String;Layx;)Lawq;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1114
    iget-object v0, p0, Lawx;->a:Lawm;

    invoke-virtual {v0, p1, p2, p3}, Lawm;->a(Lawx;Ljava/lang/String;Layx;)Lawq;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lawy;IILjava/lang/String;Layx;)Lawq;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1118
    iget-object v0, p0, Lawx;->a:Lawm;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lawm;->a(Lawy;IILjava/lang/String;Layx;)Lawq;

    move-result-object v0

    return-object v0
.end method

.method private final a(Laxb;IILjava/lang/String;Layx;)Lawq;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1122
    iget-object v0, p0, Lawx;->a:Lawm;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lawm;->a(Laxb;IILjava/lang/String;Layx;)Lawq;

    move-result-object v0

    return-object v0
.end method

.method static final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1411
    const-string v0, "UI-Keyboard"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    return-void
.end method

.method public static final a(Lawq;)Z
    .locals 2
    .parameter

    .prologue
    .line 1146
    iget v0, p0, Lawq;->a:I

    const/16 v1, -0x2710

    if-ge v0, v1, :cond_0

    iget v0, p0, Lawq;->a:I

    const/16 v1, -0x4e20

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lawx;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lawx;->f:I

    return v0
.end method

.method private b()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 684
    invoke-virtual {p0}, Lawx;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lawx;->m:I

    .line 685
    invoke-virtual {p0}, Lawx;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lawx;->n:I

    .line 688
    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Lawx;->a:[[I

    .line 689
    iget-object v0, p0, Lawx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v6, v0, [I

    .line 690
    iget v0, p0, Lawx;->m:I

    mul-int/lit8 v7, v0, 0xa

    .line 691
    iget v0, p0, Lawx;->n:I

    mul-int/lit8 v8, v0, 0x5

    move v5, v2

    .line 694
    :goto_0
    if-ge v5, v7, :cond_4

    move v4, v2

    .line 695
    :goto_1
    if-ge v4, v8, :cond_3

    move v1, v2

    move v3, v2

    .line 697
    :goto_2
    iget-object v0, p0, Lawx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 698
    iget-object v0, p0, Lawx;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 699
    invoke-virtual {v0, v5, v4}, Lawq;->a(II)I

    move-result v9

    iget v10, p0, Lawx;->o:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lawx;->m:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v9, v4}, Lawq;->a(II)I

    move-result v9

    iget v10, p0, Lawx;->o:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lawx;->m:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lawx;->n:I

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v0, v9, v10}, Lawq;->a(II)I

    move-result v9

    iget v10, p0, Lawx;->o:I

    if-lt v9, v10, :cond_0

    iget v9, p0, Lawx;->n:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v5, v9}, Lawq;->a(II)I

    move-result v0

    iget v9, p0, Lawx;->o:I

    if-ge v0, v9, :cond_1

    .line 704
    :cond_0
    add-int/lit8 v0, v3, 0x1

    aput v1, v6, v3

    move v3, v0

    .line 697
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 708
    :cond_2
    new-array v0, v3, [I

    .line 709
    invoke-static {v6, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 710
    iget-object v1, p0, Lawx;->a:[[I

    iget v3, p0, Lawx;->n:I

    div-int v3, v4, v3

    mul-int/lit8 v3, v3, 0xa

    iget v9, p0, Lawx;->m:I

    div-int v9, v5, v9

    add-int/2addr v3, v9

    aput-object v0, v1, v3

    .line 695
    iget v0, p0, Lawx;->n:I

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_1

    .line 694
    :cond_3
    iget v0, p0, Lawx;->m:I

    add-int/2addr v0, v5

    move v5, v0

    goto :goto_0

    .line 714
    :cond_4
    return-void
.end method

.method private static b(Lawq;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1150
    invoke-static {p0}, Lawx;->a(Lawq;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1151
    sget-object v1, Lawx;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 1152
    iget v1, p0, Lawq;->a:I

    rsub-int v1, v1, -0x2710

    add-int/lit8 v2, v1, -0x1

    .line 1153
    sget-object v1, Lawx;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 1154
    sget-object v1, Lawx;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lawx;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 1156
    :goto_0
    if-ltz v2, :cond_4

    if-ge v2, v3, :cond_4

    .line 1157
    sget-object v0, Lawx;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lawq;->c:Ljava/lang/CharSequence;

    .line 1158
    if-eqz v1, :cond_3

    iget-object v0, p0, Lawq;->c:Ljava/lang/CharSequence;

    :goto_1
    iput-object v0, p0, Lawq;->b:Ljava/lang/CharSequence;

    .line 1165
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v0

    .line 1154
    goto :goto_0

    .line 1158
    :cond_3
    sget-object v0, Lawx;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    .line 1162
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lawq;->c:Ljava/lang/CharSequence;

    iput-object v1, p0, Lawq;->b:Ljava/lang/CharSequence;

    .line 1163
    iput v0, p0, Lawq;->a:I

    goto :goto_2
.end method

.method static synthetic c(Lawx;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lawx;->d:I

    return v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 1038
    new-instance v0, Lawo;

    invoke-direct {v0}, Lawo;-><init>()V

    iput-object v0, p0, Lawx;->c:Lawo;

    .line 1039
    iget-object v0, p0, Lawx;->c:Lawo;

    new-instance v1, Lawv;

    invoke-direct {v1}, Lawv;-><init>()V

    iput-object v1, v0, Lawo;->b:Lawv;

    .line 1040
    iget-object v0, p0, Lawx;->c:Lawo;

    new-instance v1, Lawv;

    invoke-direct {v1}, Lawv;-><init>()V

    iput-object v1, v0, Lawo;->a:Lawv;

    .line 1042
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->c:I

    iput v1, v0, Lawo;->c:I

    .line 1043
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->b:I

    iput v1, v0, Lawo;->b:I

    .line 1044
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-boolean v1, v1, Lawo;->b:Z

    iput-boolean v1, v0, Lawo;->b:Z

    .line 1045
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->f:I

    iput v1, v0, Lawo;->f:I

    .line 1046
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->g:I

    iput v1, v0, Lawo;->g:I

    .line 1051
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-boolean v1, v1, Lawo;->a:Z

    iput-boolean v1, v0, Lawo;->a:Z

    .line 1052
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->d:I

    iput v1, v0, Lawo;->d:I

    .line 1053
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->e:I

    iput v1, v0, Lawo;->e:I

    .line 1058
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->h:I

    iput v1, v0, Lawo;->h:I

    .line 1059
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->a:Ljava/lang/String;

    iput-object v1, v0, Lawo;->a:Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v0, v0, Lawo;->b:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->b:Lawv;

    iget-object v1, v1, Lawv;->a:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lawv;->a:Landroid/graphics/Paint$Align;

    .line 1061
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v0, v0, Lawo;->b:Lawv;

    iget v1, p0, Lawx;->l:I

    iput v1, v0, Lawv;->b:I

    .line 1062
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v0, v0, Lawo;->b:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->b:Lawv;

    iget-object v1, v1, Lawv;->a:Ljava/lang/String;

    iput-object v1, v0, Lawv;->a:Ljava/lang/String;

    .line 1063
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v0, v0, Lawo;->b:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->b:Lawv;

    iget v1, v1, Lawv;->a:I

    iput v1, v0, Lawv;->a:I

    .line 1065
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v0, v0, Lawo;->b:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->b:Lawv;

    iget-object v1, v1, Lawv;->a:Landroid/graphics/Typeface;

    iput-object v1, v0, Lawv;->a:Landroid/graphics/Typeface;

    .line 1067
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->a:Lawv;

    iget-object v1, v1, Lawv;->a:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lawv;->a:Landroid/graphics/Paint$Align;

    .line 1068
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    iget v1, p0, Lawx;->l:I

    iput v1, v0, Lawv;->b:I

    .line 1069
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->a:Lawv;

    iget-object v1, v1, Lawv;->a:Ljava/lang/String;

    iput-object v1, v0, Lawv;->a:Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->a:Lawv;

    iget v1, v1, Lawv;->a:I

    iput v1, v0, Lawv;->a:I

    .line 1072
    iget-object v0, p0, Lawx;->c:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->a:Lawv;

    iget-object v1, v1, Lawv;->a:Landroid/graphics/Typeface;

    iput-object v1, v0, Lawv;->a:Landroid/graphics/Typeface;

    .line 1073
    return-void
.end method

.method static synthetic d(Lawx;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lawx;->e:I

    return v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 1076
    new-instance v0, Lawo;

    invoke-direct {v0}, Lawo;-><init>()V

    iput-object v0, p0, Lawx;->b:Lawo;

    .line 1077
    iget-object v0, p0, Lawx;->b:Lawo;

    new-instance v1, Lawv;

    invoke-direct {v1}, Lawv;-><init>()V

    iput-object v1, v0, Lawo;->b:Lawv;

    .line 1078
    iget-object v0, p0, Lawx;->b:Lawo;

    new-instance v1, Lawv;

    invoke-direct {v1}, Lawv;-><init>()V

    iput-object v1, v0, Lawo;->a:Lawv;

    .line 1080
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->c:I

    iput v1, v0, Lawo;->c:I

    .line 1081
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->b:I

    iput v1, v0, Lawo;->b:I

    .line 1082
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-boolean v1, v1, Lawo;->b:Z

    iput-boolean v1, v0, Lawo;->b:Z

    .line 1083
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->f:I

    iput v1, v0, Lawo;->f:I

    .line 1084
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->g:I

    iput v1, v0, Lawo;->g:I

    .line 1085
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lawx;->a:Lawo;

    iget v2, v2, Lawo;->f:I

    iget-object v3, p0, Lawx;->a:Lawo;

    iget v3, v3, Lawo;->b:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lawx;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lawo;->f:I

    .line 1087
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lawx;->a:Lawo;

    iget v2, v2, Lawo;->g:I

    iget-object v3, p0, Lawx;->a:Lawo;

    iget v3, v3, Lawo;->c:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lawx;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lawo;->g:I

    .line 1089
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-boolean v1, v1, Lawo;->a:Z

    iput-boolean v1, v0, Lawo;->a:Z

    .line 1090
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->d:I

    iput v1, v0, Lawo;->d:I

    .line 1091
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->e:I

    iput v1, v0, Lawo;->e:I

    .line 1092
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->b:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lawx;->a:Lawo;

    iget v2, v2, Lawo;->d:I

    iget-object v3, p0, Lawx;->a:Lawo;

    iget v3, v3, Lawo;->b:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lawx;->b:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lawo;->d:I

    .line 1094
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lawx;->a:Lawo;

    iget v2, v2, Lawo;->e:I

    iget-object v3, p0, Lawx;->a:Lawo;

    iget v3, v3, Lawo;->c:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lawx;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lawo;->e:I

    .line 1096
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget v1, v1, Lawo;->h:I

    iput v1, v0, Lawo;->h:I

    .line 1097
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->a:Ljava/lang/String;

    iput-object v1, v0, Lawo;->a:Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v0, v0, Lawo;->b:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->b:Lawv;

    iget-object v1, v1, Lawv;->a:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lawv;->a:Landroid/graphics/Paint$Align;

    .line 1099
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v0, v0, Lawo;->b:Lawv;

    iget v1, p0, Lawx;->k:I

    iput v1, v0, Lawv;->b:I

    .line 1100
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v0, v0, Lawo;->b:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->b:Lawv;

    iget-object v1, v1, Lawv;->a:Ljava/lang/String;

    iput-object v1, v0, Lawv;->a:Ljava/lang/String;

    .line 1101
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v0, v0, Lawo;->b:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->b:Lawv;

    iget v1, v1, Lawv;->a:I

    int-to-float v1, v1

    iget v2, p0, Lawx;->a:F

    mul-float/2addr v1, v2

    iget v2, p0, Lawx;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lawv;->a:I

    .line 1103
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v0, v0, Lawo;->b:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->b:Lawv;

    iget-object v1, v1, Lawv;->a:Landroid/graphics/Typeface;

    iput-object v1, v0, Lawv;->a:Landroid/graphics/Typeface;

    .line 1105
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->a:Lawv;

    iget-object v1, v1, Lawv;->a:Landroid/graphics/Paint$Align;

    iput-object v1, v0, Lawv;->a:Landroid/graphics/Paint$Align;

    .line 1106
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    iget v1, p0, Lawx;->k:I

    iput v1, v0, Lawv;->b:I

    .line 1107
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->a:Lawv;

    iget-object v1, v1, Lawv;->a:Ljava/lang/String;

    iput-object v1, v0, Lawv;->a:Ljava/lang/String;

    .line 1108
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->a:Lawv;

    iget v1, v1, Lawv;->a:I

    int-to-float v1, v1

    iget v2, p0, Lawx;->a:F

    mul-float/2addr v1, v2

    iget v2, p0, Lawx;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lawv;->a:I

    .line 1110
    iget-object v0, p0, Lawx;->b:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    iget-object v1, p0, Lawx;->a:Lawo;

    iget-object v1, v1, Lawo;->a:Lawv;

    iget-object v1, v1, Lawv;->a:Landroid/graphics/Typeface;

    iput-object v1, v0, Lawv;->a:Landroid/graphics/Typeface;

    .line 1111
    return-void
.end method

.method static synthetic e(Lawx;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lawx;->a:I

    return v0
.end method

.method static synthetic f(Lawx;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lawx;->c:I

    return v0
.end method

.method static synthetic g(Lawx;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lawx;->b:I

    return v0
.end method


# virtual methods
.method public a()D
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lawx;->a:Laxa;

    iget-wide v0, v0, Laxa;->a:D

    return-wide v0
.end method

.method public a()F
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lawx;->d:F

    return v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lawx;->x:I

    return v0
.end method

.method public a()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lawx;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lawx;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a()Lawo;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lawx;->d:Lawo;

    return-object v0
.end method

.method public a()Lawq;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lawx;->a:Lawq;

    return-object v0
.end method

.method public a(I)Lawq;
    .locals 3
    .parameter

    .prologue
    .line 1239
    iget-object v0, p0, Lawx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 1240
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lawq;->a(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1244
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lawx;Ljava/lang/String;Layx;)Lawy;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 741
    new-instance v0, Lawy;

    invoke-direct {v0, p1, p2, p3}, Lawy;-><init>(Lawx;Ljava/lang/String;Layx;)V

    return-object v0
.end method

.method public a()Lawz;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lawx;->a:Lawz;

    return-object v0
.end method

.method protected a(Lawx;Ljava/lang/String;Layx;)Laxb;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 737
    new-instance v0, Laxb;

    invoke-direct {v0, p1, p2, p3}, Laxb;-><init>(Lawx;Ljava/lang/String;Layx;)V

    return-object v0
.end method

.method public a()Laxn;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lawx;->a:Laxn;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lawx;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 1399
    iget-object v0, p0, Lawx;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 1400
    const/4 v2, 0x0

    iput-boolean v2, v0, Lawq;->c:Z

    goto :goto_0

    .line 1402
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    .line 1343
    iget-object v0, p0, Lawx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 1344
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lawq;->a(I)I

    move-result v2

    const/16 v3, 0x20

    if-le v2, v3, :cond_0

    .line 1345
    iput p1, v0, Lawq;->e:I

    goto :goto_0

    .line 1348
    :cond_1
    return-void
.end method

.method public final a(III)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1376
    iget-object v0, p0, Lawx;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 1377
    iget v1, v0, Lawq;->a:I

    sparse-switch v1, :sswitch_data_0

    .line 1392
    if-lt p1, v5, :cond_7

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lawq;->c:Z

    goto :goto_0

    .line 1379
    :sswitch_0
    invoke-static {p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPredictionOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_2
    iput v1, v0, Lawq;->e:I

    .line 1380
    invoke-static {p2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPredictionOn(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lawq;->b:Z

    .line 1381
    if-eqz p1, :cond_3

    move v1, v2

    :goto_4
    iput-boolean v1, v0, Lawq;->c:Z

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1379
    goto :goto_2

    :cond_2
    move v1, v3

    .line 1380
    goto :goto_3

    :cond_3
    move v1, v3

    .line 1381
    goto :goto_4

    .line 1385
    :sswitch_1
    if-ne p1, v5, :cond_4

    invoke-static {p3}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPredictionOn(I)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lawq;->c:Z

    .line 1387
    if-eq p2, p3, :cond_0

    iput p3, p0, Lawx;->B:I

    goto :goto_0

    :cond_6
    move v1, v3

    .line 1385
    goto :goto_5

    :cond_7
    move v1, v3

    .line 1392
    goto :goto_1

    .line 1396
    :cond_8
    return-void

    .line 1377
    :sswitch_data_0
    .sparse-switch
        -0x24 -> :sswitch_1
        -0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1171
    iget-object v0, p0, Lawx;->e:Lawq;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1172
    iget-object v0, p0, Lawx;->e:Lawq;

    iput p1, v0, Lawq;->e:I

    .line 1173
    iget-object v0, p0, Lawx;->e:Lawq;

    iput-object p2, v0, Lawq;->b:Ljava/lang/CharSequence;

    .line 1174
    iget-object v0, p0, Lawx;->e:Lawq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lawq;->j:Z

    .line 1181
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    iget-object v0, p0, Lawx;->e:Lawq;

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lawx;->e:Lawq;

    iput-boolean v1, v0, Lawq;->j:Z

    .line 1178
    iget-object v0, p0, Lawx;->e:Lawq;

    iput v1, v0, Lawq;->e:I

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Layx;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 815
    :try_start_0
    const-string v0, "Keyboard"

    const-string v1, "KEYS"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    if-nez v0, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 818
    :cond_1
    new-instance v1, Lazf;

    const/16 v2, 0x2c

    invoke-direct {v1, v0, v2}, Lazf;-><init>(Ljava/lang/String;I)V

    .line 819
    :goto_1
    invoke-virtual {v1}, Lazf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {v1}, Lazf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0, p2}, Lawx;->a(Lawx;Ljava/lang/String;Layx;)Lawq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lawx;->a(Lawq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 822
    :catch_0
    move-exception v0

    .line 823
    const-string v1, "UI-Keyboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lawq;)V
    .locals 1
    .parameter

    .prologue
    .line 751
    iget-object v0, p0, Lawx;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lawx;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_0
    iget v0, p1, Lawq;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 806
    invoke-static {p1}, Lawx;->a(Lawq;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lawx;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_1
    :goto_0
    return-void

    .line 756
    :sswitch_0
    iput-object p1, p0, Lawx;->e:Lawq;

    goto :goto_0

    .line 760
    :sswitch_1
    iput-object p1, p0, Lawx;->f:Lawq;

    goto :goto_0

    .line 764
    :sswitch_2
    iput-object p1, p0, Lawx;->g:Lawq;

    goto :goto_0

    .line 768
    :sswitch_3
    iget-object v0, p0, Lawx;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 770
    iput-object p1, p0, Lawx;->a:Lawq;

    .line 772
    iget-object v0, p0, Lawx;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 777
    :sswitch_4
    iget-object v0, p0, Lawx;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 778
    iput-object p1, p0, Lawx;->b:Lawq;

    .line 779
    iget-object v0, p0, Lawx;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 783
    :sswitch_5
    iput-object p1, p0, Lawx;->d:Lawq;

    goto :goto_0

    .line 796
    :sswitch_6
    iget-object v0, p0, Lawx;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 797
    iget-object v0, p0, Lawx;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 800
    :sswitch_7
    iget-object v0, p0, Lawx;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 801
    iget-object v0, p0, Lawx;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_2
    iput-object p1, p0, Lawx;->c:Lawq;

    goto :goto_0

    .line 754
    :sswitch_data_0
    .sparse-switch
        -0x3e -> :sswitch_6
        -0x3d -> :sswitch_6
        -0x2e -> :sswitch_5
        -0x25 -> :sswitch_1
        -0x24 -> :sswitch_6
        -0x1d -> :sswitch_4
        -0x1c -> :sswitch_2
        -0x18 -> :sswitch_7
        -0x14 -> :sswitch_6
        -0xf -> :sswitch_6
        -0x1 -> :sswitch_3
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1137
    sput-object p1, Lawx;->f:Ljava/util/List;

    .line 1138
    sput-object p2, Lawx;->g:Ljava/util/List;

    .line 1139
    iget-object v0, p0, Lawx;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 1140
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1141
    iget-object v0, p0, Lawx;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    invoke-static {v0}, Lawx;->b(Lawq;)V

    .line 1140
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1143
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1363
    iget-boolean v0, p0, Lawx;->a:Z

    if-eq p1, v0, :cond_1

    .line 1364
    iput-boolean p1, p0, Lawx;->a:Z

    .line 1365
    iget-object v0, p0, Lawx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 1366
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lawq;->a(I)I

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    .line 1367
    invoke-virtual {v0, p1}, Lawq;->b(Z)V

    goto :goto_0

    .line 1371
    :cond_1
    return-void
.end method

.method public a([Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    .line 427
    iget-object v0, p0, Lawx;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawq;

    .line 428
    iget v2, v0, Lawq;->a:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 436
    :pswitch_1
    iget v2, v0, Lawq;->a:I

    rsub-int/lit8 v2, v2, -0x1e

    aget-object v2, p1, v2

    iput-object v2, v0, Lawq;->b:Ljava/lang/CharSequence;

    goto :goto_0

    .line 442
    :cond_0
    return-void

    .line 428
    :pswitch_data_0
    .packed-switch -0x25
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lawx;->c:Z

    return v0
.end method

.method public a(IZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1251
    invoke-virtual {p0, p1}, Lawx;->a(I)Lawq;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lawx;->a(Lawq;Z)Z

    move-result v0

    return v0
.end method

.method public a(IZZ)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1261
    invoke-virtual {p0, p1}, Lawx;->a(I)Lawq;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lawx;->a(Lawq;ZZ)Z

    move-result v0

    return v0
.end method

.method public a(Lawq;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1269
    if-eqz p1, :cond_3

    .line 1270
    iget v2, p1, Lawq;->e:I

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 1271
    :cond_0
    iput-boolean p2, p1, Lawq;->b:Z

    .line 1272
    if-eqz p2, :cond_1

    iput v1, p1, Lawq;->e:I

    .line 1274
    :cond_1
    if-eqz v0, :cond_3

    .line 1275
    iget v1, p1, Lawq;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p1, Lawq;->a:I

    const/16 v2, -0x1d

    if-ne v1, v2, :cond_3

    .line 1277
    :cond_2
    iget v1, p1, Lawq;->e:I

    invoke-virtual {p0, v1}, Lawx;->a(I)V

    .line 1282
    :cond_3
    return v0
.end method

.method public a(Lawq;ZZ)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1295
    if-eqz p1, :cond_1

    .line 1297
    if-nez p2, :cond_3

    .line 1298
    iget v2, p1, Lawq;->e:I

    if-eqz v2, :cond_2

    .line 1299
    :goto_0
    iput-boolean v1, p1, Lawq;->b:Z

    .line 1300
    iput v1, p1, Lawq;->e:I

    move v1, v0

    .line 1307
    :goto_1
    if-eqz v1, :cond_1

    .line 1308
    iget v0, p1, Lawq;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p1, Lawq;->a:I

    const/16 v2, -0x1d

    if-ne v0, v2, :cond_1

    .line 1310
    :cond_0
    iget v0, p1, Lawq;->e:I

    invoke-virtual {p0, v0}, Lawx;->a(I)V

    .line 1315
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 1298
    goto :goto_0

    .line 1302
    :cond_3
    iget v2, p1, Lawq;->e:I

    if-eqz v2, :cond_4

    if-eqz p3, :cond_5

    :cond_4
    move v1, v0

    .line 1303
    :cond_5
    iput v0, p1, Lawq;->e:I

    goto :goto_1
.end method

.method public a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 1210
    iget-object v0, p0, Lawx;->a:Lawq;

    invoke-virtual {p0, v0, p1}, Lawx;->b(Lawq;Z)Z

    move-result v0

    return v0
.end method

.method public a(II)[I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 724
    iget-object v0, p0, Lawx;->a:[[I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lawx;->b()V

    .line 726
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lawx;->g()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lawx;->f()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 727
    iget v0, p0, Lawx;->n:I

    div-int v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lawx;->m:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    .line 728
    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 730
    iget-object v1, p0, Lawx;->a:[[I

    aget-object v0, v1, v0

    .line 733
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public b()D
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lawx;->a:Laxa;

    iget-wide v0, v0, Laxa;->b:D

    return-wide v0
.end method

.method public b()F
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lawx;->e:F

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lawx;->y:I

    return v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lawx;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lawx;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public b()Lawo;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lawx;->e:Lawo;

    return-object v0
.end method

.method public b()Lawq;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lawx;->b:Lawq;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lawx;->a:Ljava/util/List;

    return-object v0
.end method

.method protected b(Landroid/content/Context;Layx;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 831
    :try_start_0
    const-string v0, "Keyboard"

    const-string v1, "COLS"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    if-nez v0, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    iget-object v1, p0, Lawx;->a:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 835
    new-instance v6, Lazf;

    const/16 v1, 0x2c

    invoke-direct {v6, v0, v1}, Lazf;-><init>(Ljava/lang/String;I)V

    .line 837
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lazf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {v6}, Lazf;->a()Ljava/lang/String;

    move-result-object v0

    .line 839
    const-string v1, "KEYS"

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 840
    if-eqz v4, :cond_2

    .line 842
    invoke-virtual {p0, p0, v0, p2}, Lawx;->a(Lawx;Ljava/lang/String;Layx;)Lawy;

    move-result-object v1

    .line 843
    iget v0, v1, Lawy;->f:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lawx;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Lawy;->f:I

    add-int/2addr v2, v0

    .line 844
    :cond_3
    iget-object v0, p0, Lawx;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Lawy;->e:I

    add-int/2addr v3, v0

    .line 845
    new-instance v7, Lazf;

    const/16 v0, 0x2c

    invoke-direct {v7, v4, v0}, Lazf;-><init>(Ljava/lang/String;I)V

    .line 847
    :goto_2
    invoke-virtual {v7}, Lazf;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 848
    invoke-virtual {v7}, Lazf;->a()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lawx;->a(Lawy;IILjava/lang/String;Layx;)Lawq;

    move-result-object v0

    .line 849
    invoke-virtual {p0, v0}, Lawx;->a(Lawq;)V

    .line 850
    iget v4, v0, Lawq;->d:I

    iget v0, v0, Lawq;->c:I

    add-int/2addr v0, v4

    add-int/2addr v3, v0

    .line 851
    goto :goto_2

    .line 852
    :cond_4
    iget v0, v1, Lawy;->c:I

    add-int/2addr v0, v2

    .line 853
    iget v1, v1, Lawy;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int v2, v0, v1

    .line 854
    goto :goto_1

    .line 855
    :catch_0
    move-exception v0

    .line 856
    const-string v1, "UI-Keyboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lawx;->d:Z

    return v0
.end method

.method public b(IZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1257
    invoke-virtual {p0, p1}, Lawx;->a(I)Lawq;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lawx;->b(Lawq;Z)Z

    move-result v0

    return v0
.end method

.method public final b(Lawq;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1291
    if-eqz p1, :cond_1

    iget v2, p1, Lawq;->e:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public b(Lawq;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lawx;->a(Lawq;ZZ)Z

    move-result v0

    return v0
.end method

.method public b(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 1214
    iget-object v0, p0, Lawx;->a:Lawq;

    invoke-virtual {p0, v0, p1}, Lawx;->a(Lawq;Z)Z

    move-result v0

    return v0
.end method

.method public c()D
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lawx;->a:Laxa;

    iget-wide v0, v0, Laxa;->c:D

    return-wide v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lawx;->a:F

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lawx;->z:I

    return v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lawx;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public c()Lawo;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lawx;->a:Lawo;

    return-object v0
.end method

.method public c()Lawq;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lawx;->d:Lawq;

    return-object v0
.end method

.method protected c(Landroid/content/Context;Layx;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 864
    :try_start_0
    const-string v0, "Keyboard"

    const-string v1, "ROWS"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    if-nez v0, :cond_1

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget-object v1, p0, Lawx;->a:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 868
    new-instance v6, Lazf;

    const/16 v1, 0x2c

    invoke-direct {v6, v0, v1}, Lazf;-><init>(Ljava/lang/String;I)V

    .line 870
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lazf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v6}, Lazf;->a()Ljava/lang/String;

    move-result-object v0

    .line 872
    const-string v1, "KEYS"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 873
    if-eqz v4, :cond_2

    .line 875
    invoke-virtual {p0, p0, v0, p2}, Lawx;->a(Lawx;Ljava/lang/String;Layx;)Laxb;

    move-result-object v1

    .line 876
    iget-object v0, p0, Lawx;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lawx;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_3
    iget v0, v1, Laxb;->i:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lawx;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, v1, Laxb;->i:I

    add-int v3, v0, v2

    .line 878
    :cond_4
    iget-object v0, p0, Lawx;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Laxb;->h:I

    add-int/2addr v2, v0

    .line 879
    new-instance v7, Lazf;

    const/16 v0, 0x2c

    invoke-direct {v7, v4, v0}, Lazf;-><init>(Ljava/lang/String;I)V

    .line 881
    :goto_2
    invoke-virtual {v7}, Lazf;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 882
    invoke-virtual {v7}, Lazf;->a()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lawx;->a(Laxb;IILjava/lang/String;Layx;)Lawq;

    move-result-object v0

    .line 883
    invoke-virtual {p0, v0}, Lawx;->a(Lawq;)V

    .line 884
    iget v4, v0, Lawq;->d:I

    iget v0, v0, Lawq;->b:I

    add-int/2addr v0, v4

    add-int/2addr v2, v0

    .line 885
    goto :goto_2

    .line 886
    :cond_5
    iget v0, v1, Laxb;->g:I

    add-int/2addr v0, v3

    .line 887
    iget v1, v1, Laxb;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int v3, v0, v1

    .line 888
    goto :goto_1

    .line 889
    :catch_0
    move-exception v0

    .line 890
    const-string v1, "UI-Keyboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lawx;->a:Lawq;

    invoke-virtual {p0, v0}, Lawx;->b(Lawq;)Z

    move-result v0

    return v0
.end method

.method public d()F
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lawx;->b:F

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lawx;->A:I

    return v0
.end method

.method public d()Lawo;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lawx;->b:Lawo;

    return-object v0
.end method

.method public d()Lawq;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lawx;->e:Lawq;

    return-object v0
.end method

.method protected d(Landroid/content/Context;Layx;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 905
    :try_start_0
    invoke-virtual {p2}, Layx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Layx;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laox;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lawx;->b:Ljava/lang/String;

    .line 907
    const-string v0, "Keyboard"

    const-string v1, "IME"

    const-string v2, ""

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lawx;->a:Ljava/lang/String;

    .line 913
    const-string v0, "Keyboard"

    const-string v1, "W"

    iget v2, p0, Lawx;->h:I

    iget v3, p0, Lawx;->h:I

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->g:I

    .line 914
    const-string v0, "Keyboard"

    const-string v1, "H"

    iget v2, p0, Lawx;->h:I

    iget v3, p0, Lawx;->g:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lawx;->a:Laxa;

    iget v1, v1, Laxa;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lawx;->f:I

    .line 917
    iget v0, p0, Lawx;->i:I

    int-to-float v0, v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 918
    iget v1, p0, Lawx;->f:I

    if-le v1, v0, :cond_0

    .line 919
    iput v0, p0, Lawx;->f:I

    .line 924
    :cond_0
    const-string v1, "Keyboard"

    const-string v2, "PADDINGS"

    iget v3, p0, Lawx;->h:I

    iget v4, p0, Lawx;->f:I

    sget-object v5, Laxq;->a:Landroid/graphics/Rect;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lawx;->a:Landroid/graphics/Rect;

    .line 927
    const-string v0, "Keyboard"

    const-string v1, "HZOOMRATE"

    const/high16 v2, 0x3f80

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lawx;->a:F

    .line 928
    const-string v0, "Keyboard"

    const-string v1, "WZOOMRATE"

    const/high16 v2, 0x3f80

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lawx;->b:F

    .line 929
    const-string v0, "Keyboard"

    const-string v1, "US_TEXT_COLOR"

    const/high16 v2, -0x100

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lawx;->k:I

    .line 930
    const-string v0, "Keyboard"

    const-string v1, "S_TEXT_COLOR"

    const/high16 v2, -0x100

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lawx;->l:I

    .line 931
    const-string v0, "Keyboard"

    const-string v1, "CHANGE_UNSUGGESTED"

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lawx;->d:Z

    .line 933
    const-string v0, "Keyboard"

    const-string v1, "H_GAP"

    iget v2, p0, Lawx;->h:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->a:I

    .line 934
    const-string v0, "Keyboard"

    const-string v1, "H_GAP_QWERTY"

    iget v2, p0, Lawx;->h:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->b:I

    .line 935
    const-string v0, "Keyboard"

    const-string v1, "V_GAP"

    iget v2, p0, Lawx;->f:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->c:I

    .line 936
    const-string v0, "Keyboard"

    const-string v1, "TOUCH_MODE"

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lawx;->C:I

    .line 938
    const-string v0, "Keyboard"

    const-string v1, "BG_IMAGE"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lawx;->a:Landroid/graphics/drawable/Drawable;

    .line 939
    iget-object v0, p0, Lawx;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 940
    const-string v0, "Keyboard"

    const-string v1, "BG_IMAGE"

    invoke-static {p2, v0, v1}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lawx;->a:Landroid/graphics/drawable/Drawable;

    .line 942
    :cond_1
    iget-object v0, p0, Lawx;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 943
    const-string v0, "Keyboard"

    const-string v1, "BG_COLOR"

    invoke-static {p2, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    iput-object v0, p0, Lawx;->a:Landroid/graphics/drawable/Drawable;

    .line 946
    :cond_2
    const/high16 v0, 0x3f00

    iput v0, p0, Lawx;->e:F

    .line 951
    const-string v0, "Key"

    const-string v1, "W"

    iget v2, p0, Lawx;->h:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->d:I

    .line 952
    const-string v0, "Key"

    const-string v1, "H"

    iget v2, p0, Lawx;->f:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->e:I

    .line 954
    const-string v0, "Key"

    invoke-static {p2, v0}, Laxq;->a(Layx;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lawx;->b:Landroid/graphics/drawable/Drawable;

    .line 956
    const-string v0, "Key"

    const-string v1, "VERTICAL_CORRECTION"

    sget v2, Laox;->a:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->q:I

    .line 958
    const-string v0, "Key"

    const-string v1, "SHADOW_RADIUS"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lawx;->d:F

    .line 959
    const-string v0, "Key"

    const-string v1, "SHADOW_COLOR"

    const/high16 v2, -0x4500

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lawx;->p:I

    .line 962
    iget v0, p0, Lawx;->d:I

    int-to-float v0, v0

    sget v1, Lawx;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lawx;->o:I

    .line 963
    iget v0, p0, Lawx;->o:I

    iget v1, p0, Lawx;->o:I

    mul-int/2addr v0, v1

    iput v0, p0, Lawx;->o:I

    .line 966
    const-string v0, "Keyboard"

    const-string v1, "FG_STYLE"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_3

    .line 969
    iget-object v1, p0, Lawx;->a:Lawm;

    invoke-virtual {v1, v0}, Lawm;->a(Ljava/lang/String;)Lawo;

    move-result-object v0

    iput-object v0, p0, Lawx;->a:Lawo;

    .line 971
    :cond_3
    iget-object v0, p0, Lawx;->a:Lawo;

    if-eqz v0, :cond_4

    .line 972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lawx;->c:Z

    .line 973
    invoke-direct {p0}, Lawx;->d()V

    .line 974
    invoke-direct {p0}, Lawx;->c()V

    .line 977
    :cond_4
    const-string v0, "Key"

    const-string v1, "FG_STYLE"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 978
    if-eqz v0, :cond_5

    .line 979
    iget-object v1, p0, Lawx;->a:Lawm;

    invoke-virtual {v1, v0}, Lawm;->a(Ljava/lang/String;)Lawo;

    move-result-object v0

    iput-object v0, p0, Lawx;->d:Lawo;

    .line 982
    :cond_5
    const-string v0, "Key"

    const-string v1, "POPUP_BG_STYLE"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 983
    if-eqz v0, :cond_6

    .line 984
    iget-object v1, p0, Lawx;->a:Lawm;

    invoke-virtual {v1}, Lawm;->a()Layx;

    move-result-object v1

    invoke-static {v1}, Laxm;->a(Layx;)Laxm;

    move-result-object v1

    invoke-virtual {v1, v0}, Laxm;->a(Ljava/lang/String;)Laxn;

    move-result-object v0

    iput-object v0, p0, Lawx;->a:Laxn;

    .line 988
    :cond_6
    const-string v0, "Key"

    const-string v1, "POPUP_FG_STYLE"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_7

    .line 990
    iget-object v1, p0, Lawx;->a:Lawm;

    invoke-virtual {v1, v0}, Lawm;->a(Ljava/lang/String;)Lawo;

    move-result-object v0

    iput-object v0, p0, Lawx;->e:Lawo;

    .line 996
    :cond_7
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v0

    invoke-virtual {v0}, Lavs;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const-string v0, "CandidateCodeView"

    .line 998
    :goto_0
    const-string v1, "X"

    iget v2, p0, Lawx;->h:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lawx;->r:I

    .line 999
    const-string v1, "Y"

    iget v2, p0, Lawx;->f:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lawx;->s:I

    .line 1000
    const-string v1, "W"

    iget v2, p0, Lawx;->h:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lawx;->t:I

    .line 1001
    const-string v1, "H"

    iget v2, p0, Lawx;->f:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lawx;->u:I

    .line 1002
    const-string v1, "ROWS"

    const/4 v2, 0x4

    invoke-static {p2, v0, v1, v2}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lawx;->v:I

    .line 1003
    const-string v1, "COLS"

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lawx;->w:I

    .line 1006
    const-string v0, "VoiceInputView"

    const-string v1, "X"

    iget v2, p0, Lawx;->h:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->x:I

    .line 1007
    const-string v0, "VoiceInputView"

    const-string v1, "Y"

    iget v2, p0, Lawx;->f:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->y:I

    .line 1008
    const-string v0, "VoiceInputView"

    const-string v1, "W"

    iget v2, p0, Lawx;->h:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->z:I

    .line 1009
    const-string v0, "VoiceInputView"

    const-string v1, "H"

    iget v2, p0, Lawx;->f:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawx;->A:I

    .line 1011
    const-string v0, "HW_RECT"

    invoke-virtual {p2, v0}, Layx;->a(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v6, :cond_8

    .line 1012
    new-instance v0, Lawz;

    invoke-direct {v0}, Lawz;-><init>()V

    iput-object v0, p0, Lawx;->a:Lawz;

    .line 1013
    iget-object v0, p0, Lawx;->a:Lawz;

    const-string v1, "HW_RECT"

    const-string v2, "X"

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lawz;->a:F

    .line 1014
    iget-object v0, p0, Lawx;->a:Lawz;

    const-string v1, "HW_RECT"

    const-string v2, "Y"

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lawz;->b:F

    .line 1015
    iget-object v0, p0, Lawx;->a:Lawz;

    const-string v1, "HW_RECT"

    const-string v2, "W"

    const/high16 v3, 0x3f80

    invoke-static {p2, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lawz;->c:F

    .line 1016
    iget-object v0, p0, Lawx;->a:Lawz;

    const-string v1, "HW_RECT"

    const-string v2, "H"

    const/high16 v3, 0x3f80

    invoke-static {p2, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lawz;->d:F

    .line 1017
    const-string v0, "HW_RECT"

    const-string v1, "PADDINGS"

    iget v2, p0, Lawx;->h:I

    const/4 v3, 0x0

    invoke-static {p2, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lawx;->b:Landroid/graphics/Rect;

    .line 1018
    const-string v0, "HW_RECT"

    const-string v1, "BG_IMAGE"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lawx;->c:Landroid/graphics/drawable/Drawable;

    .line 1024
    :cond_8
    invoke-virtual {p0, p1, p2}, Lawx;->c(Landroid/content/Context;Layx;)V

    .line 1025
    invoke-virtual {p0, p1, p2}, Lawx;->b(Landroid/content/Context;Layx;)V

    .line 1026
    invoke-virtual {p0, p1, p2}, Lawx;->a(Landroid/content/Context;Layx;)V

    .line 1035
    :goto_1
    return-void

    .line 996
    :cond_9
    const-string v0, "CodeView"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1027
    :catch_0
    move-exception v0

    .line 1028
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lawx;->a(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1030
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lawx;->a:Lawq;

    invoke-virtual {p0, v0}, Lawx;->b(Lawq;)Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lawx;->B:I

    return v0
.end method

.method public e()Lawq;
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lawx;->f:Lawq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawx;->f:Lawq;

    iget-boolean v0, v0, Lawq;->b:Z

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lawx;->f:Lawq;

    invoke-virtual {v0}, Lawq;->a()V

    .line 1195
    iget-object v0, p0, Lawx;->f:Lawq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawq;->a(Z)V

    .line 1197
    :cond_0
    iget-object v0, p0, Lawx;->f:Lawq;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lawx;->f:I

    return v0
.end method

.method public f()Lawq;
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lawx;->g:Lawq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lawx;->g:Lawq;

    iget-boolean v0, v0, Lawq;->b:Z

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lawx;->g:Lawq;

    invoke-virtual {v0}, Lawq;->a()V

    .line 1203
    iget-object v0, p0, Lawx;->g:Lawq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lawq;->a(Z)V

    .line 1205
    :cond_0
    iget-object v0, p0, Lawx;->g:Lawq;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lawx;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lawx;->p:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lawx;->q:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lawx;->h:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lawx;->r:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Lawx;->s:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lawx;->t:I

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lawx;->u:I

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lawx;->v:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 591
    iget v0, p0, Lawx;->w:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lawx;->a:Laxa;

    iget v0, v0, Laxa;->b:I

    return v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lawx;->a:Laxa;

    iget v0, v0, Laxa;->c:I

    return v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 896
    iget v0, p0, Lawx;->C:I

    return v0
.end method
