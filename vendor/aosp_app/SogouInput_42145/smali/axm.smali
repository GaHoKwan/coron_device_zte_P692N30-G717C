.class public Laxm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Laxm;


# instance fields
.field private a:Laxn;

.field private a:Layx;

.field private a:Ljava/util/Map;


# direct methods
.method private constructor <init>(Layx;)V
    .locals 1
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p1, p0, Laxm;->a:Layx;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laxm;->a:Ljava/util/Map;

    .line 129
    invoke-direct {p0}, Laxm;->a()Laxn;

    move-result-object v0

    iput-object v0, p0, Laxm;->a:Laxn;

    .line 130
    return-void
.end method

.method public static a(Layx;)Laxm;
    .locals 1
    .parameter

    .prologue
    .line 24
    sget-object v0, Laxm;->a:Laxm;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Laxm;

    invoke-direct {v0, p0}, Laxm;-><init>(Layx;)V

    sput-object v0, Laxm;->a:Laxm;

    .line 27
    :cond_0
    sget-object v0, Laxm;->a:Laxm;

    return-object v0
.end method

.method private a()Laxn;
    .locals 4

    .prologue
    const/high16 v3, 0x3e80

    .line 114
    new-instance v0, Laxn;

    invoke-direct {v0}, Laxn;-><init>()V

    .line 115
    const v1, -0x41b33333

    sget v2, Laox;->a:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Laxn;->a:I

    .line 116
    sget-object v1, Laxq;->a:Landroid/graphics/Rect;

    iput-object v1, v0, Laxn;->a:Landroid/graphics/Rect;

    .line 117
    sget v1, Laox;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Laxn;->b:I

    .line 118
    sget v1, Laox;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Laxn;->c:I

    .line 119
    const/4 v1, -0x1

    iput v1, v0, Laxn;->d:I

    .line 120
    const/16 v1, 0x46

    iput v1, v0, Laxn;->e:I

    .line 121
    const/16 v1, 0x3c

    iput v1, v0, Laxn;->f:I

    .line 122
    iget-object v1, p0, Laxm;->a:Layx;

    const-string v2, "PopupBG"

    const-string v3, "BG_IMAGE"

    invoke-static {v1, v2, v3}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Laxn;->a:Landroid/graphics/drawable/Drawable;

    .line 123
    return-object v0
.end method

.method private a(Laxn;Laxn;Ljava/lang/String;Layx;)Laxn;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    const-string v0, "OFFSET"

    sget v1, Laox;->a:I

    iget v2, p2, Laxn;->a:I

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Laxn;->a:I

    .line 100
    const-string v0, "PADDINGS"

    sget v1, Laox;->a:I

    sget-object v2, Laxq;->a:Landroid/graphics/Rect;

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p1, Laxn;->a:Landroid/graphics/Rect;

    .line 101
    const-string v0, "MIN_HEIGHT"

    sget v1, Laox;->a:I

    iget v2, p2, Laxn;->b:I

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Laxn;->b:I

    .line 102
    const-string v0, "MIN_WIDTH"

    sget v1, Laox;->a:I

    iget v2, p2, Laxn;->c:I

    invoke-static {p4, p3, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Laxn;->c:I

    .line 103
    const-string v0, "ALPHA"

    iget v1, p2, Laxn;->d:I

    invoke-static {p4, p3, v0, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Laxn;->d:I

    .line 104
    const-string v0, "DELAY_BEFORE_SHOW"

    iget v1, p2, Laxn;->e:I

    invoke-static {p4, p3, v0, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Laxn;->e:I

    .line 105
    const-string v0, "DELAY_BEFORE_HIDE"

    iget v1, p2, Laxn;->f:I

    invoke-static {p4, p3, v0, v1}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Laxn;->f:I

    .line 106
    const-string v0, "BG_IMAGE"

    invoke-static {p4, p3, v0}, Laxq;->c(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Laxn;->a:Landroid/graphics/drawable/Drawable;

    .line 107
    iget-object v0, p1, Laxn;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 108
    iget-object v0, p2, Laxn;->a:Landroid/graphics/drawable/Drawable;

    iput-object v0, p1, Laxn;->a:Landroid/graphics/drawable/Drawable;

    .line 110
    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Laxn;
    .locals 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Laxm;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn;

    .line 69
    if-nez v0, :cond_0

    .line 70
    iget-object v1, p0, Laxm;->a:Laxn;

    .line 71
    invoke-virtual {v1}, Laxn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxn;

    .line 72
    iput-object p1, v0, Laxn;->a:Ljava/lang/String;

    .line 73
    iget-object v2, p0, Laxm;->a:Layx;

    invoke-direct {p0, v0, v1, p1, v2}, Laxm;->a(Laxn;Laxn;Ljava/lang/String;Layx;)Laxn;

    move-result-object v0

    .line 74
    iget-object v1, p0, Laxm;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Laxm;->a:Laxm;

    .line 81
    return-void
.end method
