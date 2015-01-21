.class Loe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lng;


# instance fields
.field final synthetic a:Loc;


# direct methods
.method constructor <init>(Loc;)V
    .locals 0
    .parameter

    .prologue
    .line 1067
    iput-object p1, p0, Loe;->a:Loc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 1091
    return-void
.end method

.method public a(Ljava/lang/Integer;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1071
    iget-object v0, p0, Loe;->a:Loc;

    iget-object v0, v0, Loc;->a:Lnr;

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

    .line 1072
    if-eqz p2, :cond_0

    iget-object v0, p0, Loe;->a:Loc;

    iget-object v0, v0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Loe;->a:Loc;

    iget-object v0, v0, Loc;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 1074
    iget-object v1, p0, Loe;->a:Loc;

    iget-object v1, v1, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    .line 1075
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v2, v1, :cond_0

    .line 1076
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, v1, v0

    .line 1077
    iget-object v1, p0, Loe;->a:Loc;

    iget-object v1, v1, Loc;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1078
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1079
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lok;

    .line 1080
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Loe;->a:Loc;

    iget-object v2, v2, Loc;->a:Lnr;

    invoke-static {v2}, Lnr;->a(Lnr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1081
    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1082
    iget-object v0, v0, Lok;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1086
    :cond_0
    return-void
.end method
