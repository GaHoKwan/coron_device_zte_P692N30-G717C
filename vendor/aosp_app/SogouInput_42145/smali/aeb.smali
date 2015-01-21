.class public Laeb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:I

.field final synthetic a:Lcom/sohu/inputmethod/settings/GestureListActivity;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/sohu/inputmethod/settings/GestureListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Laeb;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sohu/inputmethod/settings/GestureListActivity;Ladz;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1}, Laeb;-><init>(Lcom/sohu/inputmethod/settings/GestureListActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs declared-synchronized a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 9
    .parameter

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    const-string v0, "doInBackground"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Laeb;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 226
    :goto_0
    monitor-exit p0

    return-object v0

    .line 205
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sohu/inputmethod/settings/GestureListActivity;->b()Lqg;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lqg;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    invoke-virtual {v2}, Lqg;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Laeb;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 223
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 211
    :cond_3
    invoke-virtual {v2, v0}, Lqg;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sohu/inputmethod/gesture/Gesture;

    .line 212
    iget v5, p0, Laeb;->a:I

    iget v6, p0, Laeb;->a:I

    iget v7, p0, Laeb;->b:I

    iget v8, p0, Laeb;->c:I

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/sohu/inputmethod/gesture/Gesture;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 214
    new-instance v6, Laec;

    invoke-direct {v6}, Laec;-><init>()V

    .line 215
    iput-object v1, v6, Laec;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    .line 216
    iput-object v0, v6, Laec;->a:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Laeb;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Lcom/sohu/inputmethod/settings/GestureListActivity;)Laea;

    move-result-object v1

    iget-object v7, v6, Laec;->a:Lcom/sohu/inputmethod/gesture/Gesture;

    invoke-virtual {v7}, Lcom/sohu/inputmethod/gesture/Gesture;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7, v5}, Laea;->a(Ljava/lang/Long;Landroid/graphics/Bitmap;)V

    .line 219
    const/4 v1, 0x1

    new-array v1, v1, [Laec;

    const/4 v5, 0x0

    aput-object v6, v1, v5

    invoke-virtual {p0, v1}, Laeb;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 226
    :cond_4
    const/4 v0, 0x3

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 1
    .parameter

    .prologue
    .line 247
    const-string v0, "onPostExecute"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Ljava/lang/String;)V

    .line 248
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Laeb;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Lcom/sohu/inputmethod/settings/GestureListActivity;)V

    .line 251
    return-void
.end method

.method protected varargs a([Laec;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 231
    const-string v1, "onProgressUpdate"

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Ljava/lang/String;)V

    .line 232
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 234
    iget-object v1, p0, Laeb;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    invoke-static {v1}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Lcom/sohu/inputmethod/settings/GestureListActivity;)Laea;

    move-result-object v1

    .line 235
    invoke-virtual {v1, v0}, Laea;->setNotifyOnChange(Z)V

    .line 237
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 238
    invoke-virtual {v1, v3}, Laea;->add(Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Laeb;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Lcom/sohu/inputmethod/settings/GestureListActivity;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v1, v0}, Laea;->sort(Ljava/util/Comparator;)V

    .line 242
    invoke-virtual {v1}, Laea;->notifyDataSetChanged()V

    .line 243
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Laeb;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Laeb;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "onPreExecute"

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Ljava/lang/String;)V

    .line 189
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 191
    iget-object v0, p0, Laeb;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    const/16 v1, -0x100

    iput v1, p0, Laeb;->c:I

    .line 193
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Laeb;->b:I

    .line 194
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Laeb;->a:I

    .line 196
    iget-object v0, p0, Laeb;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Lcom/sohu/inputmethod/settings/GestureListActivity;)Laea;

    move-result-object v0

    invoke-virtual {v0}, Laea;->clear()V

    .line 197
    iget-object v0, p0, Laeb;->a:Lcom/sohu/inputmethod/settings/GestureListActivity;

    invoke-static {v0}, Lcom/sohu/inputmethod/settings/GestureListActivity;->a(Lcom/sohu/inputmethod/settings/GestureListActivity;)Laea;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laea;->setNotifyOnChange(Z)V

    .line 198
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    check-cast p1, [Laec;

    invoke-virtual {p0, p1}, Laeb;->a([Laec;)V

    return-void
.end method
