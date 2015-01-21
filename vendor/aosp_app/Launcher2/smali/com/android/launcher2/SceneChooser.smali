.class public Lcom/android/launcher2/SceneChooser;
.super Landroid/app/Activity;
.source "SceneChooser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SceneChooser$SceneMetaData;
    }
.end annotation


# static fields
.field private static final CONTACT_STRING:Ljava/lang/String; = "&"

.field private static final IMAGE_RELECTION:F = 0.18f

.field private static final KEY_CURRETN_SCENE_NAME:Ljava/lang/String; = "current_scene_name"

.field private static final MAX_ZOOM_OUT:I = 0x78

.field private static final PREF_CURRENT_SCENE:Ljava/lang/String; = "current_scene"

.field private static final PREF_KEY_CURRETN_SCENE_NAME:Ljava/lang/String; = "current_scene_name"

.field private static final PREF_KEY_CURRETN_SCENE_POS:Ljava/lang/String; = "current_scene_pos"

.field private static final PREF_KEY_CURRETN_SCENE_PREVIEW:Ljava/lang/String; = "current_scene_preview"

.field private static final PREF_KEY_CURRETN_SCENE_TITLE:Ljava/lang/String; = "current_scene_title"

.field private static final PREF_KEY_CURRETN_SCENE_WALLPAPER:Ljava/lang/String; = "current_scene_wallpaper"

.field private static final PREF_KEY_CURRETN_SCENE_WORKSPACE:Ljava/lang/String; = "current_scene_workspace"

.field private static final TAG:Ljava/lang/String; = "SceneChooser"

.field private static final TAG_SCENES:Ljava/lang/String; = "scenes"


# instance fields
.field private mAdapter:Lcom/mediatek/widget/BookmarkAdapter;

.field private mBookmarkItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/widget/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCoverflow:Landroid/widget/BounceCoverFlow;

.field private mCurrentScenePos:I

.field private mCurrentSuffix:Ljava/lang/String;

.field private mImgHeight:I

.field private mImgWidth:I

.field private mSceneNameText:Landroid/widget/TextView;

.field private mScenesData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/SceneChooser$SceneMetaData;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedScenePos:I

.field private mStamp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SceneChooser;->mScenesData:Ljava/util/ArrayList;

    .line 379
    return-void
.end method

