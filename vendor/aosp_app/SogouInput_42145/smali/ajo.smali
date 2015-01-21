.class Lajo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lajm;


# direct methods
.method constructor <init>(Lajm;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lajo;->a:Lajm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 201
    iget-object v0, p0, Lajo;->a:Lajm;

    invoke-virtual {v0}, Lajm;->b()V

    .line 202
    iget-object v0, p0, Lajo;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 204
    iget-object v0, p0, Lajo;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Lakz;

    move-result-object v0

    invoke-virtual {v0}, Lakz;->a()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lajo;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 208
    :cond_1
    iget-object v0, p0, Lajo;->a:Lajm;

    invoke-static {v0}, Lajm;->a(Lajm;)Lakz;

    move-result-object v0

    invoke-virtual {v0}, Lakz;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lajo;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 211
    if-eqz v1, :cond_2

    .line 215
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 218
    :cond_2
    iget-object v1, p0, Lajo;->a:Lajm;

    invoke-static {v1}, Lajm;->a(Lajm;)Lakz;

    move-result-object v1

    invoke-virtual {v1}, Lakz;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lajo;->a:Lajm;

    invoke-static {v2}, Lajm;->a(Lajm;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_0
.end method
