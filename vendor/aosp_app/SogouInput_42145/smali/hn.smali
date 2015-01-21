.class public Lhn;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lhk;

.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljq;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 313
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lhn;->a:Ljava/lang/ref/WeakReference;

    .line 315
    iput-object p1, p0, Lhn;->a:Landroid/content/Context;

    .line 316
    return-void
.end method

.method static synthetic a(Lhn;)Lhk;
    .locals 1
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lhn;->a:Lhk;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lhk;
    .locals 2
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lhn;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lhn;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 323
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljq;->a()Lhk;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v0}, Ljq;->a()Lhk;

    move-result-object v0

    iput-object v0, p0, Lhn;->a:Lhk;

    .line 326
    :cond_0
    iget-object v0, p0, Lhn;->a:Lhk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhn;->a:Lhk;

    iget-boolean v0, v0, Lhk;->g:Z

    if-nez v0, :cond_1

    .line 327
    iget-object v0, p0, Lhn;->a:Lhk;

    iget-object v1, p0, Lhn;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lhl;->a(Lhk;Landroid/content/Context;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lhn;->a:Lhk;

    invoke-static {v0}, Lhl;->a(Lhk;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lhn;->a:Lhk;

    invoke-static {v0}, Lhl;->b(Lhk;)V

    .line 333
    :cond_2
    iget-object v0, p0, Lhn;->a:Lhk;

    return-object v0
.end method

.method protected a(Lhk;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 338
    invoke-virtual {p0}, Lhn;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iput-boolean v5, p1, Lhk;->f:Z

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lhn;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 343
    iget-object v0, p0, Lhn;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljq;

    .line 344
    if-eqz v0, :cond_0

    .line 345
    invoke-static {v0}, Lhl;->a(Ljq;)Lhn;

    move-result-object v1

    .line 347
    if-ne p0, v1, :cond_0

    .line 348
    iget-object v1, v0, Ljq;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, v0, Ljq;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lhn;->a:Landroid/content/Context;

    iget-object v2, v0, Ljq;->a:Landroid/widget/TextView;

    iget-object v3, v0, Ljq;->b:Landroid/widget/TextView;

    iget-object v4, p1, Lhk;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lhl;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 350
    :cond_2
    invoke-virtual {v0, v5}, Ljq;->a(Z)V

    .line 351
    iget-object v0, v0, Ljq;->a:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lhl;->a(Landroid/widget/ImageView;Lhk;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 305
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lhn;->a([Ljava/lang/Void;)Lhk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    check-cast p1, Lhk;

    invoke-virtual {p0, p1}, Lhn;->a(Lhk;)V

    return-void
.end method
