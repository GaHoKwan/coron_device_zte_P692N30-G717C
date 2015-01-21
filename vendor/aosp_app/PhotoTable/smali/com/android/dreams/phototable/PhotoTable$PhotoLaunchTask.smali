.class Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;
.super Landroid/os/AsyncTask;
.source "PhotoTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoLaunchTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoTable;


# direct methods
.method public constructor <init>(Lcom/android/dreams/phototable/PhotoTable;)V
    .locals 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 248
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 249
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 250
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/view/View;
    .locals 14
    .parameter "unused"

    .prologue
    .line 254
    const-string v1, "load a new photo"

    #calls: Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$100(Ljava/lang/String;)V

    .line 255
    iget-object v13, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    .line 257
    .local v13, table:Lcom/android/dreams/phototable/PhotoTable;
    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 259
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040004

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .local v10, photo:Landroid/view/View;
    move-object v7, v10

    .line 260
    check-cast v7, Landroid/widget/ImageView;

    .line 261
    .local v7, image:Landroid/widget/ImageView;
    const/4 v1, 0x2

    new-array v9, v1, [Landroid/graphics/drawable/Drawable;

    .line 262
    .local v9, layers:[Landroid/graphics/drawable/Drawable;
    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;
    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->access$400(Lcom/android/dreams/phototable/PhotoTable;)Lcom/android/dreams/phototable/PhotoSourcePlexor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mLongSide:I
    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->access$200(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v3

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mShortSide:I
    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->access$300(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->next(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 264
    .local v6, decodedPhoto:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget v12, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 265
    .local v12, photoWidth:I
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget v11, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 266
    .local v11, photoHeight:I
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v1, :cond_1

    .line 267
    :cond_0
    const/4 v10, 0x0

    .line 284
    :goto_0
    return-object v10

    .line 269
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 270
    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;
    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->access$500(Lcom/android/dreams/phototable/PhotoTable;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v2, v9, v1

    .line 271
    const/4 v1, 0x1

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mResources:Landroid/content/res/Resources;
    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->access$500(Lcom/android/dreams/phototable/PhotoTable;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v9, v1

    .line 272
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 273
    .local v0, layerList:Landroid/graphics/drawable/LayerDrawable;
    const/4 v1, 0x0

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mInset:I
    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->access$600(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v2

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mInset:I
    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->access$600(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v3

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mInset:I
    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->access$600(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v4

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mInset:I
    invoke-static {v13}, Lcom/android/dreams/phototable/PhotoTable;->access$600(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 275
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    const v1, 0x7f0b0001

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 278
    const/high16 v1, 0x7f0b

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 280
    new-instance v1, Lcom/android/dreams/phototable/PhotoTouchListener;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v13}, Lcom/android/dreams/phototable/PhotoTouchListener;-><init>(Landroid/content/Context;Lcom/android/dreams/phototable/PhotoTable;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 244
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->doInBackground([Ljava/lang/Void;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Landroid/view/View;)V
    .locals 5
    .parameter "photo"

    .prologue
    const/4 v4, -0x2

    .line 289
    if-eqz p1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->this$0:Lcom/android/dreams/phototable/PhotoTable;

    .line 292
    .local v1, table:Lcom/android/dreams/phototable/PhotoTable;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {v1}, Lcom/android/dreams/phototable/PhotoTable;->getSelected()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 297
    :cond_0
    const v3, 0x7f0b0001

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 298
    .local v2, width:I
    const/high16 v3, 0x7f0b

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 300
    .local v0, height:I
    const-string v3, "drop it"

    #calls: Lcom/android/dreams/phototable/PhotoTable;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/dreams/phototable/PhotoTable;->access$100(Ljava/lang/String;)V

    .line 301
    #calls: Lcom/android/dreams/phototable/PhotoTable;->throwOnTable(Landroid/view/View;)V
    invoke-static {v1, p1}, Lcom/android/dreams/phototable/PhotoTable;->access$700(Lcom/android/dreams/phototable/PhotoTable;Landroid/view/View;)V

    .line 303
    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mOnTable:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$800(Lcom/android/dreams/phototable/PhotoTable;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mTableCapacity:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$900(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 304
    #getter for: Lcom/android/dreams/phototable/PhotoTable;->mFastDropPeriod:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoTable;->access$1000(Lcom/android/dreams/phototable/PhotoTable;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/dreams/phototable/PhotoTable;->scheduleNext(I)V

    .line 307
    .end local v0           #height:I
    .end local v1           #table:Lcom/android/dreams/phototable/PhotoTable;
    .end local v2           #width:I
    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 244
    check-cast p1, Landroid/view/View;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoTable$PhotoLaunchTask;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
