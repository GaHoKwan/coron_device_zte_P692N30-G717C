.class Lala;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lakz;

.field final synthetic a:Lalb;

.field final synthetic a:Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lakz;Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;Ljava/lang/String;Lalb;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lala;->a:Lakz;

    iput-object p2, p0, Lala;->a:Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;

    iput-object p3, p0, Lala;->a:Ljava/lang/String;

    iput-object p4, p0, Lala;->a:Lalb;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lala;->a:Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;->a()I

    move-result v0

    .line 81
    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lala;->a:Ljava/lang/String;

    invoke-static {v0}, Laky;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lala;->a:Lakz;

    invoke-static {v1}, Lakz;->a(Lakz;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lala;->a:Lakz;

    invoke-static {v1}, Lakz;->a(Lakz;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lala;->a:Lakz;

    invoke-static {v1}, Lakz;->a(Lakz;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lala;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lala;->a:Lakz;

    invoke-static {v1}, Lakz;->a(Lakz;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lala;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    iget-object v1, p0, Lala;->a:Lalb;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lala;->a:Lalb;

    iget-object v2, p0, Lala;->a:Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;

    invoke-interface {v1, v2, v0}, Lalb;->a(Lcom/sohu/inputmethod/settings/hotdict/HotdictImageView;Landroid/graphics/Bitmap;)V

    .line 99
    :cond_1
    return-void

    .line 90
    :cond_2
    iget-object v1, p0, Lala;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Laky;->c(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
