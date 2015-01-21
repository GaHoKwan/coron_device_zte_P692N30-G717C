.class public Laea;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field final synthetic a:Lcom/sohu/inputmethod/settings/GestureListActivity;

.field private final a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/settings/GestureListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Laea;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Laea;->a:Ljava/util/Map;

    .line 266
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Laea;->a:Landroid/view/LayoutInflater;

    .line 267
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Long;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Laea;->a:Ljava/util/Map;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 275
    if-nez p2, :cond_0

    .line 276
    iget-object v0, p0, Laea;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030021

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 279
    :goto_0
    invoke-virtual {p0, p1}, Laea;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laec;

    move-object v1, v2

    .line 280
    check-cast v1, Landroid/widget/TextView;

    .line 282
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 283
    iget-object v3, p0, Laea;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    invoke-static {v3}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Lcom/sohu/inputmethod/settings/GestureListActivity;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Laec;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v4}, Lcom/sohu/inputmethod/gesture/Gesture;->c()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v3, p0, Laea;->a:Ljava/util/Map;

    iget-object v0, v0, Laec;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/Gesture;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 287
    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method