.method private addScenesToBookmark(Landroid/content/res/Resources;)V
    .locals 9
    .parameter "resources"

    .prologue
    .line 167
    iget-object v6, p0, Lcom/android/launcher2/SceneChooser;->mScenesData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 169
    .local v4, sceneCount:I
    const-string v6, "SceneChooser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addScenesToBookmark: sceneCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentScenePos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/launcher2/SceneChooser;->mCurrentScenePos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, scene:Lcom/android/launcher2/SceneChooser$SceneMetaData;
    const/4 v2, 0x0

    .line 175
    .local v2, previewImage:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 176
    .local v5, sceneName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/launcher2/SceneChooser;->mScenesData:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #scene:Lcom/android/launcher2/SceneChooser$SceneMetaData;
    check-cast v3, Lcom/android/launcher2/SceneChooser$SceneMetaData;

    .line 178
    .restart local v3       #scene:Lcom/android/launcher2/SceneChooser$SceneMetaData;
    iget v6, v3, Lcom/android/launcher2/SceneChooser$SceneMetaData;->previewResId:I

    invoke-static {p1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 179
    iget v6, v3, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneTitleResId:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 180
    new-instance v1, Lcom/mediatek/widget/BookmarkItem;

    const/4 v6, 0x0

    invoke-direct {v1, v2, v5, v6}, Lcom/mediatek/widget/BookmarkItem;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .local v1, item:Lcom/mediatek/widget/BookmarkItem;
    iget-object v6, p0, Lcom/android/launcher2/SceneChooser;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1           #item:Lcom/mediatek/widget/BookmarkItem;
    :cond_0
    iget v6, p0, Lcom/android/launcher2/SceneChooser;->mCurrentScenePos:I

    invoke-direct {p0, v6}, Lcom/android/launcher2/SceneChooser;->addStampForCurrentScenePreview(I)V

    .line 185
    return-void
.end method

.method private addStampForCurrentScenePreview(I)V
    .locals 10
    .parameter "pos"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 318
    iget-object v7, p0, Lcom/android/launcher2/SceneChooser;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/widget/BookmarkItem;

    invoke-virtual {v7}, Lcom/mediatek/widget/BookmarkItem;->getContentBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 319
    .local v1, preview:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 320
    .local v3, previewWidth:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 321
    .local v2, previewHeight:I
    iget-object v7, p0, Lcom/android/launcher2/SceneChooser;->mStamp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 322
    .local v6, stampWidth:I
    iget-object v7, p0, Lcom/android/launcher2/SceneChooser;->mStamp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 324
    .local v5, stampHeight:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 325
    .local v4, stampBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 326
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v1, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 327
    iget-object v7, p0, Lcom/android/launcher2/SceneChooser;->mStamp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 329
    const/16 v7, 0x1f

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->save(I)I

    .line 330
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 332
    iget-object v7, p0, Lcom/android/launcher2/SceneChooser;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/widget/BookmarkItem;

    invoke-virtual {v7, v4}, Lcom/mediatek/widget/BookmarkItem;->setContentBitmap(Landroid/graphics/Bitmap;)V

    .line 333
    return-void
.end method

.method private generateCombinedIdentString(I)Ljava/lang/String;
    .locals 2
    .parameter "pos"

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mScenesData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SceneChooser$SceneMetaData;

    iget v0, v0, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneTitleResId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentSceneName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 234
    const-string v2, "current_scene"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 235
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "current_scene_name"

    const v3, 0x7f0d0005

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, sceneNameResId:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCurrentScenePos(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 287
    const-string v1, "current_scene"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 288
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "current_scene_pos"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method static getSceneSetting(Landroid/content/Context;Lcom/android/launcher2/SceneChooser$SceneMetaData;)V
    .locals 3
    .parameter "context"
    .parameter "scene"

    .prologue
    .line 271
    const-string v1, "current_scene"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 272
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "current_scene_pos"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->pos:I

    .line 273
    const-string v1, "current_scene_name"

    const v2, 0x7f0d0005

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneNameResId:I

    .line 274
    const-string v1, "current_scene_title"

    const v2, 0x7f0d0003

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneTitleResId:I

    .line 275
    const-string v1, "current_scene_preview"

    const v2, 0x7f02003e

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->previewResId:I

    .line 276
    const-string v1, "current_scene_workspace"

    const v2, 0x7f060002

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->workspaceResId:I

    .line 277
    const-string v1, "current_scene_wallpaper"

    const v2, 0x7f020063

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneWallpaper:I

    .line 278
    return-void
.end method

.method private getSceneTitle(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .parameter "resources"
    .parameter "pos"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mScenesData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SceneChooser$SceneMetaData;

    iget v0, v0, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneTitleResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initViews(Landroid/content/res/Resources;)V
    .locals 3
    .parameter "resources"

    .prologue
    .line 140
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/SceneChooser;->mSceneNameText:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f02000d

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SceneChooser;->mStamp:Landroid/graphics/Bitmap;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SceneChooser;->mBookmarkItems:Ljava/util/ArrayList;

    .line 145
    const v0, 0x7f0b005b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/SceneChooser;->mImgWidth:I

    .line 146
    const v0, 0x7f0b005c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/SceneChooser;->mImgHeight:I

    .line 148
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/BounceCoverFlow;

    iput-object v0, p0, Lcom/android/launcher2/SceneChooser;->mCoverflow:Landroid/widget/BounceCoverFlow;

    .line 149
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mCoverflow:Landroid/widget/BounceCoverFlow;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/BounceGallery;->setGravity(I)V

    .line 151
    invoke-direct {p0, p1}, Lcom/android/launcher2/SceneChooser;->addScenesToBookmark(Landroid/content/res/Resources;)V

    .line 153
    new-instance v0, Lcom/mediatek/widget/BookmarkAdapter;

    iget-object v1, p0, Lcom/android/launcher2/SceneChooser;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/widget/BookmarkAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/launcher2/SceneChooser;->mAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    .line 155
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    iget v1, p0, Lcom/android/launcher2/SceneChooser;->mImgWidth:I

    iget v2, p0, Lcom/android/launcher2/SceneChooser;->mImgHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/widget/BookmarkAdapter;->setImageDispSize(II)V

    .line 156
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    const v1, 0x3e3851ec

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/BookmarkAdapter;->setImageReflection(F)V

    .line 157
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mCoverflow:Landroid/widget/BounceCoverFlow;

    const v1, 0x7f0b005a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BounceGallery;->setSpacing(I)V

    .line 159
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mCoverflow:Landroid/widget/BounceCoverFlow;

    iget-object v1, p0, Lcom/android/launcher2/SceneChooser;->mAdapter:Lcom/mediatek/widget/BookmarkAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 160
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mCoverflow:Landroid/widget/BounceCoverFlow;

    iget v1, p0, Lcom/android/launcher2/SceneChooser;->mCurrentScenePos:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 161
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mCoverflow:Landroid/widget/BounceCoverFlow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mCoverflow:Landroid/widget/BounceCoverFlow;

    const/high16 v1, 0x42f0

    invoke-virtual {v0, v1}, Landroid/widget/BounceCoverFlow;->setMaxZoomOut(F)V

    .line 163
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mCoverflow:Landroid/widget/BounceCoverFlow;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 164
    return-void
.end method

.method private loadScenes()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 340
    const-string v7, "SceneChooser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadScenes: this = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f06

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 345
    .local v4, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 346
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v7, "scenes"

    invoke-static {v4, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 348
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 350
    .local v2, depth:I
    const/4 v6, -0x1

    .line 352
    .local v6, type:I
    :cond_0
    :goto_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-ne v6, v12, :cond_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-le v7, v2, :cond_2

    :cond_1
    if-eq v6, v10, :cond_2

    .line 354
    if-ne v6, v11, :cond_0

    .line 358
    new-instance v5, Lcom/android/launcher2/SceneChooser$SceneMetaData;

    invoke-direct {v5}, Lcom/android/launcher2/SceneChooser$SceneMetaData;-><init>()V

    .line 359
    .local v5, scene:Lcom/android/launcher2/SceneChooser$SceneMetaData;
    sget-object v7, Lcom/android/launcher/R$styleable;->Scene:[I

    invoke-virtual {p0, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 360
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    iput v7, v5, Lcom/android/launcher2/SceneChooser$SceneMetaData;->pos:I

    .line 361
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v5, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneNameResId:I

    .line 362
    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v5, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneTitleResId:I

    .line 363
    const/4 v7, 0x3

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v5, Lcom/android/launcher2/SceneChooser$SceneMetaData;->previewResId:I

    .line 364
    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v5, Lcom/android/launcher2/SceneChooser$SceneMetaData;->workspaceResId:I

    .line 365
    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v5, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneWallpaper:I

    .line 366
    iget-object v7, p0, Lcom/android/launcher2/SceneChooser;->mScenesData:Ljava/util/ArrayList;

    iget v8, v5, Lcom/android/launcher2/SceneChooser$SceneMetaData;->pos:I

    invoke-virtual {v7, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 368
    const-string v7, "SceneChooser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Load scene: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 372
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #depth:I
    .end local v4           #parser:Landroid/content/res/XmlResourceParser;
    .end local v5           #scene:Lcom/android/launcher2/SceneChooser$SceneMetaData;
    .end local v6           #type:I
    :catch_0
    move-exception v3

    .line 373
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "SceneChooser"

    const-string v8, "Got XmlPullParserException while parsing scenes."

    invoke-static {v7, v8, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 377
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return-void

    .line 374
    :catch_1
    move-exception v3

    .line 375
    .local v3, e:Ljava/io/IOException;
    const-string v7, "SceneChooser"

    const-string v8, "Got IOException while parsing scenes."

    invoke-static {v7, v8, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static saveSceneSetting(Landroid/content/Context;Lcom/android/launcher2/SceneChooser$SceneMetaData;)V
    .locals 4
    .parameter "context"
    .parameter "scene"

    .prologue
    .line 257
    const-string v2, "current_scene"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 258
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 260
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "current_scene_pos"

    iget v3, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->pos:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 261
    const-string v2, "current_scene_name"

    iget v3, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneNameResId:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 262
    const-string v2, "current_scene_title"

    iget v3, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneTitleResId:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 263
    const-string v2, "current_scene_preview"

    iget v3, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->previewResId:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 264
    const-string v2, "current_scene_workspace"

    iget v3, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->workspaceResId:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 265
    const-string v2, "current_scene_wallpaper"

    iget v3, p1, Lcom/android/launcher2/SceneChooser$SceneMetaData;->sceneWallpaper:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    return-void
.end method

.method public static setWallpaper(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 245
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 247
    .local v1, mWallpaperManager:Landroid/app/WallpaperManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SceneChooser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got IOException when setWallpaper: resId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 96
    invoke-direct {p0}, Lcom/android/launcher2/SceneChooser;->loadScenes()V

    .line 97
    invoke-direct {p0, p0}, Lcom/android/launcher2/SceneChooser;->getCurrentScenePos(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/SceneChooser;->mCurrentScenePos:I

    .line 99
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0d0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/SceneChooser;->mCurrentSuffix:Ljava/lang/String;

    .line 101
    invoke-direct {p0, v0}, Lcom/android/launcher2/SceneChooser;->initViews(Landroid/content/res/Resources;)V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, bmp:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/launcher2/SceneChooser;->mBookmarkItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/widget/BookmarkItem;

    .line 108
    .local v2, item:Lcom/mediatek/widget/BookmarkItem;
    invoke-virtual {v2}, Lcom/mediatek/widget/BookmarkItem;->getContentBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 114
    .end local v2           #item:Lcom/mediatek/widget/BookmarkItem;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/SceneChooser;->mStamp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/SceneChooser;->mStamp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/launcher2/SceneChooser;->mStamp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 116
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/SceneChooser;->mStamp:Landroid/graphics/Bitmap;

    .line 118
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 119
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "SceneChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSelectedScenePos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/SceneChooser;->mSelectedScenePos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iput p3, p0, Lcom/android/launcher2/SceneChooser;->mSelectedScenePos:I

    .line 216
    iget v0, p0, Lcom/android/launcher2/SceneChooser;->mSelectedScenePos:I

    iget v1, p0, Lcom/android/launcher2/SceneChooser;->mCurrentScenePos:I

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mSceneNameText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/SceneChooser;->mSelectedScenePos:I

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/SceneChooser;->getSceneTitle(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/SceneChooser;->mCurrentSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SceneChooser;->mSceneNameText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/SceneChooser;->mSelectedScenePos:I

    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/SceneChooser;->getSceneTitle(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/SceneChooser;->mSelectedScenePos:I

    .line 226
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 131
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 125
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    return-void
.end method

.method public switchSceneAndBack(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 188
    iget v3, p0, Lcom/android/launcher2/SceneChooser;->mSelectedScenePos:I

    iput v3, p0, Lcom/android/launcher2/SceneChooser;->mCurrentScenePos:I

    .line 189
    iget-object v3, p0, Lcom/android/launcher2/SceneChooser;->mScenesData:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/launcher2/SceneChooser;->mCurrentScenePos:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SceneChooser$SceneMetaData;

    .line 190
    .local v1, currentScene:Lcom/android/launcher2/SceneChooser$SceneMetaData;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_scene_name"

    iget v5, p0, Lcom/android/launcher2/SceneChooser;->mCurrentScenePos:I

    invoke-direct {p0, v5}, Lcom/android/launcher2/SceneChooser;->generateCombinedIdentString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    invoke-static {p0, v1}, Lcom/android/launcher2/SceneChooser;->saveSceneSetting(Landroid/content/Context;Lcom/android/launcher2/SceneChooser$SceneMetaData;)V

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 195
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherApplication;->setCurrentScene(Lcom/android/launcher2/SceneChooser$SceneMetaData;)V

    .line 198
    const-string v3, "SceneChooser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchSceneAndBack: mCurrentScenePos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/SceneChooser;->mCurrentScenePos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentScene = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.intent.action.SWITCH_SCENE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 207
    return-void
.end method
