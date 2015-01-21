.class Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;
.super Landroid/os/AsyncTask;
.source "PhotoCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dreams/phototable/PhotoCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOptions:Landroid/graphics/BitmapFactory$Options;

.field final synthetic this$0:Lcom/android/dreams/phototable/PhotoCarousel;


# direct methods
.method public constructor <init>(Lcom/android/dreams/phototable/PhotoCarousel;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 141
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 142
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 143
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "unused"

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mLongSide:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoCarousel;->access$1000(Lcom/android/dreams/phototable/PhotoCarousel;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mShortSide:I
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoCarousel;->access$1100(Lcom/android/dreams/phototable/PhotoCarousel;)I

    move-result v1

    if-nez v1, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mPhotoSource:Lcom/android/dreams/phototable/PhotoSourcePlexor;
    invoke-static {v1}, Lcom/android/dreams/phototable/PhotoCarousel;->access$1200(Lcom/android/dreams/phototable/PhotoCarousel;)Lcom/android/dreams/phototable/PhotoSourcePlexor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v3, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mLongSide:I
    invoke-static {v3}, Lcom/android/dreams/phototable/PhotoCarousel;->access$1000(Lcom/android/dreams/phototable/PhotoCarousel;)I

    move-result v3

    iget-object v4, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mShortSide:I
    invoke-static {v4}, Lcom/android/dreams/phototable/PhotoCarousel;->access$1100(Lcom/android/dreams/phototable/PhotoCarousel;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/dreams/phototable/PhotoSource;->next(Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, decodedPhoto:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 137
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "photo"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mBitmapQueue:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoCarousel;->access$100(Lcom/android/dreams/phototable/PhotoCarousel;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->this$0:Lcom/android/dreams/phototable/PhotoCarousel;

    #getter for: Lcom/android/dreams/phototable/PhotoCarousel;->mFlipper:Lcom/android/dreams/phototable/PhotoCarousel$Flipper;
    invoke-static {v0}, Lcom/android/dreams/phototable/PhotoCarousel;->access$700(Lcom/android/dreams/phototable/PhotoCarousel;)Lcom/android/dreams/phototable/PhotoCarousel$Flipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dreams/phototable/PhotoCarousel$Flipper;->run()V

    .line 161
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/dreams/phototable/PhotoCarousel$PhotoLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
