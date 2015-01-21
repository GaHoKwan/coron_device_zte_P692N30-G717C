.class Loh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lng;


# instance fields
.field final synthetic a:Lof;


# direct methods
.method constructor <init>(Lof;)V
    .locals 0
    .parameter

    .prologue
    .line 1234
    iput-object p1, p0, Loh;->a:Lof;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 1258
    return-void
.end method

.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1238
    iget-object v0, p0, Loh;->a:Lof;

    iget-object v0, v0, Lof;->a:Lnr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnr;->a(Lnr;Ljava/lang/String;)V

    .line 1239
    if-eqz p2, :cond_0

    iget-object v0, p0, Loh;->a:Lof;

    iget-object v0, v0, Lof;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Loh;->a:Lof;

    iget-object v0, v0, Lof;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 1241
    iget-object v1, p0, Loh;->a:Lof;

    iget-object v1, v1, Lof;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    .line 1242
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 1243
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, v1, v0

    .line 1244
    iget-object v1, p0, Loh;->a:Lof;

    iget-object v1, v1, Lof;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1246
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lok;

    .line 1247
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Loh;->a:Lof;

    iget-object v2, v2, Lof;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1248
    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1249
    iget-object v0, v0, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1253
    :cond_0
    return-void
.end method
