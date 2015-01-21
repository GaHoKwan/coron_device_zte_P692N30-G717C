.class public Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    const-string v0, "1"

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a:Ljava/lang/String;

    .line 18
    const-string v0, "#FF6600"

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->b:Ljava/lang/String;

    .line 19
    const-string v0, "4"

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->c:Ljava/lang/String;

    .line 20
    const-string v0, "2"

    iput-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->d:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a:Z

    .line 26
    iput-boolean v1, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->b:Z

    .line 14
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setImgAD(Z)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->b:Z

    .line 82
    return-void
.end method

.method public setImgSize(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRequireSize(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    if-gt p1, p2, :cond_0

    :goto_0
    iput p1, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a:I

    .line 66
    return-void

    :cond_0
    move p1, p2

    .line 65
    goto :goto_0
.end method

.method public setRoundCornered(Z)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a:Z

    .line 74
    return-void
.end method

.method public setShapeCornerRadius(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->d:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setShapeStrokeColor(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->b:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setShapeStrokeWidth(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->c:Ljava/lang/String;

    .line 50
    return-void
.end method
