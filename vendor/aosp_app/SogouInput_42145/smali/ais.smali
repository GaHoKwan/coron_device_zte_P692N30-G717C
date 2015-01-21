.class Lais;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lahx;


# instance fields
.field final synthetic a:Laiq;


# direct methods
.method constructor <init>(Laiq;)V
    .locals 0
    .parameter

    .prologue
    .line 1377
    iput-object p1, p0, Lais;->a:Laiq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 1399
    return-void
.end method

.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1381
    iget-object v0, p0, Lais;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

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

    invoke-static {v0, v1}, Laia;->a(Laia;Ljava/lang/String;)V

    .line 1382
    if-eqz p2, :cond_0

    iget-object v0, p0, Lais;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lais;->a:Laiq;

    iget-object v0, v0, Laiq;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1384
    iget-object v1, p0, Lais;->a:Laiq;

    iget-object v1, v1, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 1385
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 1386
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, v1, v0

    .line 1387
    iget-object v1, p0, Lais;->a:Laiq;

    iget-object v1, v1, Laiq;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1388
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1389
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiu;

    .line 1390
    iget-object v0, v0, Laiu;->a:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1394
    :cond_0
    return-void
.end method
