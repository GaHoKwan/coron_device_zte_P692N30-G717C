.class Lnt;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lnr;


# direct methods
.method constructor <init>(Lnr;)V
    .locals 0
    .parameter

    .prologue
    .line 1359
    iput-object p1, p0, Lnt;->a:Lnr;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1361
    iget-object v0, p0, Lnt;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1362
    iget-object v0, p0, Lnt;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1363
    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    .line 1364
    iget-object v0, p0, Lnt;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1365
    iget-object v0, p0, Lnt;->a:Lnr;

    invoke-static {v0}, Lnr;->b(Lnr;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1366
    iget-object v1, p0, Lnt;->a:Lnr;

    invoke-static {v1}, Lnr;->e(Lnr;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loo;

    .line 1367
    iget-object v5, v1, Loo;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Loo;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Loo;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1369
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget v1, Lnr;->c:I

    invoke-static {v4, v1}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1370
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1371
    iget-object v1, p0, Lnt;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1372
    iget-object v1, p0, Lnt;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    iget-object v1, p0, Lnt;->a:Lnr;

    invoke-static {v1}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1374
    const/16 v4, 0x6d

    iput v4, v1, Landroid/os/Message;->what:I

    .line 1375
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1376
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1377
    iget-object v0, p0, Lnt;->a:Lnr;

    invoke-static {v0}, Lnr;->a(Lnr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1363
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 1385
    :cond_2
    return-void
.end method
