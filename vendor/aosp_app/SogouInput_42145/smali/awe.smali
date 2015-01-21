.class public Lawe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Landroid/graphics/drawable/StateListDrawable;

.field private a:Lawt;

.field private a:Lawv;

.field private a:Laxn;

.field private b:I

.field private b:Landroid/graphics/Rect;

.field private b:Lawt;

.field private b:Lawv;

.field private c:I

.field private c:Lawv;

.field private d:I

.field private d:Lawv;

.field private e:Lawv;


# direct methods
.method constructor <init>(Layx;Ljava/lang/String;Lawm;Lawf;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "HORIZONTAL_SPACING"

    sget v1, Laox;->a:I

    invoke-static {p1, p2, v0, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawe;->a:I

    .line 114
    const-string v0, "VERTICAL_SPACING"

    sget v1, Laox;->a:I

    invoke-static {p1, p2, v0, v1, v4}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lawe;->b:I

    .line 115
    const-string v0, "H"

    sget v1, Laox;->a:I

    const/high16 v2, 0x3e20

    invoke-static {p1, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;IF)I

    move-result v0

    iput v0, p0, Lawe;->c:I

    .line 116
    const-string v0, "PADDINGS"

    sget v1, Laox;->a:I

    sget-object v2, Laxq;->a:Landroid/graphics/Rect;

    invoke-static {p1, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lawe;->a:Landroid/graphics/Rect;

    .line 117
    const-string v0, "MARGINS"

    sget v1, Laox;->a:I

    sget-object v2, Laxq;->a:Landroid/graphics/Rect;

    invoke-static {p1, p2, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lawe;->b:Landroid/graphics/Rect;

    .line 119
    const-string v0, "BG_IMAGE"

    invoke-static {p1, p2, v0, v4}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lawe;->a:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v0, p0, Lawe;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 121
    const-string v0, "BG_COLOR"

    invoke-static {p1, p2, v0}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    iput-object v0, p0, Lawe;->a:Landroid/graphics/drawable/Drawable;

    .line 124
    :cond_0
    invoke-static {p1, p2}, Laxq;->a(Layx;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lawe;->a:Landroid/graphics/drawable/StateListDrawable;

    .line 126
    const-string v0, "POPUP_BG_STYLE"

    invoke-static {p1, p2, v0, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lavs;->a()Lavs;

    move-result-object v1

    const-string v2, "template.ini"

    invoke-virtual {v1, v2}, Lavs;->a(Ljava/lang/CharSequence;)Layx;

    move-result-object v1

    invoke-static {v1}, Laxm;->a(Layx;)Laxm;

    move-result-object v1

    invoke-virtual {v1, v0}, Laxm;->a(Ljava/lang/String;)Laxn;

    move-result-object v0

    iput-object v0, p0, Lawe;->a:Laxn;

    .line 132
    :cond_1
    const-string v0, "TEXT_STYLE"

    invoke-static {p1, p2, v0, v3}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawv;)Lawv;

    move-result-object v0

    iput-object v0, p0, Lawe;->a:Lawv;

    .line 133
    const-string v0, "US_TEXT_STYLE"

    invoke-static {p1, p2, v0, v3}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawv;)Lawv;

    move-result-object v0

    iput-object v0, p0, Lawe;->b:Lawv;

    .line 134
    const-string v0, "TEXT_HIGHLIGHT_STYLE"

    invoke-static {p1, p2, v0, v3}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawv;)Lawv;

    move-result-object v0

    iput-object v0, p0, Lawe;->c:Lawv;

    .line 135
    const-string v0, "POPUP_TEXT_STYLE"

    invoke-static {p1, p2, v0, v3}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawv;)Lawv;

    move-result-object v0

    iput-object v0, p0, Lawe;->d:Lawv;

    .line 136
    const-string v0, "TEXT_SHADOW_STYLE"

    invoke-static {p1, p2, v0, v3}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawt;)Lawt;

    move-result-object v0

    iput-object v0, p0, Lawe;->a:Lawt;

    .line 137
    const-string v0, "LABEL_SHADOW_STYLE"

    invoke-static {p1, p2, v0, v3}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawt;)Lawt;

    move-result-object v0

    iput-object v0, p0, Lawe;->b:Lawt;

    .line 139
    const-string v0, "TEXT_STYLE_SELECTED"

    iget-object v1, p0, Lawe;->a:Lawv;

    invoke-static {p1, p2, v0, v1}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawv;)Lawv;

    move-result-object v0

    iput-object v0, p0, Lawe;->e:Lawv;

    .line 141
    iget v0, p4, Lawf;->a:I

    iput v0, p0, Lawe;->d:I

    .line 142
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lawe;->c:I

    return v0
.end method

.method public a()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lawe;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lawe;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a()Lawt;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lawe;->b:Lawt;

    return-object v0
.end method

.method public a()Lawv;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lawe;->a:Lawv;

    return-object v0
.end method

.method public a()Laxn;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lawe;->a:Laxn;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lawe;->d:I

    return v0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lawe;->b:Landroid/graphics/Rect;

    return-object v0
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lawe;->a:Landroid/graphics/drawable/StateListDrawable;

    return-object v0
.end method

.method public b()Lawv;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lawe;->e:Lawv;

    return-object v0
.end method

.method public c()Lawv;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lawe;->b:Lawv;

    return-object v0
.end method

.method public d()Lawv;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lawe;->c:Lawv;

    return-object v0
.end method

.method public e()Lawv;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lawe;->d:Lawv;

    return-object v0
.end method
