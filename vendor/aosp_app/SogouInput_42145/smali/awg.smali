.class public Lawg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Landroid/graphics/Rect;

.field private a:Landroid/graphics/drawable/Drawable;

.field private a:Lawv;

.field private b:I

.field private b:Lawv;

.field private c:I


# direct methods
.method constructor <init>(Layx;Lawf;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "ComposingView"

    const-string v1, "BG_COLOR"

    const v2, -0x371f18

    invoke-static {p1, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lawg;->a:I

    .line 57
    const-string v0, "ComposingView"

    const-string v1, "FG_COLOR"

    const/high16 v2, -0x100

    invoke-static {p1, v0, v1, v2}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lawg;->b:I

    .line 58
    const-string v0, "ComposingView"

    const-string v1, "TEXT_STYLE"

    invoke-static {p1, v0, v1, v3}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawv;)Lawv;

    move-result-object v0

    iput-object v0, p0, Lawg;->b:Lawv;

    .line 59
    const-string v0, "ComposingView"

    const-string v1, "COMMITTED_TEXT_STYLE"

    invoke-static {p1, v0, v1, v3}, Lawm;->a(Layx;Ljava/lang/String;Ljava/lang/String;Lawv;)Lawv;

    move-result-object v0

    iput-object v0, p0, Lawg;->a:Lawv;

    .line 60
    iget v0, p2, Lawf;->a:I

    iput v0, p0, Lawg;->c:I

    .line 61
    const-string v0, "ComposingView"

    const-string v1, "BG_IMAGE"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Laxq;->b(Layx;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lawg;->a:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-object v0, p0, Lawg;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "ComposingView"

    const-string v1, "BG_COLOR"

    invoke-static {p1, v0, v1}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    iput-object v0, p0, Lawg;->a:Landroid/graphics/drawable/Drawable;

    .line 65
    :cond_0
    const-string v0, "ComposingView"

    const-string v1, "PADDINGS"

    sget v2, Laox;->a:I

    sget-object v3, Laxq;->a:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1, v2, v3}, Laxq;->a(Layx;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lawg;->a:Landroid/graphics/Rect;

    .line 66
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lawg;->a:I

    return v0
.end method

.method public a()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lawg;->a:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lawg;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public a()Lawv;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lawg;->a:Lawv;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lawg;->b:I

    return v0
.end method

.method public b()Lawv;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lawg;->b:Lawv;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lawg;->c:I

    return v0
.end method
