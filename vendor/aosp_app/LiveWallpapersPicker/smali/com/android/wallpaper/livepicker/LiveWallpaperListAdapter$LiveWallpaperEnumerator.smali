.class Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;
.super Landroid/os/AsyncTask;
.source "LiveWallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveWallpaperEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;",
        "Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWallpaperPosition:I

.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    .line 146
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    .line 149
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .locals 25
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 155
    .local v10, packageManager:Landroid/content/pm/PackageManager;
    const/16 v21, 0x0

    aget-object v9, p1, v21

    .line 157
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 158
    .local v12, res:Landroid/content/res/Resources;
    const v21, 0x7f020001

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 160
    .local v6, galleryIcon:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v11, Landroid/graphics/Paint;

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 161
    .local v11, paint:Landroid/graphics/Paint;
    sget-object v21, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 162
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 164
    .local v4, canvas:Landroid/graphics/Canvas;
    new-instance v21, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator$1;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    const v21, 0x7f070002

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 180
    .local v17, thumbWidth:I
    const v21, 0x7f070003

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 183
    .local v15, thumbHeight:I
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 184
    .local v13, resolveInfo:Landroid/content/pm/ResolveInfo;
    const/4 v8, 0x0

    .line 186
    .local v8, info:Landroid/app/WallpaperInfo;
    :try_start_0
    new-instance v8, Landroid/app/WallpaperInfo;

    .end local v8           #info:Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v8, v0, v13}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .restart local v8       #info:Landroid/app/WallpaperInfo;
    const-string v21, "com.mediatek.vlw"

    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 197
    const-string v21, "LiveWallpaperListAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skipping wallpaper "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v8           #info:Landroid/app/WallpaperInfo;
    :catch_0
    move-exception v5

    .line 188
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v21, "LiveWallpaperListAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skipping wallpaper "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 190
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v5

    .line 191
    .local v5, e:Ljava/io/IOException;
    const-string v21, "LiveWallpaperListAdapter"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Skipping wallpaper "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 211
    .end local v5           #e:Ljava/io/IOException;
    .restart local v8       #info:Landroid/app/WallpaperInfo;
    :cond_0
    new-instance v20, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)V

    .line 212
    .local v20, wallpaper:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.service.wallpaper.WallpaperService"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->intent:Landroid/content/Intent;

    .line 213
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->intent:Landroid/content/Intent;

    move-object/from16 v21, v0

    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    move-object/from16 v0, v20

    iput-object v8, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    move-object/from16 v21, v0

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .line 219
    .local v14, thumb:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v14, :cond_1

    .line 220
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-static {v0, v1, v15, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 221
    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 246
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .local v16, thumbNew:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 248
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v20, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 223
    .end local v16           #thumbNew:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 226
    .local v18, thumbnail:Landroid/graphics/Bitmap;
    const/high16 v21, 0x7f06

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    invoke-virtual {v4, v11}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 230
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 231
    const/16 v21, 0x11

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 232
    invoke-virtual {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    invoke-virtual {v8, v10}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 236
    .local v19, title:Ljava/lang/String;
    const v21, 0x7f060001

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    const/high16 v21, 0x7f07

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 240
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3fe0

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x7f070001

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    sub-int v22, v15, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 244
    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v16       #thumbNew:Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_1

    .line 251
    .end local v8           #info:Landroid/app/WallpaperInfo;
    .end local v13           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v14           #thumb:Landroid/graphics/drawable/BitmapDrawable;
    .end local v16           #thumbNew:Landroid/graphics/drawable/BitmapDrawable;
    .end local v18           #thumbnail:Landroid/graphics/Bitmap;
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #wallpaper:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :cond_2
    const/16 v21, 0x0

    return-object v21
.end method

.method protected varargs onProgressUpdate([Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;)V
    .locals 6
    .parameter "infos"

    .prologue
    .line 256
    move-object v0, p1

    .local v0, arr$:[Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 257
    .local v2, info:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    iget-object v4, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 258
    iget v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    iget-object v5, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;
    invoke-static {v5}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->access$200(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 259
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;
    invoke-static {v4}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->access$200(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    invoke-interface {v4, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 263
    :goto_1
    iget v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    .line 264
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_0
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;
    invoke-static {v4}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->access$200(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 266
    .end local v2           #info:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 140
    check-cast p1, [Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->onProgressUpdate([Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;)V

    return-void
.end method
