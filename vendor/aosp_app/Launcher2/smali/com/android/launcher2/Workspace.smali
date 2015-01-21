.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher2/DragController$DragListener;
.implements Lcom/android/launcher2/DragScroller;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/LauncherTransitionable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$ReorderAlarmListener;,
        Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$ZoomOutInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperVerticalOffset;,
        Lcom/android/launcher2/Workspace$State;
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field private static final BACKGROUND_FADE_OUT_DURATION:I = 0x15e

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field private static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field private static final CHILDREN_OUTLINE_FADE_OUT_DELAY:I = 0x0

.field private static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final DEFAULT_CELL_COUNT_X:I = 0x4

.field private static final DEFAULT_CELL_COUNT_Y:I = 0x4

.field private static final DEFAULT_WALLPAPER:Ljava/lang/String; = "default_wallpaper"

.field public static final DRAG_BITMAP_PADDING:I = 0x2

.field private static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x3

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field private static final FOLDER_CREATION_TIMEOUT:I = 0x0

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field private static final REORDER_TIMEOUT:I = 0xfa

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field private static final TAG:Ljava/lang/String; = "Workspace"

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f

.field private static final WALLPAPER_SCREENS_SPAN:F = 2.0f

.field private static final WORKSPACE_OVERSCROLL_ROTATION:F = 24.0f

.field static mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

.field static mPortraitCellLayoutMetrics:Landroid/graphics/Rect;


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field mAnimatingViewIntoPlace:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private final mBindPages:Ljava/lang/Runnable;

.field private mCameraDistance:I

.field mChildrenLayersEnabled:Z

.field private mChildrenOutlineAlpha:F

.field private mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentRotationY:F

.field private mCurrentScaleX:F

.field private mCurrentScaleY:F

.field private mCurrentTranslationX:F

.field private mCurrentTranslationY:F

.field private mDefaultPage:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

.field private mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

.field private mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field private mDragViewVisualCenter:[F

.field mDrawBackground:Z

.field private mDropToLayout:Lcom/android/launcher2/CellLayout;

.field private final mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInScrollArea:Z

.field mIsDragOccuring:Z

.field private mIsStaticWallpaper:Z

.field private mIsSwitchingState:Z

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxDistanceForFolderCreation:F

.field private mNewAlphas:[F

.field private mNewBackgroundAlphas:[F

.field private mNewRotationYs:[F

.field private mNewScaleXs:[F

.field private mNewScaleYs:[F

.field private mNewTranslationXs:[F

.field private mNewTranslationYs:[F

.field private mOldAlphas:[F

.field private mOldBackgroundAlphas:[F

.field private mOldScaleXs:[F

.field private mOldScaleYs:[F

.field private mOldTranslationXs:[F

.field private mOldTranslationYs:[F

.field private mOriginalPageSpacing:I

.field private final mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mOverScrollMaxBackgroundAlpha:F

.field private mOverscrollFade:F

.field private mOverscrollTransformsSet:Z

.field private final mReorderAlarm:Lcom/android/launcher2/Alarm;

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedRotationY:F

.field private mSavedScrollX:I

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedTranslationX:F

.field private mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

.field private mSpringLoadedPageSpacing:I

.field private mSpringLoadedShrinkFactor:F

.field private mState:Lcom/android/launcher2/Workspace$State;

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempDragBottomRightCoordinates:[F

.field private mTempDragCoordinates:[F

.field private mTempEstimate:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTempVisiblePagesRange:[I

.field private final mTempXY:[I

.field private mTransitionProgress:F

.field mUpdateWallpaperOffsetImmediately:Z

.field mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field private mWallpaperScrollRatio:F

.field private mWallpaperTravelWidth:I

.field mWallpaperWidth:I

.field private mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 133
    sput-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 134
    sput-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 287
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 108
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 109
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 110
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 112
    const/high16 v8, 0x3f80

    iput v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 129
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 130
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    .line 131
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    .line 139
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 143
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    .line 148
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 156
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 157
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    .line 158
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 159
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 160
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 161
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 162
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 174
    sget-object v8, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 175
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 177
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 178
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 179
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 182
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 184
    new-instance v8, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v8}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 185
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 186
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 187
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    .line 188
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    .line 189
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 198
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 201
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    .line 210
    new-instance v8, Lcom/android/launcher2/Alarm;

    invoke-direct {v8}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    .line 211
    new-instance v8, Lcom/android/launcher2/Alarm;

    invoke-direct {v8}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 212
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 213
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 214
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 215
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 238
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    .line 239
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    .line 240
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    .line 243
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    .line 269
    new-instance v8, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v8, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mBindPages:Ljava/lang/Runnable;

    .line 1602
    new-instance v8, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v8}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 298
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mContentIsRefreshable:Z

    .line 299
    iget v8, p0, Lcom/android/launcher2/PagedView;->mPageSpacing:I

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOriginalPageSpacing:I

    .line 301
    new-instance v8, Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-direct {v8, p1}, Lcom/android/launcher2/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->setDataIsReady()V

    move-object v8, p1

    .line 305
    check-cast v8, Lcom/android/launcher2/Launcher;

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 306
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 307
    .local v7, res:Landroid/content/res/Resources;
    const v8, 0x7f090004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 308
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 309
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 311
    const/4 v3, 0x4

    .line 312
    .local v3, cellCountX:I
    const/4 v4, 0x4

    .line 314
    .local v4, cellCountY:I
    sget-object v8, Lcom/android/launcher/R$styleable;->Workspace:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 317
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 322
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10102eb

    aput v10, v8, v9

    invoke-virtual {p1, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 324
    .local v2, actionBarSizeTypedArray:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 326
    .local v1, actionBarHeight:F
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 327
    .local v6, minDims:Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 328
    .local v5, maxDims:Landroid/graphics/Point;
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 330
    const/4 v3, 0x1

    .line 331
    :goto_0
    add-int/lit8 v8, v3, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher2/CellLayout;->widthInPortrait(Landroid/content/res/Resources;I)I

    move-result v8

    iget v9, v6, Landroid/graphics/Point;->x:I

    if-gt v8, v9, :cond_0

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
    :cond_0
    const/4 v4, 0x1

    .line 337
    :goto_1
    add-int/lit8 v8, v4, 0x1

    invoke-static {v7, v8}, Lcom/android/launcher2/CellLayout;->heightInLandscape(Landroid/content/res/Resources;I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    iget v9, v6, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 338
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 342
    .end local v1           #actionBarHeight:F
    .end local v2           #actionBarSizeTypedArray:Landroid/content/res/TypedArray;
    .end local v5           #maxDims:Landroid/graphics/Point;
    .end local v6           #minDims:Landroid/graphics/Point;
    :cond_1
    const v8, 0x7f0a0003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float/2addr v8, v9

    iput v8, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    .line 344
    const v8, 0x7f0b0018

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedPageSpacing:I

    .line 346
    const v8, 0x7f0a0019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mCameraDistance:I

    .line 349
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 350
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 351
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    .line 352
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 354
    invoke-virtual {p0, p0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 356
    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 357
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 362
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    .line 365
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_2

    .line 366
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 368
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/CellLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;IIIILcom/android/launcher2/CellLayout;[I)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/launcher2/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/launcher2/Workspace;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/launcher2/Workspace;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->isNeedToDelayRemoveFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Workspace;->removeFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->getRemoveFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->isFolderNeedRemoved(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->getRemoveFolderItemsByComponent(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/launcher2/Workspace;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/launcher2/Workspace;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    return-object v0
.end method

.method private animateBackgroundGradient(FZ)V
    .locals 4
    .parameter "finalAlpha"
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 1221
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1222
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 1223
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1224
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    .line 1226
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 1227
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1228
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1230
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getBackgroundAlpha()F

    move-result v0

    .line 1231
    .local v0, startAlpha:F
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    .line 1232
    if-eqz p2, :cond_4

    .line 1233
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1234
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher2/Workspace$3;

    invoke-direct {v2, p0}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1239
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc0

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1240
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1241
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1243
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->setBackgroundAlpha(F)V

    goto :goto_0
.end method

.method private cleanupAddToFolder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2749
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    if-eqz v0, :cond_0

    .line 2750
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon;->onDragExit(Ljava/lang/Object;)V

    .line 2751
    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 2753
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 1

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    if-eqz v0, :cond_0

    .line 2743
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 2745
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 2746
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 2
    .parameter "cancelAlarm"

    .prologue
    const/4 v1, -0x1

    .line 2757
    if-eqz p1, :cond_0

    .line 2758
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 2760
    :cond_0
    iput v1, p0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    .line 2761
    iput v1, p0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    .line 2762
    return-void
.end method

.method private computeWallpaperScrollRatio(I)V
    .locals 6
    .parameter "page"

    .prologue
    const/high16 v5, 0x3f80

    .line 1045
    iget v0, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 1046
    .local v0, layoutScale:F
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1047
    .local v1, scaled:I
    iput v5, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 1048
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 1049
    .local v2, unscaled:F
    iput v0, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 1050
    if-lez v1, :cond_0

    .line 1051
    mul-float v3, v5, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_0
    iput v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    goto :goto_0
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIZ)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "orig"
    .parameter "canvas"
    .parameter "padding"
    .parameter "w"
    .parameter "h"
    .parameter "clipAlpha"

    .prologue
    .line 1949
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x1060012

    invoke-static {v2, v4}, Lcom/android/launcher2/Launcher;->getThemeColor(Landroid/content/res/Resources;I)I

    move-result v5

    .line 1951
    .local v5, outlineColor:I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1952
    .local v3, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1954
    new-instance v12, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v12, v2, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1955
    .local v12, src:Landroid/graphics/Rect;
    sub-int v2, p4, p3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-int v4, p5, p3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1957
    .local v9, scaleFactor:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v11, v2

    .line 1958
    .local v11, scaledWidth:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v9

    float-to-int v10, v2

    .line 1959
    .local v10, scaledHeight:I
    new-instance v8, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v8, v2, v4, v11, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1962
    .local v8, dst:Landroid/graphics/Rect;
    sub-int v2, p4, v11

    div-int/lit8 v2, v2, 0x2

    sub-int v4, p5, v10

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v8, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1964
    const/4 v2, 0x0

    invoke-virtual {p2, p1, v12, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1965
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    move-object v4, p2

    move v6, v5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIZ)V

    .line 1967
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1969
    return-object v3
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    .line 1930
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060012

    invoke-static {v2, v3}, Lcom/android/launcher2/Launcher;->getThemeColor(Landroid/content/res/Resources;I)I

    move-result v1

    .line 1932
    .local v1, outlineColor:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1935
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1936
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1937
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p2, v1, v1}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 1938
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1939
    return-object v0
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V
    .locals 8
    .parameter "v"
    .parameter "destCanvas"
    .parameter "padding"
    .parameter "pruneToDrawable"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1861
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 1862
    .local v0, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1864
    const/4 v2, 0x0

    .line 1866
    .local v2, textVisible:Z
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 1867
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    if-eqz p4, :cond_1

    .line 1868
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v7

    .line 1869
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {v0, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1870
    div-int/lit8 v4, p3, 0x2

    int-to-float v4, v4

    div-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1871
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1898
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 1899
    return-void

    .line 1873
    .restart local p1
    :cond_1
    instance-of v4, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_3

    move-object v4, p1

    .line 1876
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4}, Lcom/android/launcher2/FolderIcon;->getTextVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 1877
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 1878
    const/4 v2, 0x1

    .line 1889
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v6, p3, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1890
    sget-object v4, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1891
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1894
    if-eqz v2, :cond_0

    .line 1895
    check-cast p1, Lcom/android/launcher2/FolderIcon;

    .end local p1
    invoke-virtual {p1, v7}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    goto :goto_0

    .line 1880
    .restart local p1
    :cond_3
    instance-of v4, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v4, :cond_4

    move-object v3, p1

    .line 1881
    check-cast v3, Lcom/android/launcher2/BubbleTextView;

    .line 1882
    .local v3, tv:Lcom/android/launcher2/BubbleTextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 1884
    .end local v3           #tv:Lcom/android/launcher2/BubbleTextView;
    :cond_4
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    move-object v3, p1

    .line 1885
    check-cast v3, Landroid/widget/TextView;

    .line 1886
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 7

    .prologue
    .line 1491
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v5, :cond_6

    .line 1492
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 1493
    .local v4, screenCount:I
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getVisiblePages([I)V

    .line 1494
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    const/4 v6, 0x0

    aget v2, v5, v6

    .line 1495
    .local v2, leftScreen:I
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mTempVisiblePagesRange:[I

    const/4 v6, 0x1

    aget v3, v5, v6

    .line 1496
    .local v3, rightScreen:I
    if-ne v2, v3, :cond_0

    .line 1498
    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_3

    .line 1499
    add-int/lit8 v3, v3, 0x1

    .line 1504
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 1505
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1506
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    if-gt v2, v0, :cond_1

    if-gt v0, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1507
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->disableHardwareLayers()V

    .line 1504
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1500
    .end local v0           #i:I
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :cond_3
    if-lez v2, :cond_0

    .line 1501
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1510
    .restart local v0       #i:I
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_6

    .line 1511
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1512
    .restart local v1       #layout:Lcom/android/launcher2/CellLayout;
    if-gt v2, v0, :cond_5

    if-gt v0, v3, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1513
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->enableHardwareLayers()V

    .line 1510
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1517
    .end local v0           #i:I
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    .end local v2           #leftScreen:I
    .end local v3           #rightScreen:I
    .end local v4           #screenCount:I
    :cond_6
    return-void
.end method

.method private findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;
    .locals 11
    .parameter "dragView"
    .parameter "originX"
    .parameter "originY"
    .parameter "exact"

    .prologue
    .line 2883
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 2884
    .local v6, screenCount:I
    const/4 v0, 0x0

    .line 2885
    .local v0, bestMatchingScreen:Lcom/android/launcher2/CellLayout;
    const v7, 0x7f7fffff

    .line 2887
    .local v7, smallestDistSoFar:F
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_4

    .line 2888
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 2890
    .local v2, cl:Lcom/android/launcher2/CellLayout;
    const/4 v9, 0x2

    new-array v8, v9, [F

    const/4 v9, 0x0

    aput p2, v8, v9

    const/4 v9, 0x1

    aput p3, v8, v9

    .line 2893
    .local v8, touchXy:[F
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2894
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2, v8, v9}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2896
    const/4 v9, 0x0

    aget v9, v8, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_0

    const/4 v9, 0x0

    aget v9, v8, v9

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    const/4 v9, 0x1

    aget v9, v8, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_0

    const/4 v9, 0x1

    aget v9, v8, v9

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_0

    .line 2931
    .end local v2           #cl:Lcom/android/launcher2/CellLayout;
    .end local v8           #touchXy:[F
    :goto_1
    return-object v2

    .line 2901
    .restart local v2       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v8       #touchXy:[F
    :cond_0
    if-nez p4, :cond_2

    .line 2903
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 2904
    .local v1, cellLayoutCenter:[F
    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    aput v10, v1, v9

    .line 2905
    const/4 v9, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    aput v10, v1, v9

    .line 2906
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 2908
    const/4 v9, 0x0

    aput p2, v8, v9

    .line 2909
    const/4 v9, 0x1

    aput p3, v8, v9

    .line 2913
    invoke-static {v8, v1}, Lcom/android/launcher2/Workspace;->squaredDistance([F[F)F

    move-result v3

    .line 2915
    .local v3, dist:F
    cmpg-float v9, v3, v7

    if-gez v9, :cond_1

    .line 2916
    move v7, v3

    .line 2917
    move-object v0, v2

    .line 2921
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSupportCycleSlidingScreen()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2922
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 2923
    .local v5, page:I
    add-int/lit8 v9, v6, -0x1

    if-ne v5, v9, :cond_3

    .line 2924
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bestMatchingScreen:Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2887
    .end local v1           #cellLayoutCenter:[F
    .end local v3           #dist:F
    .end local v5           #page:I
    .restart local v0       #bestMatchingScreen:Lcom/android/launcher2/CellLayout;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2925
    .restart local v1       #cellLayoutCenter:[F
    .restart local v3       #dist:F
    .restart local v5       #page:I
    :cond_3
    if-nez v5, :cond_2

    .line 2926
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #bestMatchingScreen:Lcom/android/launcher2/CellLayout;
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .restart local v0       #bestMatchingScreen:Lcom/android/launcher2/CellLayout;
    goto :goto_2

    .end local v1           #cellLayoutCenter:[F
    .end local v2           #cl:Lcom/android/launcher2/CellLayout;
    .end local v3           #dist:F
    .end local v5           #page:I
    .end local v8           #touchXy:[F
    :cond_4
    move-object v2, v0

    .line 2931
    goto :goto_1
.end method

.method private findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I
    .locals 6
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3592
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method static getCellLayoutMetrics(Lcom/android/launcher2/Launcher;I)Landroid/graphics/Rect;
    .locals 14
    .parameter "launcher"
    .parameter "orientation"

    .prologue
    .line 2605
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2606
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 2607
    .local v7, display:Landroid/view/Display;
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 2608
    .local v13, smallestSize:Landroid/graphics/Point;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 2609
    .local v8, largestSize:Landroid/graphics/Point;
    invoke-virtual {v7, v13, v8}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 2610
    if-nez p1, :cond_1

    .line 2611
    sget-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2612
    const v0, 0x7f0b004b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 2613
    .local v10, paddingLeft:I
    const v0, 0x7f0b004d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2614
    .local v11, paddingRight:I
    const v0, 0x7f0b004f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 2615
    .local v12, paddingTop:I
    const v0, 0x7f0b0051

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 2616
    .local v9, paddingBottom:I
    iget v0, v8, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v10

    sub-int v2, v0, v11

    .line 2617
    .local v2, width:I
    iget v0, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v12

    sub-int v3, v0, v9

    .line 2618
    .local v3, height:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2619
    sget-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V

    .line 2623
    .end local v2           #width:I
    .end local v3           #height:I
    .end local v9           #paddingBottom:I
    .end local v10           #paddingLeft:I
    .end local v11           #paddingRight:I
    .end local v12           #paddingTop:I
    :cond_0
    sget-object v0, Lcom/android/launcher2/Workspace;->mLandscapeCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2639
    :goto_0
    return-object v0

    .line 2624
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2625
    sget-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 2626
    const v0, 0x7f0b004b

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 2627
    .restart local v10       #paddingLeft:I
    const v0, 0x7f0b004d

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 2628
    .restart local v11       #paddingRight:I
    const v0, 0x7f0b004f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 2629
    .restart local v12       #paddingTop:I
    const v0, 0x7f0b0051

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 2630
    .restart local v9       #paddingBottom:I
    iget v0, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v10

    sub-int v2, v0, v11

    .line 2631
    .restart local v2       #width:I
    iget v0, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v12

    sub-int v3, v0, v9

    .line 2632
    .restart local v3       #height:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    .line 2633
    sget-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    move v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->getMetrics(Landroid/graphics/Rect;Landroid/content/res/Resources;IIIII)V

    .line 2637
    .end local v2           #width:I
    .end local v3           #height:I
    .end local v9           #paddingBottom:I
    .end local v10           #paddingLeft:I
    .end local v11           #paddingRight:I
    .end local v12           #paddingTop:I
    :cond_2
    sget-object v0, Lcom/android/launcher2/Workspace;->mPortraitCellLayoutMetrics:Landroid/graphics/Rect;

    goto :goto_0

    .line 2639
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "recycle"

    .prologue
    .line 2941
    if-nez p6, :cond_0

    .line 2942
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 2949
    .local v1, res:[F
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p1, v3

    .line 2950
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 2956
    sub-int v0, p1, p3

    .line 2957
    .local v0, left:I
    sub-int v2, p2, p4

    .line 2960
    .local v2, top:I
    const/4 v3, 0x0

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    int-to-float v4, v4

    aput v4, v1, v3

    .line 2961
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 2963
    return-object v1

    .line 2944
    .end local v0           #left:I
    .end local v1           #res:[F
    .end local v2           #top:I
    :cond_0
    move-object v1, p6

    .restart local v1       #res:[F
    goto :goto_0
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher2/DragView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;[IZZ)V
    .locals 12
    .parameter "loc"
    .parameter "scaleXY"
    .parameter "dragView"
    .parameter "layout"
    .parameter "info"
    .parameter "targetCell"
    .parameter "external"
    .parameter "scale"

    .prologue
    .line 3443
    move-object/from16 v0, p5

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3444
    .local v6, spanX:I
    move-object/from16 v0, p5

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3446
    .local v7, spanY:I
    const/4 v1, 0x0

    aget v4, p6, v1

    const/4 v1, 0x1

    aget v5, p6, v1

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v11

    .line 3447
    .local v11, r:Landroid/graphics/Rect;
    const/4 v1, 0x0

    iget v2, v11, Landroid/graphics/Rect;->left:I

    aput v2, p1, v1

    .line 3448
    const/4 v1, 0x1

    iget v2, v11, Landroid/graphics/Rect;->top:I

    aput v2, p1, v1

    .line 3450
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3451
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher2/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v8

    .line 3453
    .local v8, cellLayoutScale:F
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3457
    if-eqz p8, :cond_0

    .line 3458
    const/high16 v1, 0x3f80

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 3459
    .local v9, dragViewScaleX:F
    const/high16 v1, 0x3f80

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v10, v1, v2

    .line 3467
    .local v10, dragViewScaleY:F
    :goto_0
    const/4 v1, 0x0

    aget v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p1, v1

    .line 3468
    const/4 v1, 0x1

    aget v2, p1, v1

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    aput v2, p1, v1

    .line 3470
    const/4 v1, 0x0

    mul-float v2, v9, v8

    aput v2, p2, v1

    .line 3471
    const/4 v1, 0x1

    mul-float v2, v10, v8

    aput v2, p2, v1

    .line 3472
    return-void

    .line 3461
    .end local v9           #dragViewScaleX:F
    .end local v10           #dragViewScaleY:F
    :cond_0
    const/high16 v9, 0x3f80

    .line 3462
    .restart local v9       #dragViewScaleX:F
    const/high16 v10, 0x3f80

    .restart local v10       #dragViewScaleY:F
    goto :goto_0
.end method

.method private getRemoveFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I
    .locals 9
    .parameter "info"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/FolderInfo;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4240
    .local p2, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    iget-object v1, p1, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 4241
    .local v1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4243
    .local v2, contentsCount:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 4244
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 4245
    .local v0, appInfo:Lcom/android/launcher2/ShortcutInfo;
    iget-object v3, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4246
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 4248
    .local v5, name:Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4249
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4243
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4254
    .end local v0           #appInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #name:Landroid/content/ComponentName;
    :cond_1
    const-string v6, "Workspace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRemoveFolderItems info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", packageNames = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", appsToRemoveFromFolder.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4257
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    return v6
.end method

.method private getRemoveFolderItemsByComponent(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I
    .locals 9
    .parameter "info"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/FolderInfo;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 4403
    .local p2, componentNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .local p3, appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    iget-object v1, p1, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 4404
    .local v1, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4406
    .local v2, contentsCount:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 4407
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    .line 4408
    .local v0, appInfo:Lcom/android/launcher2/ShortcutInfo;
    iget-object v3, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4409
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 4411
    .local v5, name:Landroid/content/ComponentName;
    if-eqz v5, :cond_0

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4412
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4406
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4417
    .end local v0           #appInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #name:Landroid/content/ComponentName;
    :cond_1
    const-string v6, "Workspace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRemoveFolderItems info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", componentNames = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",contentsCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", appsToRemoveFromFolder.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4421
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    return v6
.end method

.method private getScrollRange()I
    .locals 2

    .prologue
    .line 901
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private hitsPage(IFF)Z
    .locals 7
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 638
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 639
    .local v1, page:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 640
    const/4 v4, 0x2

    new-array v0, v4, [F

    aput p2, v0, v3

    aput p3, v0, v2

    .line 641
    .local v0, localXY:[F
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 642
    aget v4, v0, v3

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    aget v4, v0, v2

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    aget v4, v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 645
    .end local v0           #localXY:[F
    :goto_0
    return v2

    .restart local v0       #localXY:[F
    :cond_0
    move v2, v3

    .line 642
    goto :goto_0

    .end local v0           #localXY:[F
    :cond_1
    move v2, v3

    .line 645
    goto :goto_0
.end method

.method private initAnimationArrays()V
    .locals 2

    .prologue
    .line 1639
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1640
    .local v0, childCount:I
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    if-eqz v1, :cond_0

    .line 1654
    :goto_0
    return-void

    .line 1641
    :cond_0
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    .line 1642
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    .line 1643
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    .line 1644
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    .line 1645
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    .line 1646
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    .line 1647
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    .line 1648
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    .line 1649
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    .line 1650
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    .line 1651
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    .line 1652
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    .line 1653
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    goto :goto_0
.end method

.method private isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 2967
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 1
    .parameter "d"

    .prologue
    .line 2971
    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    if-eq v0, p0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFolderNeedRemoved(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .locals 4
    .parameter "info"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/FolderInfo;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4385
    .local p2, componentNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    .local p3, appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    iget-object v0, p1, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 4386
    .local v0, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4387
    .local v1, contentsCount:I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->getRemoveFolderItemsByComponent(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I

    move-result v2

    .line 4389
    .local v2, needRemoveItemCount:I
    add-int/lit8 v3, v1, -0x1

    if-lt v2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isNeedToDelayRemoveFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)Z
    .locals 6
    .parameter "info"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/FolderInfo;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4219
    .local p2, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    iget-object v0, p1, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 4220
    .local v0, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4221
    .local v1, contentsCount:I
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->getRemoveFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/HashSet;Ljava/util/ArrayList;)I

    move-result v2

    .line 4223
    .local v2, removeFolderItemsCount:I
    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedToDelayRemoveFolderItems info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageNames = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", contentsCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removeFolderItemsCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    add-int/lit8 v3, v1, -0x1

    if-lt v2, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private manageFolderFeedback(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFLandroid/view/View;)V
    .locals 10
    .parameter "info"
    .parameter "targetLayout"
    .parameter "targetCell"
    .parameter "distance"
    .parameter "dragOverView"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 3100
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v6

    .line 3103
    .local v6, userFolderPending:Z
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-nez v0, :cond_1

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3105
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    new-instance v1, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;

    aget v2, p3, v5

    aget v3, p3, v8

    invoke-direct {v1, p0, p2, v2, v3}, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;II)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 3107
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mFolderCreationAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 3131
    .end local p5
    :cond_0
    :goto_0
    return-void

    .line 3111
    .restart local p5
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v7

    .line 3114
    .local v7, willAddToFolder:Z
    if-eqz v7, :cond_3

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-nez v0, :cond_3

    .line 3115
    check-cast p5, Lcom/android/launcher2/FolderIcon;

    .end local p5
    iput-object p5, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    .line 3116
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverFolderIcon:Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/FolderIcon;->onDragEnter(Ljava/lang/Object;)V

    .line 3117
    if-eqz p2, :cond_2

    .line 3118
    invoke-virtual {p2}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 3120
    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    goto :goto_0

    .line 3124
    .restart local p5
    :cond_3
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne v0, v9, :cond_4

    if-nez v7, :cond_4

    .line 3125
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    .line 3127
    :cond_4
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne v0, v8, :cond_0

    if-nez v6, :cond_0

    .line 3128
    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    goto :goto_0
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V
    .locals 6
    .parameter "touchXY"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"

    .prologue
    .line 3226
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 3227
    return-void
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V
    .locals 55
    .parameter "touchXY"
    .parameter "dragInfo"
    .parameter "cellLayout"
    .parameter "insertAtFirst"
    .parameter "d"

    .prologue
    .line 3239
    new-instance v50, Lcom/android/launcher2/Workspace$8;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;)V

    .local v50, exitSpringLoadedRunnable:Ljava/lang/Runnable;
    move-object/from16 v30, p2

    .line 3246
    check-cast v30, Lcom/android/launcher2/ItemInfo;

    .line 3247
    .local v30, info:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v30

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3248
    .local v5, spanX:I
    move-object/from16 v0, v30

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3249
    .local v6, spanY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_0

    .line 3250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v5, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 3251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 3254
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-wide/16 v26, -0x65

    .line 3257
    .local v26, container:J
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v28

    .line 3258
    .local v28, screen:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v0, v28

    if-eq v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-eq v2, v3, :cond_1

    .line 3260
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 3264
    :cond_1
    const-string v3, "Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDropExternal: touchXY[0] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_c

    const/4 v2, 0x0

    aget v2, p1, v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", touchXY[1] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_d

    const/4 v2, 0x1

    aget v2, p1, v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", dragInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",info = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", cellLayout = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", insertAtFirst = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", dragInfo = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", screen = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", container = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v26

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/PendingAddItemInfo;

    if-eqz v2, :cond_f

    move-object/from16 v24, p2

    .line 3273
    check-cast v24, Lcom/android/launcher2/PendingAddItemInfo;

    .line 3275
    .local v24, pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;
    const/16 v51, 0x1

    .line 3276
    .local v51, findNearestVacantCell:Z
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 3277
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3281
    .local v11, distance:F
    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1, v3, v11}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3284
    :cond_2
    const/16 v51, 0x0

    .line 3288
    .end local v11           #distance:F
    :cond_3
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/launcher2/ItemInfo;

    .line 3289
    .local v25, item:Lcom/android/launcher2/ItemInfo;
    const/16 v54, 0x0

    .line 3290
    .local v54, updateWidgetSize:Z
    if-eqz v51, :cond_7

    .line 3291
    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3292
    .local v15, minSpanX:I
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v16, v0

    .line 3293
    .local v16, minSpanY:I
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v2, :cond_4

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v2, :cond_4

    .line 3294
    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 3295
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    move/from16 v16, v0

    .line 3297
    :cond_4
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v21, v0

    .line 3298
    .local v21, resultSpan:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v14, v2

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v17, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v20, v0

    const/16 v22, 0x2

    move-object/from16 v12, p3

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3302
    const/4 v2, 0x0

    aget v2, v21, v2

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    aget v2, v21, v2

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-eq v2, v3, :cond_6

    .line 3303
    :cond_5
    const/16 v54, 0x1

    .line 3305
    :cond_6
    const/4 v2, 0x0

    aget v2, v21, v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 3306
    const/4 v2, 0x1

    aget v2, v21, v2

    move-object/from16 v0, v25

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 3309
    .end local v15           #minSpanX:I
    .end local v16           #minSpanY:I
    .end local v21           #resultSpan:[I
    :cond_7
    new-instance v22, Lcom/android/launcher2/Workspace$9;

    move-object/from16 v23, p0

    invoke-direct/range {v22 .. v28}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/PendingAddItemInfo;Lcom/android/launcher2/ItemInfo;JI)V

    .line 3332
    .local v22, onAnimationCompleteRunnable:Ljava/lang/Runnable;
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    move-object/from16 v2, v24

    check-cast v2, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget-object v0, v2, Lcom/android/launcher2/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v35, v0

    .line 3335
    .local v35, finalView:Landroid/view/View;
    :goto_3
    move-object/from16 v0, v35

    instance-of v2, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v2, :cond_8

    if-eqz v54, :cond_8

    move-object/from16 v49, v35

    .line 3336
    check-cast v49, Landroid/appwidget/AppWidgetHostView;

    .line 3337
    .local v49, awhv:Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v25

    iget v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, v49

    invoke-static {v0, v2, v3, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 3341
    .end local v49           #awhv:Landroid/appwidget/AppWidgetHostView;
    :cond_8
    const/16 v34, 0x0

    .line 3342
    .local v34, animationStyle:I
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    check-cast v24, Lcom/android/launcher2/PendingAddWidgetInfo;

    .end local v24           #pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_9

    .line 3344
    const/16 v34, 0x1

    .line 3346
    :cond_9
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v32, v0

    const/16 v36, 0x1

    move-object/from16 v29, p0

    move-object/from16 v31, p3

    move-object/from16 v33, v22

    invoke-virtual/range {v29 .. v36}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 3416
    .end local v22           #onAnimationCompleteRunnable:Ljava/lang/Runnable;
    .end local v25           #item:Lcom/android/launcher2/ItemInfo;
    .end local v34           #animationStyle:I
    .end local v35           #finalView:Landroid/view/View;
    .end local v51           #findNearestVacantCell:Z
    .end local v54           #updateWidgetSize:Z
    :cond_a
    :goto_4
    return-void

    .line 3254
    .end local v26           #container:J
    .end local v28           #screen:I
    :cond_b
    const-wide/16 v26, -0x64

    goto/16 :goto_0

    .line 3264
    .restart local v26       #container:J
    .restart local v28       #screen:I
    :cond_c
    const/4 v2, -0x1

    goto/16 :goto_1

    :cond_d
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 3332
    .restart local v22       #onAnimationCompleteRunnable:Ljava/lang/Runnable;
    .restart local v24       #pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;
    .restart local v25       #item:Lcom/android/launcher2/ItemInfo;
    .restart local v51       #findNearestVacantCell:Z
    .restart local v54       #updateWidgetSize:Z
    :cond_e
    const/16 v35, 0x0

    goto :goto_3

    .line 3350
    .end local v22           #onAnimationCompleteRunnable:Ljava/lang/Runnable;
    .end local v24           #pendingInfo:Lcom/android/launcher2/PendingAddItemInfo;
    .end local v25           #item:Lcom/android/launcher2/ItemInfo;
    .end local v51           #findNearestVacantCell:Z
    .end local v54           #updateWidgetSize:Z
    :cond_f
    const/16 v37, 0x0

    .line 3352
    .local v37, view:Landroid/view/View;
    move-object/from16 v0, v30

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 3367
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3355
    :pswitch_0
    move-object/from16 v0, v30

    iget-wide v2, v0, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_10

    move-object/from16 v0, v30

    instance-of v2, v0, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v2, :cond_10

    .line 3357
    new-instance v52, Lcom/android/launcher2/ShortcutInfo;

    check-cast v30, Lcom/android/launcher2/ApplicationInfo;

    .end local v30           #info:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/launcher2/ShortcutInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    .local v52, info:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v30, v52

    .line 3359
    .end local v52           #info:Lcom/android/launcher2/ItemInfo;
    .restart local v30       #info:Lcom/android/launcher2/ItemInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f040002

    move-object/from16 v2, v30

    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    move-object/from16 v0, p3

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v37

    .line 3372
    :goto_5
    if-eqz p1, :cond_11

    .line 3373
    const/4 v2, 0x0

    aget v3, p1, v2

    const/4 v2, 0x1

    aget v4, p1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 3377
    .restart local v11       #distance:F
    move-object/from16 v0, v50

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    .line 3378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v41, v0

    const/16 v43, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v44, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v45, v0

    move-object/from16 v36, p0

    move-wide/from16 v38, v26

    move-object/from16 v40, p3

    move/from16 v42, v11

    invoke-virtual/range {v36 .. v45}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v39, v0

    const/16 v42, 0x1

    move-object/from16 v36, p0

    move-object/from16 v38, p3

    move/from16 v40, v11

    move-object/from16 v41, p5

    invoke-virtual/range {v36 .. v42}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3388
    .end local v11           #distance:F
    :cond_11
    if-eqz p1, :cond_12

    .line 3390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x1

    const/16 v43, 0x1

    const/16 v44, 0x1

    const/16 v45, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const/16 v48, 0x2

    move-object/from16 v38, p3

    invoke-virtual/range {v38 .. v48}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3396
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v41, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v42, v2, v3

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v43, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v44, v0

    move-object/from16 v36, p0

    move-wide/from16 v38, v26

    move/from16 v40, v28

    move/from16 v45, p4

    invoke-virtual/range {v36 .. v45}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 3398
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3399
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v53

    check-cast v53, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3400
    .local v53, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/android/launcher2/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 3403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v38, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v43, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v44, v0

    move-object/from16 v39, v30

    move-wide/from16 v40, v26

    move/from16 v42, v28

    invoke-static/range {v38 .. v44}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 3406
    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    if-eqz v2, :cond_a

    .line 3410
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    .line 3411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, v37

    move-object/from16 v1, v50

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3413
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_4

    .line 3363
    .end local v53           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :pswitch_1
    const v3, 0x7f04000e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v2, v30

    check-cast v2, Lcom/android/launcher2/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, p3

    invoke-static {v3, v4, v0, v2, v7}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/FolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v37

    .line 3365
    goto/16 :goto_5

    .line 3394
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    goto/16 :goto_6

    .line 3352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onResetScrollArea()V
    .locals 1

    .prologue
    .line 3807
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3809
    return-void
.end method

.method private removeFolderItems(Lcom/android/launcher2/FolderInfo;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "info"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4267
    .local p2, appsToRemoveFromFolder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ShortcutInfo;

    .line 4268
    .local v1, item:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p1, v1}, Lcom/android/launcher2/FolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 4269
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v2, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_0

    .line 4271
    .end local v1           #item:Lcom/android/launcher2/ShortcutInfo;
    :cond_0
    return-void
.end method

.method private setChildrenBackgroundAlphaMultipliers(F)V
    .locals 3
    .parameter "a"

    .prologue
    .line 1307
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1308
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1309
    .local v0, child:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1311
    .end local v0           #child:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method private static squaredDistance([F[F)F
    .locals 5
    .parameter "point1"
    .parameter "point2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2826
    aget v2, p0, v3

    aget v3, p1, v3

    sub-float v0, v2, v3

    .line 2827
    .local v0, distanceX:F
    aget v2, p1, v4

    aget v3, p1, v4

    sub-float v1, v2, v3

    .line 2828
    .local v1, distanceY:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 3

    .prologue
    .line 980
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    .line 981
    .local v0, enableWallpaperEffects:Z
    if-eqz v0, :cond_0

    .line 982
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 984
    :cond_0
    return-void
.end method

.method private updateChildrenLayersEnabled(Z)V
    .locals 7
    .parameter "force"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1474
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v5, :cond_4

    :cond_0
    move v3, v4

    .line 1475
    .local v3, small:Z
    :goto_0
    if-nez p1, :cond_1

    if-nez v3, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v1, v4

    .line 1477
    .local v1, enableChildrenLayers:Z
    :cond_2
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v4, :cond_3

    .line 1478
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    .line 1479
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v4, :cond_5

    .line 1480
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1488
    :cond_3
    return-void

    .end local v1           #enableChildrenLayers:Z
    .end local v3           #small:Z
    :cond_4
    move v3, v1

    .line 1474
    goto :goto_0

    .line 1482
    .restart local v1       #enableChildrenLayers:Z
    .restart local v3       #small:Z
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1483
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1484
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->disableHardwareLayers()V

    .line 1482
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updatePageAlphaValues(I)V
    .locals 8
    .parameter "screenCenter"

    .prologue
    const/high16 v7, 0x3f80

    .line 1284
    iget v5, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    if-ltz v5, :cond_0

    iget v5, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le v5, v6, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 1285
    .local v3, isInOverscroll:Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne v5, v6, :cond_4

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    .line 1289
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 1290
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1291
    .local v1, child:Lcom/android/launcher2/CellLayout;
    if-eqz v1, :cond_1

    .line 1292
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher2/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 1293
    .local v4, scrollProgress:F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v0, v7, v5

    .line 1294
    .local v0, alpha:F
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1295
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    if-nez v5, :cond_3

    .line 1296
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1289
    .end local v0           #alpha:F
    .end local v4           #scrollProgress:F
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1284
    .end local v1           #child:Lcom/android/launcher2/CellLayout;
    .end local v2           #i:I
    .end local v3           #isInOverscroll:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1299
    .restart local v0       #alpha:F
    .restart local v1       #child:Lcom/android/launcher2/CellLayout;
    .restart local v2       #i:I
    .restart local v3       #isInOverscroll:Z
    .restart local v4       #scrollProgress:F
    :cond_3
    invoke-virtual {v1, v7}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    goto :goto_2

    .line 1304
    .end local v0           #alpha:F
    .end local v1           #child:Lcom/android/launcher2/CellLayout;
    .end local v2           #i:I
    .end local v4           #scrollProgress:F
    :cond_4
    return-void
.end method

.method private updateShortcutInfoCheck(Lcom/android/launcher2/BubbleTextView;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "shortcut"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/BubbleTextView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4432
    .local p2, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    .line 4436
    .local v2, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v3, v2, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4437
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 4438
    .local v5, name:Landroid/content/ComponentName;
    iget v6, v2, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-nez v6, :cond_1

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 4440
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4441
    .local v1, appCount:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 4442
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 4443
    .local v0, app:Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4444
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v2, v6}, Lcom/android/launcher2/ShortcutInfo;->updateIcon(Lcom/android/launcher2/IconCache;)V

    .line 4445
    iget-object v6, v0, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/launcher2/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 4446
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {p1, v2, v6}, Lcom/android/launcher2/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/IconCache;)V

    .line 4447
    const/4 v6, 0x1

    .line 4452
    .end local v0           #app:Lcom/android/launcher2/ApplicationInfo;
    .end local v1           #appCount:I
    .end local v4           #k:I
    :goto_1
    return v6

    .line 4441
    .restart local v0       #app:Lcom/android/launcher2/ApplicationInfo;
    .restart local v1       #appCount:I
    .restart local v4       #k:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4452
    .end local v0           #app:Lcom/android/launcher2/ApplicationInfo;
    .end local v1           #appCount:I
    .end local v4           #k:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private updateWallpaperOffsets()V
    .locals 6

    .prologue
    .line 991
    const/4 v1, 0x0

    .line 992
    .local v1, updateNow:Z
    const/4 v0, 0x1

    .line 993
    .local v0, keepUpdating:Z
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v2, :cond_2

    .line 994
    const/4 v1, 0x1

    .line 995
    const/4 v0, 0x0

    .line 996
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 997
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1001
    :goto_0
    if-eqz v1, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 1007
    :cond_0
    if-eqz v0, :cond_1

    .line 1008
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1010
    :cond_1
    return-void

    .line 999
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 12

    .prologue
    const/high16 v11, 0x3f80

    .line 937
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    div-float v9, v11, v9

    invoke-virtual {v8, v9, v11}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 942
    iget v1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 943
    .local v1, layoutScale:F
    iput v11, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 944
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v5

    .line 947
    .local v5, scrollRange:I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v6

    .line 949
    .local v6, scrollX:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSupportCycleSlidingScreen()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 950
    iget v8, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le v6, v8, :cond_1

    .line 951
    iget v8, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    sub-int v2, v6, v8

    .line 952
    .local v2, offset:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float v9, v11, v9

    mul-float/2addr v8, v9

    float-to-int v6, v8

    .line 957
    .end local v2           #offset:I
    :cond_0
    :goto_0
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v0, v8

    .line 958
    .local v0, adjustedScrollX:F
    iget v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperScrollRatio:F

    mul-float/2addr v0, v8

    .line 959
    iput v1, p0, Lcom/android/launcher2/PagedView;->mLayoutScale:F

    .line 961
    int-to-float v8, v5

    div-float v4, v0, v8

    .line 964
    .local v4, scrollProgress:F
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    if-eqz v8, :cond_2

    .line 968
    iget v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    iget v9, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 970
    .local v7, wallpaperTravelWidth:I
    int-to-float v8, v7

    mul-float/2addr v8, v4

    iget v9, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    sub-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float v3, v8, v9

    .line 972
    .local v3, offsetInDips:F
    iget v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    int-to-float v8, v8

    div-float v2, v3, v8

    .line 975
    .end local v3           #offsetInDips:F
    .end local v7           #wallpaperTravelWidth:I
    :goto_1
    return v2

    .line 953
    .end local v0           #adjustedScrollX:F
    .end local v4           #scrollProgress:F
    :cond_1
    if-gez v6, :cond_0

    .line 954
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    neg-int v9, v6

    mul-int v6, v8, v9

    goto :goto_0

    .restart local v0       #adjustedScrollX:F
    .restart local v4       #scrollProgress:F
    :cond_2
    move v2, v4

    .line 975
    goto :goto_1
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 875
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 882
    .local v4, aspectRatio:F
    const v0, 0x3fcccccd

    .line 883
    .local v0, ASPECT_RATIO_LANDSCAPE:F
    const/high16 v1, 0x3f20

    .line 884
    .local v1, ASPECT_RATIO_PORTRAIT:F
    const/high16 v2, 0x3fc0

    .line 885
    .local v2, WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE:F
    const v3, 0x3f99999a

    .line 892
    .local v3, WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT:F
    const v5, 0x3e9d89d7

    .line 895
    .local v5, x:F
    const v6, 0x3f80fc10

    .line 896
    .local v6, y:F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 29
    .parameter "d"

    .prologue
    .line 2090
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2091
    .local v9, dropTargetLayout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    move-object/from16 v0, p0

    if-eq v2, v0, :cond_a

    .line 2093
    if-nez v9, :cond_0

    .line 2094
    const/4 v2, 0x0

    .line 2177
    :goto_0
    return v2

    .line 2096
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 2098
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    .line 2108
    :goto_1
    const/16 v17, 0x1

    .line 2109
    .local v17, spanX:I
    const/16 v18, 0x1

    .line 2110
    .local v18, spanY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_4

    .line 2111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object/from16 v23, v0

    .line 2112
    .local v23, dragCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v17, v0

    .line 2113
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v18, v0

    .line 2120
    .end local v23           #dragCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    :goto_2
    move/from16 v5, v17

    .line 2121
    .local v5, minSpanX:I
    move/from16 v6, v18

    .line 2122
    .local v6, minSpanY:I
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v2, :cond_2

    .line 2123
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v5, v2, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 2124
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v6, v2, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    .line 2127
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v4, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {v9, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v11

    .line 2132
    .local v11, distance:F
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v12, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher2/Workspace;->willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2134
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2105
    .end local v5           #minSpanX:I
    .end local v6           #minSpanY:I
    .end local v11           #distance:F
    .end local v17           #spanX:I
    .end local v18           #spanY:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2, v3}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_1

    .line 2115
    .restart local v17       #spanX:I
    .restart local v18       #spanY:I
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/launcher2/ItemInfo;

    .line 2116
    .local v24, dragInfo:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v17, v0

    .line 2117
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v18, v0

    goto/16 :goto_2

    .line 2139
    .end local v24           #dragInfo:Lcom/android/launcher2/ItemInfo;
    .restart local v5       #minSpanX:I
    .restart local v6       #minSpanY:I
    .restart local v11       #distance:F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9, v3, v11}, Lcom/android/launcher2/Workspace;->willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2141
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2144
    :cond_6
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v21, v0

    .line 2145
    .local v21, resultSpan:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v14, v2

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v20, v0

    const/16 v22, 0x3

    move-object v12, v9

    move v15, v5

    move/from16 v16, v6

    invoke-virtual/range {v12 .. v22}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_7

    const/16 v25, 0x1

    .line 2151
    .local v25, foundCell:Z
    :goto_3
    if-nez v25, :cond_9

    .line 2154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v9}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v28

    .line 2155
    .local v28, isHotseat:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    if-eqz v2, :cond_8

    if-eqz v28, :cond_8

    .line 2156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v26

    .line 2157
    .local v26, hotseat:Lcom/android/launcher2/Hotseat;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Hotseat;->isAllAppsButtonRank(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2159
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2148
    .end local v25           #foundCell:Z
    .end local v26           #hotseat:Lcom/android/launcher2/Hotseat;
    .end local v28           #isHotseat:Z
    :cond_7
    const/16 v25, 0x0

    goto :goto_3

    .line 2163
    .restart local v25       #foundCell:Z
    .restart local v28       #isHotseat:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    .line 2164
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2169
    .end local v28           #isHotseat:Z
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v2, :cond_a

    .line 2170
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 2171
    .local v27, info:Lcom/android/launcher2/PendingAddWidgetInfo;
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedView;->searchIMTKWidget(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->showOnlyOneWidgetMessage(Lcom/android/launcher2/PendingAddWidgetInfo;)V

    .line 2173
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2177
    .end local v5           #minSpanX:I
    .end local v6           #minSpanY:I
    .end local v11           #distance:F
    .end local v17           #spanX:I
    .end local v18           #spanY:I
    .end local v21           #resultSpan:[I
    .end local v25           #foundCell:Z
    .end local v27           #info:Lcom/android/launcher2/PendingAddWidgetInfo;
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/CellLayout;JIIIZII)V
    .locals 15
    .parameter "info"
    .parameter "target"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "insertAtFirst"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 2065
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f040002

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v2, v4, v0, v1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v14

    .line 2067
    .local v14, view:Landroid/view/View;
    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 2068
    .local v3, cellXY:[I
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v2, p2

    move/from16 v6, p9

    move/from16 v7, p10

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 2070
    const-string v2, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addApplicationShortcut: info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", view = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", container = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", screen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cellXY[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cellXY[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", insertAtFirst = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    const/4 v2, 0x0

    aget v9, v3, v2

    const/4 v2, 0x1

    aget v10, v3, v2

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v4, p0

    move-object v5, v14

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v13, p8

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 2077
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v2, 0x0

    aget v9, v3, v2

    const/4 v2, 0x1

    aget v10, v3, v2

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-static/range {v4 .. v10}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 2079
    return-void
.end method

.method public addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z
    .locals 4
    .parameter "dragInfo"
    .parameter "layout"

    .prologue
    const/4 v0, 0x0

    .line 3213
    const-string v1, "Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addExternalItemToScreen: dragInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", layout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3217
    iget-object v1, p1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V

    .line 3218
    const/4 v0, 0x1

    .line 3221
    :goto_0
    return v0

    .line 3220
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, p2}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1428
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1429
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1430
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 1431
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1436
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1433
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addInScreen(Landroid/view/View;JIIIII)V
    .locals 10
    .parameter "child"
    .parameter "container"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 523
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIIIZ)V

    .line 524
    return-void
.end method

.method addInScreen(Landroid/view/View;JIIIIIZ)V
    .locals 14
    .parameter "child"
    .parameter "container"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 540
    const-wide/16 v4, -0x64

    cmp-long v4, p2, v4

    if-nez v4, :cond_2

    .line 541
    if-ltz p4, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move/from16 v0, p4

    if-lt v0, v4, :cond_2

    .line 542
    :cond_0
    const-string v4, "Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The screen must be >= 0 and < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "); skipping child"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 549
    .restart local p1
    :cond_2
    const-wide/16 v4, -0x65

    cmp-long v4, p2, v4

    if-nez v4, :cond_9

    .line 550
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v12

    .line 551
    .local v12, layout:Lcom/android/launcher2/CellLayout;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 554
    instance-of v4, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_3

    move-object v4, p1

    .line 555
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 558
    :cond_3
    if-gez p4, :cond_8

    .line 559
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/Hotseat;->getOrderInHotseat(II)I

    move-result p4

    .line 576
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 578
    .local v11, genericLp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v11, :cond_4

    instance-of v4, v11, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-nez v4, :cond_b

    .line 579
    :cond_4
    new-instance v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 588
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_2
    if-gez p7, :cond_5

    if-gez p8, :cond_5

    .line 589
    const/4 v4, 0x0

    iput-boolean v4, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 593
    :cond_5
    const/4 v7, -0x1

    .line 610
    .local v7, childId:I
    instance-of v4, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_c

    const-wide/16 v4, -0x64

    cmp-long v4, p2, v4

    if-nez v4, :cond_c

    .line 612
    const-wide/16 v4, 0x1

    add-long v4, v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v4 .. v10}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    .end local v7           #childId:I
    move-result v7

    .line 617
    .restart local v7       #childId:I
    :goto_3
    instance-of v4, p1, Lcom/android/launcher2/Folder;

    if-nez v4, :cond_d

    const/4 v9, 0x1

    .line 618
    .local v9, markCellsAsOccupied:Z
    :goto_4
    if-eqz p9, :cond_e

    const/4 v6, 0x0

    :goto_5
    move-object v4, v12

    move-object v5, p1

    move-object v8, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move-result v4

    if-nez v4, :cond_6

    .line 622
    const-string v4, "Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add to item at ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") to CellLayout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_6
    instance-of v4, p1, Lcom/android/launcher2/Folder;

    if-nez v4, :cond_7

    .line 626
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 627
    iget-object v4, p0, Lcom/android/launcher2/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 629
    :cond_7
    instance-of v4, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v4, :cond_1

    .line 630
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast p1, Lcom/android/launcher2/DropTarget;

    .end local p1
    invoke-virtual {v4, p1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    goto/16 :goto_0

    .line 563
    .end local v7           #childId:I
    .end local v9           #markCellsAsOccupied:Z
    .end local v11           #genericLp:Landroid/view/ViewGroup$LayoutParams;
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local p1
    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result p5

    .line 564
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result p6

    goto/16 :goto_1

    .line 568
    .end local v12           #layout:Lcom/android/launcher2/CellLayout;
    :cond_9
    instance-of v4, p1, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_a

    move-object v4, p1

    .line 569
    check-cast v4, Lcom/android/launcher2/FolderIcon;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/FolderIcon;->setTextVisible(Z)V

    .line 572
    :cond_a
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    .line 573
    .restart local v12       #layout:Lcom/android/launcher2/CellLayout;
    new-instance v4, Lcom/android/launcher2/IconKeyEventListener;

    invoke-direct {v4}, Lcom/android/launcher2/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    .restart local v11       #genericLp:Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    move-object v13, v11

    .line 581
    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 582
    .restart local v13       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move/from16 v0, p5

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 583
    move/from16 v0, p6

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 584
    move/from16 v0, p7

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 585
    move/from16 v0, p8

    iput v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_2

    .line 614
    .restart local v7       #childId:I
    :cond_c
    invoke-static/range {p2 .. p8}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v7

    goto/16 :goto_3

    .line 617
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 618
    .restart local v9       #markCellsAsOccupied:Z
    :cond_e
    const/4 v6, -0x1

    goto/16 :goto_5
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z
    .locals 7
    .parameter "newView"
    .parameter "target"
    .parameter "targetCell"
    .parameter "distance"
    .parameter "d"
    .parameter "external"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2303
    iget v4, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v4, p4, v4

    if-lez v4, :cond_1

    .line 2334
    :cond_0
    :goto_0
    return v2

    .line 2307
    :cond_1
    aget v4, p3, v2

    aget v5, p3, v3

    invoke-virtual {p2, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2309
    .local v0, dropOverView:Landroid/view/View;
    const-string v4, "Workspace"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createUserFolderIfNecessary: newView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", target = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", targetCell[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", targetCell[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", external = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", d = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dropOverView = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v4, :cond_0

    .line 2316
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2318
    instance-of v4, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 2319
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 2320
    .local v1, fi:Lcom/android/launcher2/FolderIcon;
    iget-object v4, p5, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2321
    invoke-virtual {v1, p5}, Lcom/android/launcher2/FolderIcon;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 2324
    if-nez p6, :cond_2

    .line 2325
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2328
    :cond_2
    const-string v2, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToExistingFolderIfNecessary: fi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", d = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2331
    goto/16 :goto_0
.end method

.method public animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 40
    .parameter "info"
    .parameter "cellLayout"
    .parameter "dragView"
    .parameter "onCompleteRunnable"
    .parameter "animationType"
    .parameter "finalView"
    .parameter "external"

    .prologue
    .line 3477
    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    .line 3478
    .local v38, from:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3480
    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 3481
    .local v5, finalPos:[I
    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 3482
    .local v6, scaleXY:[F
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher2/PendingAddShortcutInfo;

    if-nez v4, :cond_3

    const/4 v12, 0x1

    .line 3483
    .local v12, scalePreview:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    move/from16 v11, p7

    invoke-direct/range {v4 .. v12}, Lcom/android/launcher2/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher2/DragView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;[IZZ)V

    .line 3486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 3487
    .local v39, res:Landroid/content/res/Resources;
    const v4, 0x7f0a0014

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v0, v4, -0xc8

    move/from16 v21, v0

    .line 3490
    .local v21, duration:I
    const-string v4, "Workspace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animateWidgetDrop: info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", animationType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", finalPos = ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), scaleXY = ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), scalePreview = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",external = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3496
    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    if-eqz p7, :cond_0

    .line 3497
    const-string v4, "Workspace"

    const-string v7, "6557954 Animate widget drop, final view is appWidgetHostView"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3500
    :cond_0
    const/4 v4, 0x2

    move/from16 v0, p5

    if-eq v0, v4, :cond_1

    if-eqz p7, :cond_4

    :cond_1
    if-eqz p6, :cond_4

    .line 3501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->createWidgetBitmap(Lcom/android/launcher2/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 3502
    .local v37, crossFadeBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    .line 3503
    move/from16 v0, v21

    int-to-float v4, v0

    const v7, 0x3f4ccccd

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher2/DragView;->crossFade(I)V

    .line 3508
    .end local v37           #crossFadeBitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v22

    .line 3509
    .local v22, dragLayer:Lcom/android/launcher2/DragLayer;
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_5

    .line 3510
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v13

    const/16 v16, 0x0

    const v17, 0x3dcccccd

    const v18, 0x3dcccccd

    const/16 v19, 0x0

    move-object/from16 v14, p3

    move-object v15, v5

    move-object/from16 v20, p4

    invoke-virtual/range {v13 .. v21}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;[IFFFILjava/lang/Runnable;I)V

    .line 3535
    :goto_2
    return-void

    .line 3482
    .end local v12           #scalePreview:Z
    .end local v21           #duration:I
    .end local v22           #dragLayer:Lcom/android/launcher2/DragLayer;
    .end local v39           #res:Landroid/content/res/Resources;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 3504
    .restart local v12       #scalePreview:Z
    .restart local v21       #duration:I
    .restart local v39       #res:Landroid/content/res/Resources;
    :cond_4
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-ne v4, v7, :cond_2

    if-eqz p7, :cond_2

    .line 3505
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v7

    aput v8, v6, v4

    goto :goto_1

    .line 3514
    .restart local v22       #dragLayer:Lcom/android/launcher2/DragLayer;
    :cond_5
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_6

    .line 3515
    const/16 v34, 0x2

    .line 3520
    .local v34, endStyle:I
    :goto_3
    new-instance v33, Lcom/android/launcher2/Workspace$10;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3531
    .local v33, onComplete:Ljava/lang/Runnable;
    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    const/4 v4, 0x0

    aget v26, v5, v4

    const/4 v4, 0x1

    aget v27, v5, v4

    const/high16 v28, 0x3f80

    const/high16 v29, 0x3f80

    const/high16 v30, 0x3f80

    const/4 v4, 0x0

    aget v31, v6, v4

    const/4 v4, 0x1

    aget v32, v6, v4

    move-object/from16 v23, p3

    move/from16 v35, v21

    move-object/from16 v36, p0

    invoke-virtual/range {v22 .. v36}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_2

    .line 3517
    .end local v33           #onComplete:Ljava/lang/Runnable;
    .end local v34           #endStyle:I
    :cond_6
    const/16 v34, 0x0

    .restart local v34       #endStyle:I
    goto :goto_3
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 4
    .parameter "r"

    .prologue
    .line 1260
    const v0, 0x3dcccccd

    .line 1261
    .local v0, pivotA:F
    const v1, 0x3ecccccd

    .line 1262
    .local v1, pivotB:F
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1263
    const/4 v2, 0x0

    .line 1267
    :goto_0
    return v2

    .line 1264
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1265
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 1267
    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V
    .locals 24
    .parameter "child"
    .parameter "source"

    .prologue
    .line 2010
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 2013
    .local v21, r:Landroid/content/res/Resources;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    const/4 v7, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v7}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2015
    .local v4, b:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 2016
    .local v14, bmpWidth:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 2018
    .local v13, bmpHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v7}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    move-result v12

    .line 2019
    .local v12, scale:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    int-to-float v3, v3

    int-to-float v7, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2021
    .local v5, dragLayerX:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    int-to-float v3, v3

    int-to-float v7, v13

    int-to-float v8, v13

    mul-float/2addr v8, v12

    sub-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sub-float/2addr v3, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v3, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 2029
    .local v6, dragLayerY:I
    const/4 v10, 0x0

    .line 2030
    .local v10, dragVisualizeOffset:Landroid/graphics/Point;
    const/4 v11, 0x0

    .line 2031
    .local v11, dragRect:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/BubbleTextView;

    if-nez v3, :cond_0

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v3, :cond_3

    .line 2032
    :cond_0
    const v3, 0x7f0b0022

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 2033
    .local v18, iconSize:I
    const v3, 0x7f0b001b

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 2034
    .local v17, iconPaddingTop:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    .line 2035
    .local v23, top:I
    sub-int v3, v14, v18

    div-int/lit8 v19, v3, 0x2

    .line 2036
    .local v19, left:I
    add-int v22, v19, v18

    .line 2037
    .local v22, right:I
    add-int v15, v23, v18

    .line 2038
    .local v15, bottom:I
    add-int v6, v6, v23

    .line 2041
    new-instance v10, Landroid/graphics/Point;

    .end local v10           #dragVisualizeOffset:Landroid/graphics/Point;
    const/4 v3, -0x1

    add-int/lit8 v7, v17, -0x1

    invoke-direct {v10, v3, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 2043
    .restart local v10       #dragVisualizeOffset:Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Rect;

    .end local v11           #dragRect:Landroid/graphics/Rect;
    move/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-direct {v11, v0, v1, v2, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2050
    .end local v15           #bottom:I
    .end local v17           #iconPaddingTop:I
    .end local v18           #iconSize:I
    .end local v19           #left:I
    .end local v22           #right:I
    .end local v23           #top:I
    .restart local v11       #dragRect:Landroid/graphics/Rect;
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/BubbleTextView;

    if-eqz v3, :cond_2

    move-object/from16 v16, p1

    .line 2051
    check-cast v16, Lcom/android/launcher2/BubbleTextView;

    .line 2052
    .local v16, icon:Lcom/android/launcher2/BubbleTextView;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BubbleTextView;->clearPressedOrFocusedBackground()V

    .line 2055
    .end local v16           #icon:Lcom/android/launcher2/BubbleTextView;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v12}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Point;Landroid/graphics/Rect;F)V

    .line 2057
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2060
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    .line 2061
    return-void

    .line 2044
    :cond_3
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v3, :cond_1

    .line 2045
    const v3, 0x7f0b003c

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 2046
    .local v20, previewSize:I
    new-instance v11, Landroid/graphics/Rect;

    .end local v11           #dragRect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    move/from16 v0, v20

    invoke-direct {v11, v3, v7, v8, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v11       #dragRect:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    .line 1521
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1522
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1523
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1524
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1525
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1526
    .local v1, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->buildHardwareLayer()V

    .line 1524
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1529
    .end local v0           #childCount:I
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v2           #i:I
    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1530
    return-void
.end method

.method clearChildrenCache()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1462
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1463
    .local v2, screenCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1464
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1465
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1467
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1468
    invoke-virtual {v1, v4}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1463
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1471
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method clearDropTargets()V
    .locals 7

    .prologue
    .line 3891
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 3893
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3894
    .local v4, layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3895
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 3896
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3897
    .local v5, v:Landroid/view/View;
    instance-of v6, v5, Lcom/android/launcher2/DropTarget;

    if-eqz v6, :cond_1

    .line 3898
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast v5, Lcom/android/launcher2/DropTarget;

    .end local v5           #v:Landroid/view/View;
    invoke-virtual {v6, v5}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3895
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3902
    .end local v0           #childCount:I
    .end local v3           #j:I
    .end local v4           #layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_2
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 1170
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    .line 1171
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 1172
    return-void
.end method

.method public createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "v"
    .parameter "canvas"
    .parameter "padding"

    .prologue
    const/4 v5, 0x1

    .line 1908
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 1909
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v5

    .line 1910
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1917
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1918
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZ)V

    .line 1919
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1921
    return-object v0

    .line 1913
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #b:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z
    .locals 21
    .parameter "newView"
    .parameter "container"
    .parameter "target"
    .parameter "targetCell"
    .parameter "distance"
    .parameter "external"
    .parameter "dragView"
    .parameter "postAnimationRunnable"

    .prologue
    .line 2233
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v2, p6, v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 2298
    :goto_0
    return v2

    .line 2234
    :cond_0
    const/4 v2, 0x0

    aget v2, p5, v2

    const/4 v3, 0x1

    aget v3, p5, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    .line 2236
    .local v9, v:Landroid/view/View;
    const-string v2, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createUserFolderIfNecessary: newView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDragInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetCell[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, p5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", targetCell[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, p5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", external = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dragView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCreateUserFolderOnDrop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    const/16 v19, 0x0

    .line 2244
    .local v19, hasntMoved:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    .line 2245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v17

    .line 2246
    .local v17, cellParent:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    const/4 v3, 0x0

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    const/4 v3, 0x1

    aget v3, p5, v3

    if-ne v2, v3, :cond_3

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_3

    const/16 v19, 0x1

    .line 2250
    .end local v17           #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_4

    .line 2252
    :cond_2
    const-string v2, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not create user folder: hasntMoved = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCreateUserFolderOnDrop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2246
    .restart local v17       #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    .line 2257
    .end local v17           #cellParent:Lcom/android/launcher2/CellLayout;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2258
    if-nez p5, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 2260
    .local v6, screen:I
    :goto_2
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v15, v2, Lcom/android/launcher2/ShortcutInfo;

    .line 2261
    .local v15, aboveShortcut:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v0, v2, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v20, v0

    .line 2264
    .local v20, willBecomeShortcut:Z
    const-string v2, "Workspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createUserFolderIfNecessary: aboveShortcut = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", willBecomeShortcut = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    if-eqz v15, :cond_9

    if-eqz v20, :cond_9

    .line 2269
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ShortcutInfo;

    .line 2270
    .local v10, sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/ShortcutInfo;

    .line 2272
    .local v18, destInfo:Lcom/android/launcher2/ShortcutInfo;
    if-nez p7, :cond_5

    .line 2273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2276
    :cond_5
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2277
    .local v12, folderLocation:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v9, v12}, Lcom/android/launcher2/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v13

    .line 2278
    .local v13, scale:F
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    aget v7, p5, v3

    const/4 v3, 0x1

    aget v8, p5, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/Launcher;->addFolder(Lcom/android/launcher2/CellLayout;JIII)Lcom/android/launcher2/FolderIcon;

    move-result-object v7

    .line 2282
    .local v7, fi:Lcom/android/launcher2/FolderIcon;
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2283
    const/4 v2, -0x1

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 2284
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 2285
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 2288
    if-eqz p8, :cond_7

    const/16 v16, 0x1

    .line 2289
    .local v16, animate:Z
    :goto_3
    if-eqz v16, :cond_8

    move-object/from16 v8, v18

    move-object/from16 v11, p8

    move-object/from16 v14, p9

    .line 2290
    invoke-virtual/range {v7 .. v14}, Lcom/android/launcher2/FolderIcon;->performCreateAnimation(Lcom/android/launcher2/ShortcutInfo;Landroid/view/View;Lcom/android/launcher2/ShortcutInfo;Lcom/android/launcher2/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V

    .line 2296
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2258
    .end local v6           #screen:I
    .end local v7           #fi:Lcom/android/launcher2/FolderIcon;
    .end local v10           #sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v12           #folderLocation:Landroid/graphics/Rect;
    .end local v13           #scale:F
    .end local v15           #aboveShortcut:Z
    .end local v16           #animate:Z
    .end local v18           #destInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v20           #willBecomeShortcut:Z
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    goto/16 :goto_2

    .line 2288
    .restart local v6       #screen:I
    .restart local v7       #fi:Lcom/android/launcher2/FolderIcon;
    .restart local v10       #sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    .restart local v12       #folderLocation:Landroid/graphics/Rect;
    .restart local v13       #scale:F
    .restart local v15       #aboveShortcut:Z
    .restart local v18       #destInfo:Lcom/android/launcher2/ShortcutInfo;
    .restart local v20       #willBecomeShortcut:Z
    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .line 2293
    .restart local v16       #animate:Z
    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    .line 2294
    invoke-virtual {v7, v10}, Lcom/android/launcher2/FolderIcon;->addItem(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_4

    .line 2298
    .end local v7           #fi:Lcom/android/launcher2/FolderIcon;
    .end local v10           #sourceInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v12           #folderLocation:Landroid/graphics/Rect;
    .end local v13           #scale:F
    .end local v16           #animate:Z
    .end local v18           #destInfo:Lcom/android/launcher2/ShortcutInfo;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public createWidgetBitmap(Lcom/android/launcher2/ItemInfo;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "widgetInfo"
    .parameter "layout"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3419
    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    iget v7, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v8, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object v3

    .line 3421
    .local v3, unScaledSize:[I
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v4

    .line 3422
    .local v4, visibility:I
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 3424
    aget v6, v3, v9

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3425
    .local v5, width:I
    aget v6, v3, v10

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3426
    .local v2, height:I
    aget v6, v3, v9

    aget v7, v3, v10

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3428
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3430
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p2, v5, v2}, Landroid/view/View;->measure(II)V

    .line 3431
    aget v6, v3, v9

    aget v7, v3, v10

    invoke-virtual {p2, v9, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 3432
    invoke-virtual {p2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3433
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3434
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3435
    return-object v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    const v7, 0x3f060a92

    .line 758
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 762
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 764
    .local v1, deltaY:F
    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_0

    .line 766
    div-float v3, v1, v0

    .line 767
    .local v3, slope:F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 769
    .local v4, theta:F
    iget v5, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/launcher2/PagedView;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_3

    .line 770
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelCurrentPageLongPress()V

    .line 773
    :cond_3
    const v5, 0x3f860a92

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_0

    .line 776
    cmpl-float v5, v4, v7

    if-lez v5, :cond_4

    .line 781
    sub-float/2addr v4, v7

    .line 782
    div-float v5, v4, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 784
    .local v2, extraRatio:F
    const/high16 v5, 0x3f80

    const/high16 v6, 0x4080

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-super {p0, p1, v5}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 788
    .end local v2           #extraRatio:F
    :cond_4
    const/high16 v5, 0x3f00

    invoke-super {p0, p1, v5}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0
.end method

.method disableBackground()V
    .locals 1

    .prologue
    .line 1214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 1215
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3705
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 3706
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    :cond_0
    const/4 v0, 0x0

    .line 704
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method enableBackground()V
    .locals 1

    .prologue
    .line 1217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 1218
    return-void
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromPage"
    .parameter "toPage"

    .prologue
    const/4 v5, 0x1

    .line 1443
    if-le p1, p2, :cond_0

    .line 1444
    move v3, p1

    .line 1445
    .local v3, temp:I
    move p1, p2

    .line 1446
    move p2, v3

    .line 1449
    .end local v3           #temp:I
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1451
    .local v2, screenCount:I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1452
    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1454
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 1455
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1456
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1457
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1459
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;
    .locals 6
    .parameter "cl"
    .parameter "pendingInfo"
    .parameter "hCell"
    .parameter "vCell"
    .parameter "hSpan"
    .parameter "vSpan"

    .prologue
    .line 393
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, r:Landroid/graphics/Rect;
    move-object v0, p1

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    .line 394
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 395
    return-object v5
.end method

.method public estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I
    .locals 10
    .parameter "hSpan"
    .parameter "vSpan"
    .parameter "itemInfo"
    .parameter "springLoaded"

    .prologue
    const v2, 0x7fffffff

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 374
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 375
    .local v8, size:[I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .local v1, cl:Lcom/android/launcher2/CellLayout;
    move-object v0, p0

    move-object v2, p3

    move v4, v3

    move v5, p1

    move v6, p2

    .line 377
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->estimateItemPosition(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;IIII)Landroid/graphics/Rect;

    move-result-object v7

    .line 378
    .local v7, r:Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    aput v0, v8, v3

    .line 379
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v8, v9

    .line 380
    if-eqz p4, :cond_0

    .line 381
    aget v0, v8, v3

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v3

    .line 382
    aget v0, v8, v9

    int-to-float v0, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    aput v0, v8, v9

    .line 388
    .end local v1           #cl:Lcom/android/launcher2/CellLayout;
    .end local v7           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-object v8

    .line 386
    :cond_1
    aput v2, v8, v3

    .line 387
    aput v2, v8, v9

    goto :goto_0
.end method

.method public exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 1634
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    .line 1635
    .local v0, dragLayer:Lcom/android/launcher2/DragLayer;
    invoke-virtual {v0}, Lcom/android/launcher2/DragLayer;->clearAllResizeFrames()V

    .line 1636
    return-void
.end method

.method getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutAndWidgetContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3847
    .local v0, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3848
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3849
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3848
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3851
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3852
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3854
    :cond_1
    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1256
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    return v0
.end method

.method getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;Z)Landroid/animation/Animator;
    .locals 1
    .parameter "state"
    .parameter "animated"

    .prologue
    .line 1657
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method getChangeStateAnimation(Lcom/android/launcher2/Workspace$State;ZI)Landroid/animation/Animator;
    .locals 29
    .parameter "state"
    .parameter "animated"
    .parameter "delay"

    .prologue
    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 1662
    const/4 v5, 0x0

    .line 1811
    :goto_0
    return-object v5

    .line 1666
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->initAnimationArrays()V

    .line 1668
    if-eqz p2, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 1671
    .local v5, anim:Landroid/animation/AnimatorSet;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedView;->getNextPage()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v16, v0

    .line 1674
    .local v16, oldState:Lcom/android/launcher2/Workspace$State;
    sget-object v26, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v17, 0x1

    .line 1675
    .local v17, oldStateIsNormal:Z
    :goto_2
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    const/16 v19, 0x1

    .line 1676
    .local v19, oldStateIsSpringLoaded:Z
    :goto_3
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/16 v18, 0x1

    .line 1677
    .local v18, oldStateIsSmall:Z
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    .line 1678
    sget-object v26, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_a

    const/16 v20, 0x1

    .line 1679
    .local v20, stateIsNormal:Z
    :goto_5
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    const/16 v22, 0x1

    .line 1680
    .local v22, stateIsSpringLoaded:Z
    :goto_6
    sget-object v26, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_c

    const/16 v21, 0x1

    .line 1681
    .local v21, stateIsSmall:Z
    :goto_7
    const/high16 v12, 0x3f80

    .line 1682
    .local v12, finalScaleFactor:F
    if-eqz v22, :cond_d

    const/high16 v11, 0x3f80

    .line 1683
    .local v11, finalBackgroundAlpha:F
    :goto_8
    const/16 v23, 0x0

    .line 1684
    .local v23, translationX:F
    const/16 v24, 0x0

    .line 1685
    .local v24, translationY:F
    const/16 v25, 0x1

    .line 1687
    .local v25, zoomIn:Z
    sget-object v26, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_10

    .line 1688
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedShrinkFactor:F

    move/from16 v27, v0

    if-eqz v21, :cond_e

    const v26, 0x3dcccccd

    :goto_9
    sub-float v12, v27, v26

    .line 1689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedPageSpacing:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 1690
    if-eqz v17, :cond_f

    if-eqz v21, :cond_f

    .line 1691
    const/16 v25, 0x0

    .line 1692
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/PagedView;->setLayoutScale(F)V

    .line 1693
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1703
    :goto_a
    if-eqz v25, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0002

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 1706
    .local v9, duration:I
    :goto_b
    const/4 v13, 0x0

    .local v13, i:I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_15

    .line 1707
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1708
    .local v7, cl:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-ne v13, v0, :cond_12

    :cond_1
    const/high16 v10, 0x3f80

    .line 1710
    .local v10, finalAlpha:F
    :goto_d
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getAlpha()F

    move-result v8

    .line 1711
    .local v8, currentAlpha:F
    move v15, v8

    .line 1714
    .local v15, initialAlpha:F
    if-eqz v18, :cond_2

    if-nez v20, :cond_3

    :cond_2
    if-eqz v17, :cond_5

    if-eqz v21, :cond_5

    .line 1719
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v13, v0, :cond_4

    if-eqz p2, :cond_4

    if-eqz v19, :cond_13

    .line 1720
    :cond_4
    const/high16 v10, 0x3f80

    .line 1727
    :cond_5
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v26, v0

    aput v15, v26, v13

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aput v10, v26, v13

    .line 1729
    if-eqz p2, :cond_14

    .line 1730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldTranslationXs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v27

    aput v27, v26, v13

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldTranslationYs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v27

    aput v27, v26, v13

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldScaleXs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v27

    aput v27, v26, v13

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldScaleYs:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v27

    aput v27, v26, v13

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v26, v0

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v27

    aput v27, v26, v13

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    move-object/from16 v26, v0

    aput v23, v26, v13

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    move-object/from16 v26, v0

    aput v24, v26, v13

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    move-object/from16 v26, v0

    aput v12, v26, v13

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    move-object/from16 v26, v0

    aput v12, v26, v13

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v26, v0

    aput v11, v26, v13

    .line 1706
    :goto_f
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_c

    .line 1668
    .end local v5           #anim:Landroid/animation/AnimatorSet;
    .end local v7           #cl:Lcom/android/launcher2/CellLayout;
    .end local v8           #currentAlpha:F
    .end local v9           #duration:I
    .end local v10           #finalAlpha:F
    .end local v11           #finalBackgroundAlpha:F
    .end local v12           #finalScaleFactor:F
    .end local v13           #i:I
    .end local v15           #initialAlpha:F
    .end local v16           #oldState:Lcom/android/launcher2/Workspace$State;
    .end local v17           #oldStateIsNormal:Z
    .end local v18           #oldStateIsSmall:Z
    .end local v19           #oldStateIsSpringLoaded:Z
    .end local v20           #stateIsNormal:Z
    .end local v21           #stateIsSmall:Z
    .end local v22           #stateIsSpringLoaded:Z
    .end local v23           #translationX:F
    .end local v24           #translationY:F
    .end local v25           #zoomIn:Z
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1674
    .restart local v5       #anim:Landroid/animation/AnimatorSet;
    .restart local v16       #oldState:Lcom/android/launcher2/Workspace$State;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1675
    .restart local v17       #oldStateIsNormal:Z
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 1676
    .restart local v19       #oldStateIsSpringLoaded:Z
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1678
    .restart local v18       #oldStateIsSmall:Z
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1679
    .restart local v20       #stateIsNormal:Z
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 1680
    .restart local v22       #stateIsSpringLoaded:Z
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 1682
    .restart local v12       #finalScaleFactor:F
    .restart local v21       #stateIsSmall:Z
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 1688
    .restart local v11       #finalBackgroundAlpha:F
    .restart local v23       #translationX:F
    .restart local v24       #translationY:F
    .restart local v25       #zoomIn:Z
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 1695
    :cond_f
    const/high16 v11, 0x3f80

    .line 1696
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/PagedView;->setLayoutScale(F)V

    goto/16 :goto_a

    .line 1699
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mOriginalPageSpacing:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->setPageSpacing(I)V

    .line 1700
    const/high16 v26, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedView;->setLayoutScale(F)V

    goto/16 :goto_a

    .line 1703
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0009

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    goto/16 :goto_b

    .line 1708
    .restart local v7       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v9       #duration:I
    .restart local v13       #i:I
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_d

    .line 1722
    .restart local v8       #currentAlpha:F
    .restart local v10       #finalAlpha:F
    .restart local v15       #initialAlpha:F
    :cond_13
    const/4 v15, 0x0

    .line 1723
    const/4 v10, 0x0

    goto/16 :goto_e

    .line 1742
    :cond_14
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1743
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1744
    invoke-virtual {v7, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1745
    invoke-virtual {v7, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1746
    invoke-virtual {v7, v11}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1747
    invoke-virtual {v7, v10}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    goto :goto_f

    .line 1751
    .end local v7           #cl:Lcom/android/launcher2/CellLayout;
    .end local v8           #currentAlpha:F
    .end local v10           #finalAlpha:F
    .end local v15           #initialAlpha:F
    :cond_15
    if-eqz p2, :cond_1c

    .line 1752
    const/4 v14, 0x0

    .local v14, index:I
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    if-ge v14, v0, :cond_1b

    .line 1753
    move v13, v14

    .line 1754
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout;

    .line 1755
    .restart local v7       #cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getAlpha()F

    move-result v8

    .line 1756
    .restart local v8       #currentAlpha:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_17

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1752
    :cond_16
    :goto_11
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_10

    .line 1765
    :cond_17
    new-instance v3, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-direct {v3, v7}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 1766
    .local v3, a:Lcom/android/launcher2/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->translationX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->translationY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleX(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    invoke-virtual/range {v26 .. v27}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->scaleY(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    int-to-long v0, v9

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1772
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v27, v0

    aget v27, v27, v13

    cmpl-float v26, v26, v27

    if-nez v26, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    cmpl-float v26, v8, v26

    if-eqz v26, :cond_19

    .line 1775
    :cond_18
    new-instance v4, Lcom/android/launcher2/LauncherViewPropertyAnimator;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Lcom/android/launcher2/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 1777
    .local v4, alphaAnim:Lcom/android/launcher2/LauncherViewPropertyAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->alpha(F)Lcom/android/launcher2/LauncherViewPropertyAnimator;

    move-result-object v26

    int-to-long v0, v9

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lcom/android/launcher2/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1780
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1782
    .end local v4           #alphaAnim:Lcom/android/launcher2/LauncherViewPropertyAnimator;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mOldBackgroundAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mNewBackgroundAlphas:[F

    move-object/from16 v26, v0

    aget v26, v26, v13

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_16

    .line 1784
    :cond_1a
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v26

    int-to-long v0, v9

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1785
    .local v6, bgAnim:Landroid/animation/ValueAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1786
    new-instance v26, Lcom/android/launcher2/Workspace$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v13}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;I)V

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1793
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/16 :goto_11

    .line 1797
    .end local v3           #a:Lcom/android/launcher2/LauncherViewPropertyAnimator;
    .end local v6           #bgAnim:Landroid/animation/ValueAnimator;
    .end local v7           #cl:Lcom/android/launcher2/CellLayout;
    .end local v8           #currentAlpha:F
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->buildPageHardwareLayers()V

    .line 1798
    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1801
    .end local v14           #index:I
    :cond_1c
    if-eqz v22, :cond_1d

    .line 1805
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0a0001

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x42c8

    div-float v26, v26, v27

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 1809
    :cond_1d
    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->animateBackgroundGradient(FZ)V

    goto/16 :goto_0

    .line 1784
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public getChildrenOutlineAlpha()F
    .locals 1

    .prologue
    .line 1210
    iget v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 0

    .prologue
    .line 1850
    return-object p0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 3572
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4096
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 4097
    .local v0, page:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0061

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 4096
    .end local v0           #page:I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 1420
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1421
    const/high16 v0, 0x6

    .line 1423
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    goto :goto_0
.end method

.method public getDragInfo()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 1

    .prologue
    .line 3582
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    return-object v0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 1
    .parameter "d"

    .prologue
    .line 2765
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;
    .locals 8
    .parameter "tag"

    .prologue
    .line 3858
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 3860
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3861
    .local v6, layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3862
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 3863
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3864
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/android/launcher2/Folder;

    if-eqz v7, :cond_1

    move-object v3, v0

    .line 3865
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 3866
    .local v3, f:Lcom/android/launcher2/Folder;
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    if-ne v7, p1, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v7, :cond_1

    .line 3872
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #f:Lcom/android/launcher2/Folder;
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :goto_1
    return-object v3

    .line 3862
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v6       #layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3872
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    const/4 v2, 0x0

    .line 3204
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3205
    return-void
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .parameter "loc"

    .prologue
    .line 4102
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 4103
    return-void
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 6

    .prologue
    .line 494
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    .line 495
    .local v2, dragLayer:Lcom/android/launcher2/DragLayer;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 496
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 497
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 498
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/android/launcher2/Folder;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 499
    check-cast v3, Lcom/android/launcher2/Folder;

    .line 500
    .local v3, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v5, :cond_0

    .line 504
    .end local v0           #child:Landroid/view/View;
    .end local v3           #folder:Lcom/android/launcher2/Folder;
    :goto_1
    return-object v3

    .line 496
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 504
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 5
    .parameter "v"

    .prologue
    .line 3815
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v2

    .line 3816
    .local v2, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3817
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 3821
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 3876
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 3878
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 3879
    .local v5, layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3880
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3881
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3882
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_1

    .line 3887
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :goto_1
    return-object v0

    .line 3880
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v5       #layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3887
    .end local v0           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v5           #layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getViewLocationRelativeToSelf(Landroid/view/View;[I)V
    .locals 7
    .parameter "v"
    .parameter "location"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2570
    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2571
    aget v2, p2, v5

    .line 2572
    .local v2, x:I
    aget v3, p2, v6

    .line 2574
    .local v3, y:I
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2575
    aget v0, p2, v5

    .line 2576
    .local v0, vX:I
    aget v1, p2, v6

    .line 2578
    .local v1, vY:I
    sub-int v4, v0, v2

    aput v4, p2, v5

    .line 2579
    sub-int v4, v1, v3

    aput v4, p2, v6

    .line 2580
    return-void
.end method

.method getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3829
    .local v0, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 3830
    .local v2, screenCount:I
    const/4 v1, 0x0

    .local v1, screen:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3831
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3830
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3833
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3834
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3836
    :cond_1
    return-object v0
.end method

.method hideOutlines()V
    .locals 4

    .prologue
    .line 1185
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1188
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1189
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1190
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1191
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1193
    :cond_2
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 663
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 667
    .local v0, current:I
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 663
    .end local v0           #current:I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    goto :goto_0

    .line 667
    .restart local v0       #current:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 652
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 656
    .local v0, current:I
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 652
    .end local v0           #current:I
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    goto :goto_0

    .line 656
    .restart local v0       #current:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected initWorkspace()V
    .locals 7

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 431
    .local v1, context:Landroid/content/Context;
    iget v4, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    iput v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 432
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-static {v4}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 433
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 434
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 435
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 436
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 438
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 440
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f020001

    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    new-instance v4, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v4, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 446
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 450
    .local v2, display:Landroid/view/Display;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v4

    if-nez v4, :cond_0

    .line 453
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 455
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mDisplaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperTravelWidth:I

    .line 458
    const v4, 0x3f0ccccd

    const v5, 0x7f0b0022

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    .line 459
    const/high16 v4, 0x43fa

    iget v5, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/PagedView;->mFlingThresholdVelocity:I

    .line 460
    return-void

    .line 441
    .end local v2           #display:Landroid/view/Display;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method isDrawingBackgroundGradient()Z
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 3687
    const/4 v0, 0x1

    return v0
.end method

.method public isFinishedSwitchingState()Z
    .locals 2

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmall()Z
    .locals 2

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportCycleSlidingScreen()Z
    .locals 1

    .prologue
    .line 4278
    const/4 v0, 0x1

    return v0
.end method

.method public isSwitchingState()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method isTouchActive()Z
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 5
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 2816
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2817
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 2818
    .local v0, scrollX:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2819
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 2821
    :cond_0
    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, p2, v1

    .line 2822
    const/4 v1, 0x1

    aget v2, p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    aput v2, p2, v1

    .line 2823
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 1
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 2775
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2776
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 5
    .parameter "v"
    .parameter "xy"
    .parameter "cachedInverseMatrix"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2789
    if-nez p3, :cond_0

    .line 2790
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2791
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2793
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 2794
    .local v0, scrollX:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2795
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 2797
    :cond_1
    aget v1, p2, v3

    int-to-float v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v3

    .line 2798
    aget v1, p2, v4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v4

    .line 2799
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2800
    return-void
.end method

.method mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V
    .locals 4
    .parameter "hotseat"
    .parameter "xy"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2803
    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2804
    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2805
    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2806
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2807
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 4076
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4077
    if-eqz p1, :cond_1

    .line 4078
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 4083
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 4084
    return-void

    .line 4080
    :cond_1
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected notifyPageSwitchListener()V
    .locals 1

    .prologue
    .line 868
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->notifyPageSwitchListener()V

    .line 869
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 870
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 1353
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1354
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1356
    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAttachedToWindow: mWindowToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1359
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 1360
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .parameter "parent"
    .parameter "child"

    .prologue
    const/4 v3, 0x1

    .line 469
    instance-of v1, p2, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_0

    .line 470
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    .line 472
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 473
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 474
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 475
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d005f

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 477
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 481
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1364
    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow: mWindowToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1367
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 417
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 418
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/InstallShortcutReceiver;->disableAndFlushInstallQueue(Landroid/content/Context;)V

    .line 423
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/UninstallShortcutReceiver;->disableAndFlushUninstallQueue(Landroid/content/Context;)V

    .line 424
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    .line 2588
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v1}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragEnter()V

    .line 2589
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2590
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2592
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2593
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 2594
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2595
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2599
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2600
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 2602
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2647
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragExit()V

    .line 2651
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_3

    .line 2652
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2655
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2663
    :goto_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-ne v0, v2, :cond_4

    .line 2664
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2670
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->onResetScrollArea()V

    .line 2676
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2677
    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 2679
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 2681
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 2682
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 2684
    :cond_1
    return-void

    .line 2657
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 2660
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    goto :goto_0

    .line 2665
    :cond_4
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2666
    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mAddToExistingFolderOnDrop:Z

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 30
    .parameter "d"

    .prologue
    .line 2981
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_1

    .line 3096
    :cond_0
    :goto_0
    return-void

    .line 2983
    :cond_1
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 2984
    .local v29, r:Landroid/graphics/Rect;
    const/16 v27, 0x0

    .line 2985
    .local v27, layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/launcher2/ItemInfo;

    .line 2988
    .local v26, item:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ltz v2, :cond_2

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-gez v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Improper spans found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2989
    :cond_3
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-nez v2, :cond_a

    const/4 v13, 0x0

    .line 2994
    .local v13, child:Landroid/view/View;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2995
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->isExternalDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 2997
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v27

    .line 3001
    :cond_4
    if-nez v27, :cond_5

    .line 3002
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    int-to-float v4, v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/launcher2/Workspace;->findMatchingPageForDragOver(Lcom/android/launcher2/DragView;FFZ)Lcom/android/launcher2/CellLayout;

    move-result-object v27

    .line 3004
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v27

    if-eq v0, v2, :cond_6

    .line 3006
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3007
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v3, Lcom/android/launcher2/Workspace$State;->SPRING_LOADED:Lcom/android/launcher2/Workspace$State;

    if-ne v2, v3, :cond_b

    const/16 v25, 0x1

    .line 3010
    .local v25, isInSpringLoadedMode:Z
    :goto_2
    if-eqz v25, :cond_6

    .line 3011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v2}, Lcom/android/launcher2/SpringLoadedDragController;->cancel()V

    .line 3036
    .end local v25           #isInSpringLoadedMode:Z
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    .line 3038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    .line 3044
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/launcher2/ItemInfo;

    .line 3046
    .local v24, info:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x1

    aget v2, v2, v4

    float-to-int v4, v2

    move-object/from16 v0, v26

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 3050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/Workspace;->setCurrentDropOverCell(II)V

    .line 3052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v6

    .line 3055
    .local v6, targetCellDistance:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v7

    .line 3058
    .local v7, dragOverView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v3, v24

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/Workspace;->manageFolderFeedback(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFLandroid/view/View;)V

    .line 3061
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v17, v0

    .line 3062
    .local v17, minSpanX:I
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v18, v0

    .line 3063
    .local v18, minSpanY:I
    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v2, :cond_7

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v2, :cond_7

    .line 3064
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    move/from16 v17, v0

    .line 3065
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    move/from16 v18, v0

    .line 3068
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v10, v2

    move-object/from16 v0, v26

    iget v11, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v26

    iget v12, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher2/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v28

    .line 3072
    .local v28, nearestDropOccupied:Z
    if-nez v28, :cond_11

    .line 3073
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v15, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x0

    aget v17, v2, v3

    .end local v17           #minSpanX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v3, 0x1

    aget v18, v2, v3

    .end local v18           #minSpanY:I
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v2}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v23

    invoke-virtual/range {v12 .. v23}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 3089
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    if-nez v28, :cond_0

    .line 3091
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    .line 3092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    goto/16 :goto_0

    .line 2992
    .end local v6           #targetCellDistance:F
    .end local v7           #dragOverView:Landroid/view/View;
    .end local v13           #child:Landroid/view/View;
    .end local v24           #info:Lcom/android/launcher2/ItemInfo;
    .end local v28           #nearestDropOccupied:Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v13, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto/16 :goto_1

    .line 3009
    .restart local v13       #child:Landroid/view/View;
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 3014
    .restart local v25       #isInSpringLoadedMode:Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/SpringLoadedDragController;->setAlarm(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_3

    .line 3020
    .end local v25           #isInSpringLoadedMode:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/Workspace;->isDragWidget(Lcom/android/launcher2/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 3021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3022
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3023
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v27

    .line 3026
    :cond_e
    if-nez v27, :cond_f

    .line 3027
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v27

    .line 3029
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, v27

    if-eq v0, v2, :cond_6

    .line 3030
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3031
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    goto/16 :goto_3

    .line 3041
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto/16 :goto_4

    .line 3077
    .restart local v6       #targetCellDistance:F
    .restart local v7       #dragOverView:Landroid/view/View;
    .restart local v17       #minSpanX:I
    .restart local v18       #minSpanY:I
    .restart local v24       #info:Lcom/android/launcher2/ItemInfo;
    .restart local v28       #nearestDropOccupied:Z
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mDragMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher2/Alarm;->alarmPending()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mLastReorderX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/Workspace;->mLastReorderY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_8

    .line 3083
    :cond_13
    new-instance v14, Lcom/android/launcher2/Workspace$ReorderAlarmListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v21, v0

    move-object/from16 v15, p0

    move-object/from16 v22, v13

    invoke-direct/range {v14 .. v22}, Lcom/android/launcher2/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher2/Workspace;[FIIIILcom/android/launcher2/DragView;Landroid/view/View;)V

    .line 3085
    .local v14, listener:Lcom/android/launcher2/Workspace$ReorderAlarmListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v2, v14}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 3086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/Workspace;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    goto/16 :goto_5
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 1
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragOccuring:Z

    .line 404
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->lockScreenOrientation()V

    .line 406
    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->setChildrenBackgroundAlphaMultipliers(F)V

    .line 408
    invoke-static {}, Lcom/android/launcher2/InstallShortcutReceiver;->enableInstallQueue()V

    .line 409
    invoke-static {}, Lcom/android/launcher2/UninstallShortcutReceiver;->enableUninstallQueue()V

    .line 410
    return-void
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1617
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 1620
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1621
    return-void
.end method

.method public onDragStartedWithItem(Lcom/android/launcher2/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .parameter "info"
    .parameter "b"
    .parameter "clipAlpha"

    .prologue
    const/4 v4, 0x0

    .line 1624
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 1626
    .local v2, canvas:Landroid/graphics/Canvas;
    iget v0, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v1, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object v7

    .line 1629
    .local v7, size:[I
    const/4 v3, 0x2

    aget v4, v7, v4

    const/4 v0, 0x1

    aget v5, v7, v0

    move-object v0, p0

    move-object v1, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1631
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 1384
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1387
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v1, :cond_0

    .line 1388
    iget v1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1389
    .local v0, alpha:I
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1390
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1392
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1395
    .end local v0           #alpha:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1398
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1399
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 65
    .parameter "d"

    .prologue
    .line 2338
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher2/Workspace;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    .line 2341
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher2/Workspace;->mDropToLayout:Lcom/android/launcher2/CellLayout;

    .line 2344
    .local v8, dropTargetLayout:Lcom/android/launcher2/CellLayout;
    if-eqz v8, :cond_0

    .line 2345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToHotseatLayout(Lcom/android/launcher2/Hotseat;[F)V

    .line 2358
    :cond_0
    :goto_0
    const/16 v64, -0x1

    .line 2359
    .local v64, snapScreen:I
    const/16 v62, 0x0

    .line 2360
    .local v62, resizeOnDrop:Z
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    move-object/from16 v0, p0

    if-eq v5, v0, :cond_3

    .line 2361
    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x0

    aget v7, v7, v9

    float-to-int v7, v7

    aput v7, v6, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v7, v7, v9

    float-to-int v7, v7

    aput v7, v6, v5

    .line 2363
    .local v6, touchXY:[I
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;ZLcom/android/launcher2/DropTarget$DragObject;)V

    .line 2545
    .end local v6           #touchXY:[I
    :cond_1
    :goto_1
    return-void

    .line 2348
    .end local v62           #resizeOnDrop:Z
    .end local v64           #snapScreen:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5, v7}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    goto :goto_0

    .line 2364
    .restart local v62       #resizeOnDrop:Z
    .restart local v64       #snapScreen:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v5, :cond_1

    .line 2365
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v28, v0

    .line 2367
    .local v28, cell:Landroid/view/View;
    const/16 v63, 0x0

    .line 2368
    .local v63, resizeRunnable:Ljava/lang/Runnable;
    if-eqz v8, :cond_b

    .line 2370
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    if-eq v5, v8, :cond_c

    const/16 v55, 0x1

    .line 2371
    .local v55, hasMovedLayouts:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v8}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v54

    .line 2372
    .local v54, hasMovedIntoHotseat:Z
    if-eqz v54, :cond_d

    const-wide/16 v16, -0x65

    .line 2375
    .local v16, container:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-gez v5, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v35, v0

    .line 2377
    .local v35, screen:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v12, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 2378
    .local v12, spanX:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v13, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 2382
    .local v13, spanY:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v10, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    float-to-int v11, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v9, p0

    move-object v14, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/launcher2/Workspace;->findNearestArea(IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v7, v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    invoke-virtual {v8, v5, v7, v9}, Lcom/android/launcher2/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v20

    .line 2394
    .local v20, distance:F
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, v28

    move-object/from16 v18, v8

    invoke-virtual/range {v14 .. v23}, Lcom/android/launcher2/Workspace;->createUserFolderIfNecessary(Landroid/view/View;JLcom/android/launcher2/CellLayout;[IFZLcom/android/launcher2/DragView;Ljava/lang/Runnable;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2399
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v24, v0

    const/16 v27, 0x0

    move-object/from16 v21, p0

    move-object/from16 v22, v28

    move-object/from16 v23, v8

    move/from16 v25, v20

    move-object/from16 v26, p1

    invoke-virtual/range {v21 .. v27}, Lcom/android/launcher2/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher2/CellLayout;[IFLcom/android/launcher2/DropTarget$DragObject;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2406
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Lcom/android/launcher2/ItemInfo;

    .line 2407
    .local v58, item:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v58

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v24, v0

    .line 2408
    .local v24, minSpanX:I
    move-object/from16 v0, v58

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v25, v0

    .line 2409
    .local v25, minSpanY:I
    move-object/from16 v0, v58

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    if-lez v5, :cond_5

    move-object/from16 v0, v58

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    if-lez v5, :cond_5

    .line 2410
    move-object/from16 v0, v58

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    move/from16 v24, v0

    .line 2411
    move-object/from16 v0, v58

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    move/from16 v25, v0

    .line 2414
    :cond_5
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v30, v0

    .line 2415
    .local v30, resultSpan:[I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v0, v5

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v5, v5, v7

    float-to-int v0, v5

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object/from16 v29, v0

    const/16 v31, 0x1

    move-object/from16 v21, v8

    move/from16 v26, v12

    move/from16 v27, v13

    invoke-virtual/range {v21 .. v31}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2419
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-ltz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    if-ltz v5, :cond_11

    const/16 v53, 0x1

    .line 2422
    .local v53, foundCell:Z
    :goto_7
    if-eqz v53, :cond_7

    move-object/from16 v0, v28

    instance-of v5, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    aget v5, v30, v5

    move-object/from16 v0, v58

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    if-ne v5, v7, :cond_6

    const/4 v5, 0x1

    aget v5, v30, v5

    move-object/from16 v0, v58

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    if-eq v5, v7, :cond_7

    .line 2424
    :cond_6
    const/16 v62, 0x1

    .line 2425
    const/4 v5, 0x0

    aget v5, v30, v5

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2426
    const/4 v5, 0x1

    aget v5, v30, v5

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v49, v28

    .line 2427
    check-cast v49, Landroid/appwidget/AppWidgetHostView;

    .line 2428
    .local v49, awhv:Landroid/appwidget/AppWidgetHostView;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v7, 0x0

    aget v7, v30, v7

    const/4 v9, 0x1

    aget v9, v30, v9

    move-object/from16 v0, v49

    invoke-static {v0, v5, v7, v9}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 2432
    .end local v49           #awhv:Landroid/appwidget/AppWidgetHostView;
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    move/from16 v0, v35

    if-eq v5, v0, :cond_8

    if-nez v54, :cond_8

    .line 2433
    move/from16 v64, v35

    .line 2434
    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2437
    :cond_8
    if-eqz v53, :cond_13

    .line 2438
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/launcher2/ItemInfo;

    .line 2439
    .local v57, info:Lcom/android/launcher2/ItemInfo;
    if-eqz v55, :cond_9

    .line 2441
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2442
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v36, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v37, v5, v7

    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move/from16 v38, v0

    move-object/from16 v0, v57

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move/from16 v39, v0

    move-object/from16 v31, p0

    move-object/from16 v32, v28

    move-wide/from16 v33, v16

    invoke-virtual/range {v31 .. v39}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;JIIIII)V

    .line 2447
    :cond_9
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v60

    check-cast v60, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2448
    .local v60, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 2449
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 2450
    move-object/from16 v0, v58

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2451
    move-object/from16 v0, v58

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, v60

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2452
    const/4 v5, 0x1

    move-object/from16 v0, v60

    iput-boolean v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2455
    const/16 v51, -0x1

    .line 2456
    .local v51, childId:I
    move-object/from16 v0, v28

    instance-of v5, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_12

    const-wide/16 v9, -0x64

    cmp-long v5, v16, v9

    if-nez v5, :cond_12

    .line 2458
    const-wide/16 v9, 0x1

    add-long v36, v16, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v39, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v40, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v42, v0

    invoke-static/range {v36 .. v42}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v51

    .line 2465
    :goto_8
    move-object/from16 v0, v28

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 2467
    const-wide/16 v9, -0x65

    cmp-long v5, v16, v9

    if-eqz v5, :cond_a

    move-object/from16 v0, v28

    instance-of v5, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_a

    .line 2469
    move-object/from16 v50, v8

    .local v50, cellLayout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v56, v28

    .line 2473
    check-cast v56, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 2474
    .local v56, hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v56 .. v56}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v61

    .line 2475
    .local v61, pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v61, :cond_a

    move-object/from16 v0, v61

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v5, :cond_a

    .line 2477
    new-instance v48, Lcom/android/launcher2/Workspace$5;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    move-object/from16 v2, v57

    move-object/from16 v3, v56

    move-object/from16 v4, v50

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 2483
    .local v48, addResizeFrame:Ljava/lang/Runnable;
    new-instance v63, Lcom/android/launcher2/Workspace$6;

    .end local v63           #resizeRunnable:Ljava/lang/Runnable;
    move-object/from16 v0, v63

    move-object/from16 v1, p0

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    .line 2495
    .end local v48           #addResizeFrame:Ljava/lang/Runnable;
    .end local v50           #cellLayout:Lcom/android/launcher2/CellLayout;
    .end local v56           #hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v61           #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v63       #resizeRunnable:Ljava/lang/Runnable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v31, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v36, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v37, v0

    move-object/from16 v32, v57

    move-wide/from16 v33, v16

    invoke-static/range {v31 .. v37}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 2507
    .end local v12           #spanX:I
    .end local v13           #spanY:I
    .end local v16           #container:J
    .end local v20           #distance:F
    .end local v24           #minSpanX:I
    .end local v25           #minSpanY:I
    .end local v30           #resultSpan:[I
    .end local v35           #screen:I
    .end local v51           #childId:I
    .end local v53           #foundCell:Z
    .end local v54           #hasMovedIntoHotseat:Z
    .end local v55           #hasMovedLayouts:Z
    .end local v57           #info:Lcom/android/launcher2/ItemInfo;
    .end local v58           #item:Lcom/android/launcher2/ItemInfo;
    .end local v60           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_b
    :goto_9
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v38

    check-cast v38, Lcom/android/launcher2/CellLayout;

    .line 2508
    .local v38, parent:Lcom/android/launcher2/CellLayout;
    move-object/from16 v52, v63

    .line 2511
    .local v52, finalResizeRunnable:Ljava/lang/Runnable;
    new-instance v40, Lcom/android/launcher2/Workspace$7;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/Runnable;)V

    .line 2521
    .local v40, onCompleteRunnable:Ljava/lang/Runnable;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher2/Workspace;->mAnimatingViewIntoPlace:Z

    .line 2522
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v5}, Lcom/android/launcher2/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2523
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/launcher2/ItemInfo;

    .line 2524
    .local v37, info:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, v37

    iget v5, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_15

    .line 2525
    if-eqz v62, :cond_14

    const/16 v41, 0x2

    .line 2527
    .local v41, animationType:I
    :goto_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v39, v0

    const/16 v43, 0x0

    move-object/from16 v36, p0

    move-object/from16 v42, v28

    invoke-virtual/range {v36 .. v43}, Lcom/android/launcher2/Workspace;->animateWidgetDrop(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2538
    .end local v37           #info:Lcom/android/launcher2/ItemInfo;
    .end local v41           #animationType:I
    :goto_b
    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2541
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    .line 2542
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v5, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/PagedView;->stopDragAppWidget(I)V

    goto/16 :goto_1

    .line 2370
    .end local v38           #parent:Lcom/android/launcher2/CellLayout;
    .end local v40           #onCompleteRunnable:Ljava/lang/Runnable;
    .end local v52           #finalResizeRunnable:Ljava/lang/Runnable;
    :cond_c
    const/16 v55, 0x0

    goto/16 :goto_2

    .line 2372
    .restart local v54       #hasMovedIntoHotseat:Z
    .restart local v55       #hasMovedLayouts:Z
    :cond_d
    const-wide/16 v16, -0x64

    goto/16 :goto_3

    .line 2375
    .restart local v16       #container:J
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v35

    goto/16 :goto_4

    .line 2377
    .restart local v35       #screen:I
    :cond_f
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 2378
    .restart local v12       #spanX:I
    :cond_10
    const/4 v13, 0x1

    goto/16 :goto_6

    .line 2419
    .restart local v13       #spanY:I
    .restart local v20       #distance:F
    .restart local v24       #minSpanX:I
    .restart local v25       #minSpanY:I
    .restart local v30       #resultSpan:[I
    .restart local v58       #item:Lcom/android/launcher2/ItemInfo;
    :cond_11
    const/16 v53, 0x0

    goto/16 :goto_7

    .line 2462
    .restart local v51       #childId:I
    .restart local v53       #foundCell:Z
    .restart local v57       #info:Lcom/android/launcher2/ItemInfo;
    .restart local v60       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    aget v39, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    aget v40, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v0, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v42, v0

    move-wide/from16 v36, v16

    invoke-static/range {v36 .. v42}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(JIIIII)I

    move-result v51

    goto/16 :goto_8

    .line 2499
    .end local v51           #childId:I
    .end local v57           #info:Lcom/android/launcher2/ItemInfo;
    .end local v60           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_13
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v60

    check-cast v60, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2500
    .restart local v60       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x0

    move-object/from16 v0, v60

    iget v9, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    aput v9, v5, v7

    .line 2501
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v7, 0x1

    move-object/from16 v0, v60

    iget v9, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    aput v9, v5, v7

    .line 2502
    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v59

    check-cast v59, Lcom/android/launcher2/CellLayout;

    .line 2503
    .local v59, layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v59

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto/16 :goto_9

    .line 2525
    .end local v12           #spanX:I
    .end local v13           #spanY:I
    .end local v16           #container:J
    .end local v20           #distance:F
    .end local v24           #minSpanX:I
    .end local v25           #minSpanY:I
    .end local v30           #resultSpan:[I
    .end local v35           #screen:I
    .end local v53           #foundCell:Z
    .end local v54           #hasMovedIntoHotseat:Z
    .end local v55           #hasMovedLayouts:Z
    .end local v58           #item:Lcom/android/launcher2/ItemInfo;
    .end local v59           #layout:Lcom/android/launcher2/CellLayout;
    .end local v60           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v37       #info:Lcom/android/launcher2/ItemInfo;
    .restart local v38       #parent:Lcom/android/launcher2/CellLayout;
    .restart local v40       #onCompleteRunnable:Ljava/lang/Runnable;
    .restart local v52       #finalResizeRunnable:Ljava/lang/Runnable;
    :cond_14
    const/16 v41, 0x0

    goto/16 :goto_a

    .line 2530
    :cond_15
    if-gez v64, :cond_16

    const/16 v45, -0x1

    .line 2531
    .local v45, duration:I
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v42

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object/from16 v43, v0

    move-object/from16 v44, v28

    move-object/from16 v46, v40

    move-object/from16 v47, p0

    invoke-virtual/range {v42 .. v47}, Lcom/android/launcher2/DragLayer;->animateViewIntoPosition(Lcom/android/launcher2/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_b

    .line 2530
    .end local v45           #duration:I
    :cond_16
    const/16 v45, 0x12c

    goto :goto_c

    .line 2535
    .end local v37           #info:Lcom/android/launcher2/ItemInfo;
    :cond_17
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2536
    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V
    .locals 6
    .parameter "target"
    .parameter "d"
    .parameter "isFlingToDelete"
    .parameter "success"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3612
    const-string v1, "Workspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDropCompleted: target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", d = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFlingToDelete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDragInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3616
    if-eqz p4, :cond_2

    .line 3617
    if-eq p1, p0, :cond_0

    .line 3618
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3619
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 3620
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_0

    .line 3621
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3635
    :cond_0
    :goto_0
    iget-boolean v1, p2, Lcom/android/launcher2/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3636
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3640
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->stopDragAppWidget(I)V

    .line 3641
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3642
    iput-object v5, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 3645
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->hideScrollingIndicator(Z)V

    .line 3646
    return-void

    .line 3625
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3627
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3628
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Hotseat;->getLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3632
    .local v0, cellLayout:Lcom/android/launcher2/CellLayout;
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3633
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto :goto_0

    .line 3630
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .restart local v0       #cellLayout:Lcom/android/launcher2/CellLayout;
    goto :goto_1
.end method

.method public onEnterScrollArea(III)Z
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 3751
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher2/LauncherApplication;->isScreenLandscape(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    move v0, v5

    .line 3752
    .local v0, isPortrait:Z
    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v8

    if-eqz v8, :cond_1

    if-eqz v0, :cond_1

    .line 3753
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3754
    .local v3, r:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getHotseat()Lcom/android/launcher2/Hotseat;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3755
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3788
    .end local v3           #r:Landroid/graphics/Rect;
    :goto_1
    return v6

    .end local v0           #isPortrait:Z
    :cond_0
    move v0, v6

    .line 3751
    goto :goto_0

    .line 3760
    .restart local v0       #isPortrait:Z
    :cond_1
    const/4 v4, 0x0

    .line 3761
    .local v4, result:Z
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v6

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v6, :cond_3

    .line 3762
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3764
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getNextPage()I

    move-result v8

    if-nez p3, :cond_4

    move v6, v7

    :goto_2
    add-int v2, v8, v6

    .line 3767
    .local v2, page:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSupportCycleSlidingScreen()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3768
    if-ne p3, v5, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 3769
    const/4 v2, 0x0

    .line 3776
    :cond_2
    :goto_3
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3778
    if-ltz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 3779
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 3780
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3784
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3785
    const/4 v4, 0x1

    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    .end local v2           #page:I
    :cond_3
    move v6, v4

    .line 3788
    goto :goto_1

    :cond_4
    move v6, v5

    .line 3764
    goto :goto_2

    .line 3770
    .restart local v2       #page:I
    :cond_5
    if-nez p3, :cond_2

    if-ne v2, v7, :cond_2

    .line 3771
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    goto :goto_3
.end method

.method public onExitScrollArea()Z
    .locals 3

    .prologue
    .line 3793
    const/4 v1, 0x0

    .line 3794
    .local v1, result:Z
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v2, :cond_0

    .line 3795
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3796
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    .line 3797
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3798
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3800
    const/4 v1, 0x1

    .line 3801
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3803
    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    :cond_0
    return v1
.end method

.method public onFlingToDelete(Lcom/android/launcher2/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 0
    .parameter "d"
    .parameter "x"
    .parameter "y"
    .parameter "vec"

    .prologue
    .line 3679
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 0

    .prologue
    .line 3684
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const-wide/16 v2, 0x4

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 730
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 714
    :sswitch_0
    const-string v1, "Workspace.ACTION_DOWN"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 716
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    .line 717
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 721
    :sswitch_1
    const-string v1, "Workspace.ACTION_UP"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 722
    iget v1, p0, Lcom/android/launcher2/PagedView;->mTouchState:I

    if-nez v1, :cond_0

    .line 723
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 724
    .local v0, currentPage:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->lastDownOnOccupiedCell()Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    .line 728
    .end local v0           #currentPage:Lcom/android/launcher2/CellLayout;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 712
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 6
    .parameter "l"
    .parameter "animated"
    .parameter "toWorkspace"

    .prologue
    const-wide/16 v4, 0x4

    const/4 v3, 0x0

    .line 1831
    const-string v2, "Workspace.onLauncherTransitionEnd"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1832
    iput-boolean v3, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 1833
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    .line 1834
    invoke-direct {p0, v3}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 1839
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v2, :cond_0

    .line 1840
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1841
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1842
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 1840
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1845
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #i:I
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1846
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 1
    .parameter "l"
    .parameter "animated"
    .parameter "toWorkspace"

    .prologue
    .line 1816
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    .line 1817
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 1818
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0
    .parameter "l"
    .parameter "animated"
    .parameter "toWorkspace"

    .prologue
    .line 1822
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0
    .parameter "l"
    .parameter "t"

    .prologue
    .line 1826
    iput p2, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    .line 1827
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1371
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1374
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/PagedView;->onLayout(ZIIII)V

    .line 1380
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 793
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->onPageBeginMoving()V

    .line 795
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    invoke-direct {p0, v2}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 809
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 811
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsStaticWallpaper:Z

    .line 816
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-nez v1, :cond_4

    .line 817
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 818
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    const/high16 v3, 0x3f80

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->setShortcutAndWidgetAlpha(F)V

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 798
    .end local v0           #i:I
    :cond_1
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 800
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    .line 804
    :cond_2
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 811
    goto :goto_1

    .line 823
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedView;->showScrollingIndicator(Z)V

    .line 824
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 827
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->onPageEndMoving()V

    .line 829
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 830
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 836
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 837
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->forceMoveEvent()V

    .line 853
    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 855
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 857
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 861
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 862
    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 864
    :cond_2
    return-void

    .line 832
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->clearChildrenCache()V

    goto :goto_0

    .line 844
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 845
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 849
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedView;->hideScrollingIndicator(Z)V

    goto :goto_1
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1407
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1408
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1409
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1410
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1415
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :goto_0
    return v1

    .line 1412
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 1415
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 3692
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3694
    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3697
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 3698
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1533
    iget-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1534
    .local v8, position:[I
    invoke-virtual {p0, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1536
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1537
    .local v7, pointerIndex:I
    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    .line 1538
    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    .line 1540
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1544
    return-void

    .line 1540
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->onWindowVisibilityChanged(I)V

    .line 696
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->acceleratedOverScroll(F)V

    .line 1350
    return-void
.end method

.method overScrollBackgroundAlphaInterpolator(F)F
    .locals 3
    .parameter "r"

    .prologue
    .line 1272
    const v0, 0x3da3d70a

    .line 1274
    .local v0, threshold:F
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 1275
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 1280
    :cond_0
    :goto_0
    div-float v1, p1, v0

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1

    .line 1276
    :cond_1
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1277
    iget p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    goto :goto_0
.end method

.method overlaps(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;IILandroid/graphics/Matrix;)Z
    .locals 10
    .parameter "cl"
    .parameter "dragView"
    .parameter "dragViewX"
    .parameter "dragViewY"
    .parameter "cachedInverseMatrix"

    .prologue
    .line 2839
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 2840
    .local v1, draggedItemTopLeft:[F
    const/4 v7, 0x0

    int-to-float v8, p3

    aput v8, v1, v7

    .line 2841
    const/4 v7, 0x1

    int-to-float v8, p4

    aput v8, v1, v7

    .line 2842
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 2843
    .local v0, draggedItemBottomRight:[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 2844
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 2848
    invoke-virtual {p0, p1, v1, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2849
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2850
    .local v4, overlapRegionLeft:F
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2852
    .local v6, overlapRegionTop:F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_0

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_0

    .line 2855
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2856
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    aget v8, v0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2857
    .local v5, overlapRegionRight:F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2859
    .local v3, overlapRegionBottom:F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_0

    .line 2860
    sub-float v7, v5, v4

    sub-float v8, v3, v6

    mul-float v2, v7, v8

    .line 2862
    .local v2, overlap:F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    .line 2863
    const/4 v7, 0x1

    .line 2867
    .end local v2           #overlap:F
    .end local v3           #overlapRegionBottom:F
    .end local v5           #overlapRegionRight:F
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected reinflateWidgetsIfNecessary()V
    .locals 10

    .prologue
    .line 734
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 735
    .local v1, clCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 736
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 737
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v7

    .line 738
    .local v7, swc:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 739
    .local v4, itemCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 740
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 742
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v9, :cond_0

    .line 743
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 744
    .local v3, info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget-object v6, v3, Lcom/android/launcher2/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    check-cast v6, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 745
    .local v6, lahv:Lcom/android/launcher2/LauncherAppWidgetHostView;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherAppWidgetHostView;->orientationChangedSincedInflation()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 746
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9, v3}, Lcom/android/launcher2/Launcher;->removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 748
    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 749
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9, v3}, Lcom/android/launcher2/Launcher;->bindAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 739
    .end local v3           #info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v6           #lahv:Lcom/android/launcher2/LauncherAppWidgetHostView;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 735
    .end local v8           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v4           #itemCount:I
    .end local v5           #j:I
    .end local v7           #swc:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    :cond_2
    return-void
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3905
    .local p1, packages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3906
    .local v5, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 3909
    const-string v6, "Workspace"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeFinalItem: packageNames = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3912
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v0

    .line 3913
    .local v0, cellLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    .line 3914
    .local v4, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 3917
    .local v3, layout:Landroid/view/ViewGroup;
    new-instance v6, Lcom/android/launcher2/Workspace$11;

    invoke-direct {v6, p0, v3, v5, v4}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4007
    .end local v3           #layout:Landroid/view/ViewGroup;
    .end local v4           #layoutParent:Lcom/android/launcher2/CellLayout;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4008
    .local v1, context:Landroid/content/Context;
    new-instance v6, Lcom/android/launcher2/Workspace$12;

    invoke-direct {v6, p0, v1, v5}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Landroid/content/Context;Ljava/util/HashSet;)V

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4043
    return-void
.end method

.method removeItemsByComponentName(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4288
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 4289
    .local v2, componentNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4290
    .local v0, appCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 4291
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ApplicationInfo;

    iget-object v7, v7, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4290
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4295
    :cond_0
    const-string v7, "Workspace"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeItemsByComponentName: apps = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",componentNames = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4299
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWorkspaceAndHotseatCellLayouts()Ljava/util/ArrayList;

    move-result-object v1

    .line 4300
    .local v1, cellLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/CellLayout;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 4301
    .local v6, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 4304
    .local v5, layout:Landroid/view/ViewGroup;
    new-instance v7, Lcom/android/launcher2/Workspace$13;

    invoke-direct {v7, p0, v5, v2, v6}, Lcom/android/launcher2/Workspace$13;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {p0, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 4372
    .end local v5           #layout:Landroid/view/ViewGroup;
    .end local v6           #layoutParent:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method public resetFinalScrollForPageChange(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 2561
    if-ltz p1, :cond_0

    .line 2562
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2563
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollX(I)V

    .line 2564
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2565
    iget v1, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    .line 2567
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public resetTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 3553
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3554
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3555
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3556
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3557
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3558
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3559
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3560
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 3561
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 3562
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3563
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 3565
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 3
    .parameter "child"

    .prologue
    .line 3709
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 3710
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3711
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3712
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 3714
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 4

    .prologue
    .line 3717
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3718
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3719
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3720
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->restoreInstanceStateForChild(I)V

    .line 3718
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3723
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3724
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 9
    .parameter "screenCenter"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1315
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 1317
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->updatePageAlphaValues(I)V

    .line 1318
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1320
    iget v6, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    iget v7, p0, Lcom/android/launcher2/PagedView;->mMaxScrollX:I

    if-le v6, v7, :cond_5

    .line 1321
    :cond_0
    iget v6, p0, Lcom/android/launcher2/PagedView;->mOverScrollX:I

    if-gez v6, :cond_3

    move v1, v4

    .line 1322
    .local v1, index:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1323
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1324
    .local v3, scrollProgress:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-nez v1, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {v0, v6, v4}, Lcom/android/launcher2/CellLayout;->setOverScrollAmount(FZ)V

    .line 1325
    const/high16 v4, -0x3e40

    mul-float v2, v4, v3

    .line 1326
    .local v2, rotation:F
    invoke-virtual {v0, v2}, Landroid/view/View;->setRotationY(F)V

    .line 1327
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->setFadeForOverScroll(F)V

    .line 1328
    iget-boolean v4, p0, Lcom/android/launcher2/Workspace;->mOverscrollTransformsSet:Z

    if-nez v4, :cond_2

    .line 1329
    iput-boolean v5, p0, Lcom/android/launcher2/Workspace;->mOverscrollTransformsSet:Z

    .line 1330
    iget v4, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    iget v6, p0, Lcom/android/launcher2/Workspace;->mCameraDistance:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/view/View;->setCameraDistance(F)V

    .line 1331
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v6, v4

    if-nez v1, :cond_4

    const/high16 v4, 0x3f40

    :goto_1
    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotX(F)V

    .line 1332
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v6, 0x3f00

    mul-float/2addr v4, v6

    invoke-virtual {v0, v4}, Landroid/view/View;->setPivotY(F)V

    .line 1333
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setOverscrollTransformsDirty(Z)V

    .line 1345
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #index:I
    .end local v2           #rotation:F
    .end local v3           #scrollProgress:F
    :cond_2
    :goto_2
    return-void

    .line 1321
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    goto :goto_0

    .line 1331
    .restart local v0       #cl:Lcom/android/launcher2/CellLayout;
    .restart local v1       #index:I
    .restart local v2       #rotation:F
    .restart local v3       #scrollProgress:F
    :cond_4
    const/high16 v4, 0x3e80

    goto :goto_1

    .line 1336
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #index:I
    .end local v2           #rotation:F
    .end local v3           #scrollProgress:F
    :cond_5
    iget v5, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_6

    .line 1337
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setFadeForOverScroll(F)V

    .line 1339
    :cond_6
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mOverscrollTransformsSet:Z

    if-eqz v5, :cond_2

    .line 1340
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mOverscrollTransformsSet:Z

    .line 1341
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    .line 1342
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->resetOverscrollTransforms()V

    goto :goto_2
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 3728
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 3729
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    .line 3731
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3732
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 3733
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 3735
    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 3739
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    .line 3740
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 3742
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 3743
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 3744
    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->completeDragExit()V

    .line 3746
    :cond_1
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1249
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1250
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 1251
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1253
    :cond_0
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 1202
    iput p1, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 1203
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1204
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1205
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1207
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method setCurrentDragOverlappingLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2702
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2704
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    .line 2705
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    .line 2706
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOverlappingLayout:Lcom/android/launcher2/CellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2708
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2709
    return-void
.end method

.method setCurrentDropLayout(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .parameter "layout"

    .prologue
    const/4 v1, -0x1

    .line 2687
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2688
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    .line 2689
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2691
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2692
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_1

    .line 2693
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2695
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2696
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    .line 2697
    invoke-virtual {p0, v1, v1}, Lcom/android/launcher2/Workspace;->setCurrentDropOverCell(II)V

    .line 2698
    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2712
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 2713
    :cond_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mDragOverX:I

    .line 2714
    iput p2, p0, Lcom/android/launcher2/Workspace;->mDragOverY:I

    .line 2715
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    .line 2717
    :cond_1
    return-void
.end method

.method setDragMode(I)V
    .locals 2
    .parameter "dragMode"

    .prologue
    const/4 v1, 0x1

    .line 2720
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_1

    .line 2721
    if-nez p1, :cond_2

    .line 2722
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2725
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2726
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    .line 2737
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mDragMode:I

    .line 2739
    :cond_1
    return-void

    .line 2727
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 2728
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    .line 2729
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2730
    :cond_3
    if-ne p1, v1, :cond_4

    .line 2731
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2732
    invoke-direct {p0, v1}, Lcom/android/launcher2/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 2733
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2734
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupAddToFolder()V

    .line 2735
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->cleanupFolderCreation()V

    goto :goto_0
.end method

.method setFadeForOverScroll(F)V
    .locals 8
    .parameter "fade"

    .prologue
    const/high16 v7, 0x3f80

    const/high16 v6, 0x3f00

    .line 4106
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4119
    :goto_0
    return-void

    .line 4108
    :cond_0
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverscrollFade:F

    .line 4109
    sub-float v5, v7, p1

    mul-float/2addr v5, v6

    add-float v3, v6, v5

    .line 4110
    .local v3, reducedFade:F
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 4111
    .local v1, parent:Landroid/view/ViewGroup;
    const v5, 0x7f07002d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v2, v5

    check-cast v2, Landroid/widget/ImageView;

    .line 4112
    .local v2, qsbDivider:Landroid/widget/ImageView;
    const v5, 0x7f07002e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object v0, v5

    check-cast v0, Landroid/widget/ImageView;

    .line 4113
    .local v0, dockDivider:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getScrollingIndicator()Landroid/view/View;

    move-result-object v4

    .line 4115
    .local v4, scrollIndicator:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->cancelScrollingIndicatorAnimations()V

    .line 4116
    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4117
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 4118
    :cond_2
    sub-float v5, v7, p1

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public setFinalScrollForPageChange(I)V
    .locals 5
    .parameter "screen"

    .prologue
    const/4 v4, 0x0

    .line 2548
    if-ltz p1, :cond_0

    .line 2549
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedScrollX:I

    .line 2550
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2551
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedTranslationX:F

    .line 2552
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result v2

    iput v2, p0, Lcom/android/launcher2/Workspace;->mSavedRotationY:F

    .line 2553
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 2554
    .local v1, newX:I
    invoke-virtual {p0, v1}, Landroid/view/View;->setScrollX(I)V

    .line 2555
    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 2556
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationY(F)V

    .line 2558
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v1           #newX:I
    :cond_0
    return-void
.end method

.method public setFinalTransitionTransform(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .parameter "layout"

    .prologue
    .line 3538
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3539
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3540
    .local v0, index:I
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleX:F

    .line 3541
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentScaleY:F

    .line 3542
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationX:F

    .line 3543
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentTranslationY:F

    .line 3544
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mCurrentRotationY:F

    .line 3545
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 3546
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewScaleYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 3547
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationXs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3548
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewTranslationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3549
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNewRotationYs:[F

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationY(F)V

    .line 3551
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 6

    .prologue
    .line 905
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 906
    .local v3, minDims:Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 907
    .local v1, maxDims:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 910
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 911
    .local v0, maxDim:I
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 912
    .local v2, minDim:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v4

    if-nez v4, :cond_0

    .line 921
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 922
    int-to-float v4, v0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 923
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 928
    :goto_0
    new-instance v4, Lcom/android/launcher2/Workspace$2;

    const-string v5, "setWallpaperDimension"

    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 933
    return-void

    .line 925
    :cond_1
    int-to-float v4, v2

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 926
    iput v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    goto :goto_0
.end method

.method setup(Lcom/android/launcher2/DragController;)V
    .locals 2
    .parameter "dragController"

    .prologue
    .line 3597
    new-instance v0, Lcom/android/launcher2/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/SpringLoadedDragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    .line 3598
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    .line 3602
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateChildrenLayersEnabled(Z)V

    .line 3603
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->setWallpaperDimension()V

    .line 3604
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 3
    .parameter "child"

    .prologue
    const/4 v2, 0x0

    .line 484
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 485
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method showOutlines()V
    .locals 4

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSmall()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_2

    .line 1176
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1178
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1179
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1180
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1182
    :cond_2
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 1196
    iget-boolean v0, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1197
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 1199
    :cond_0
    return-void
.end method

.method protected snapToPage(I)V
    .locals 3
    .parameter "whichPage"

    .prologue
    .line 1020
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->snapToPage(I)V

    .line 1022
    const-string v0, "Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snapToPage: whichPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScrollX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 1025
    return-void
.end method

.method protected snapToPage(II)V
    .locals 0
    .parameter "whichPage"
    .parameter "duration"

    .prologue
    .line 1029
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->snapToPage(II)V

    .line 1030
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 1031
    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1
    .parameter "whichPage"
    .parameter "r"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1037
    :cond_0
    iput-object p2, p0, Lcom/android/launcher2/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    .line 1038
    const/16 v0, 0x3b6

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Workspace;->snapToPage(II)V

    .line 1039
    return-void
.end method

.method startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 6
    .parameter "cellInfo"

    .prologue
    .line 1973
    iget-object v1, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1981
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1982
    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abnormal start drag: cellInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",child = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    :goto_0
    return-void

    .line 1987
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1989
    const-string v3, "Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The child "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not in touch mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1994
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 1995
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1996
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    .line 1997
    .local v2, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayout;->prepareChildForDrag(Landroid/view/View;)V

    .line 1999
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 2000
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 2002
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 2005
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v3, 0x2

    invoke-direct {p0, v1, v0, v3}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2006
    invoke-virtual {p0, v1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    goto :goto_0
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 3673
    const/4 v0, 0x1

    return v0
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 4092
    return-void
.end method

.method public syncPages()V
    .locals 0

    .prologue
    .line 4088
    return-void
.end method

.method public transitionStateShouldAllowDrop()Z
    .locals 2

    .prologue
    .line 2082
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f00

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mState:Lcom/android/launcher2/Workspace$State;

    sget-object v1, Lcom/android/launcher2/Workspace$State;->SMALL:Lcom/android/launcher2/Workspace$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateComponentUnreadChanged(Landroid/content/ComponentName;I)V
    .locals 16
    .parameter "component"
    .parameter "unreadNum"

    .prologue
    .line 4167
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v3

    .line 4168
    .local v3, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    const/4 v2, 0x0

    .line 4169
    .local v2, childCount:I
    const/4 v12, 0x0

    .line 4170
    .local v12, view:Landroid/view/View;
    const/4 v11, 0x0

    .line 4171
    .local v11, tag:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v11           #tag:Ljava/lang/Object;
    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 4172
    .local v9, layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 4173
    const/4 v8, 0x0

    .local v8, j:I
    :goto_0
    if-ge v8, v2, :cond_0

    .line 4174
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 4175
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 4180
    .restart local v11       #tag:Ljava/lang/Object;
    instance-of v13, v11, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v13, :cond_2

    move-object v6, v11

    .line 4181
    check-cast v6, Lcom/android/launcher2/ShortcutInfo;

    .line 4182
    .local v6, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v7, v6, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4183
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 4188
    .local v4, componentName:Landroid/content/ComponentName;
    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 4189
    const-string v13, "Workspace"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateComponentUnreadChanged 1: find component = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",tag = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",j = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",cellX = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v6, Lcom/android/launcher2/ItemInfo;->cellX:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",cellY = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v6, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    move/from16 v0, p2

    iput v0, v6, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    move-object v13, v12

    .line 4193
    check-cast v13, Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v13}, Landroid/view/View;->invalidate()V

    .line 4173
    .end local v4           #componentName:Landroid/content/ComponentName;
    .end local v6           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 4195
    :cond_2
    instance-of v13, v11, Lcom/android/launcher2/FolderInfo;

    if-eqz v13, :cond_1

    move-object v13, v12

    .line 4196
    check-cast v13, Lcom/android/launcher2/FolderIcon;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/android/launcher2/FolderIcon;->updateFolderUnreadNum(Landroid/content/ComponentName;I)V

    move-object v13, v12

    .line 4197
    check-cast v13, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v13}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 4203
    .end local v8           #j:I
    .end local v9           #layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .end local v11           #tag:Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v10

    .line 4204
    .local v10, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v10, :cond_4

    .line 4205
    invoke-virtual {v10}, Lcom/android/launcher2/Folder;->updateContentUnreadNum()V

    .line 4207
    :cond_4
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 1

    .prologue
    .line 1014
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->updateCurrentPageScroll()V

    .line 1015
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->computeWallpaperScrollRatio(I)V

    .line 1016
    return-void
.end method

.method updateItemLocationsInDatabase(Lcom/android/launcher2/CellLayout;)V
    .locals 13
    .parameter "cl"

    .prologue
    .line 3649
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 3651
    .local v10, count:I
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 3652
    .local v4, screen:I
    const/16 v9, -0x64

    .line 3654
    .local v9, container:I
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3655
    const/4 v4, -0x1

    .line 3656
    const/16 v9, -0x65

    .line 3659
    :cond_0
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 3660
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher2/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 3661
    .local v12, v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 3663
    .local v1, info:Lcom/android/launcher2/ItemInfo;
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    if-eqz v0, :cond_1

    .line 3664
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/launcher2/ItemInfo;->requiresDbUpdate:Z

    .line 3665
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    int-to-long v2, v9

    iget v5, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v6, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    iget v7, v1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v8, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIII)V

    .line 3659
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3669
    .end local v1           #info:Lcom/android/launcher2/ItemInfo;
    .end local v12           #v:Landroid/view/View;
    :cond_2
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4047
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const-string v15, "Workspace"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateShortcuts: apps = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4050
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v3

    .line 4051
    .local v3, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 4052
    .local v11, layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 4053
    .local v2, childCount:I
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    if-ge v10, v2, :cond_0

    .line 4054
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 4055
    .local v14, view:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 4057
    .local v13, tag:Ljava/lang/Object;
    instance-of v15, v13, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v15, :cond_2

    .line 4058
    check-cast v14, Lcom/android/launcher2/BubbleTextView;

    .end local v14           #view:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/android/launcher2/Workspace;->updateShortcutInfoCheck(Lcom/android/launcher2/BubbleTextView;Ljava/util/ArrayList;)Z

    .line 4053
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4059
    .restart local v14       #view:Landroid/view/View;
    :cond_2
    instance-of v15, v13, Lcom/android/launcher2/FolderInfo;

    if-eqz v15, :cond_1

    move-object v5, v14

    .line 4060
    check-cast v5, Lcom/android/launcher2/FolderIcon;

    .line 4061
    .local v5, folderIcon:Lcom/android/launcher2/FolderIcon;
    invoke-virtual {v5}, Lcom/android/launcher2/FolderIcon;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v4

    .line 4062
    .local v4, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v9

    .line 4063
    .local v9, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 4064
    .local v12, needInvalidate:Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 4065
    .local v8, item:Landroid/view/View;
    check-cast v8, Lcom/android/launcher2/BubbleTextView;

    .end local v8           #item:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/launcher2/Workspace;->updateShortcutInfoCheck(Lcom/android/launcher2/BubbleTextView;Ljava/util/ArrayList;)Z

    move-result v12

    goto :goto_2

    .line 4068
    :cond_3
    if-eqz v12, :cond_1

    .line 4069
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 4073
    .end local v2           #childCount:I
    .end local v4           #folder:Lcom/android/launcher2/Folder;
    .end local v5           #folderIcon:Lcom/android/launcher2/FolderIcon;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10           #j:I
    .end local v11           #layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .end local v12           #needInvalidate:Z
    .end local v13           #tag:Ljava/lang/Object;
    .end local v14           #view:Landroid/view/View;
    :cond_4
    return-void
.end method

.method public updateShortcutsAndFoldersUnread()V
    .locals 11

    .prologue
    .line 4128
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v1

    .line 4129
    .local v1, childrenLayouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutAndWidgetContainer;>;"
    const/4 v0, 0x0

    .line 4130
    .local v0, childCount:I
    const/4 v9, 0x0

    .line 4131
    .local v9, view:Landroid/view/View;
    const/4 v8, 0x0

    .line 4132
    .local v8, tag:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v8           #tag:Ljava/lang/Object;
    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ShortcutAndWidgetContainer;

    .line 4133
    .local v7, layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4134
    const/4 v6, 0x0

    .local v6, j:I
    :goto_0
    if-ge v6, v0, :cond_0

    .line 4135
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4136
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 4141
    .restart local v8       #tag:Ljava/lang/Object;
    instance-of v10, v8, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v10, :cond_2

    move-object v4, v8

    .line 4142
    check-cast v4, Lcom/android/launcher2/ShortcutInfo;

    .line 4143
    .local v4, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v5, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 4144
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 4145
    .local v2, componentName:Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadNumberOfComponent(Landroid/content/ComponentName;)I

    move-result v10

    iput v10, v4, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    move-object v10, v9

    .line 4146
    check-cast v10, Lcom/android/launcher2/BubbleTextView;

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    .line 4134
    .end local v2           #componentName:Landroid/content/ComponentName;
    .end local v4           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4147
    :cond_2
    instance-of v10, v8, Lcom/android/launcher2/FolderInfo;

    if-eqz v10, :cond_1

    move-object v10, v9

    .line 4148
    check-cast v10, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderIcon;->updateFolderUnreadNum()V

    move-object v10, v9

    .line 4149
    check-cast v10, Lcom/android/launcher2/FolderIcon;

    invoke-virtual {v10}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 4153
    .end local v6           #j:I
    .end local v7           #layout:Lcom/android/launcher2/ShortcutAndWidgetContainer;
    .end local v8           #tag:Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public updateWallpaperOffsetImmediately()V
    .locals 1

    .prologue
    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 988
    return-void
.end method

.method willAddToExistingUserFolder(Ljava/lang/Object;Lcom/android/launcher2/CellLayout;[IF)Z
    .locals 7
    .parameter "dragInfo"
    .parameter "target"
    .parameter "targetCell"
    .parameter "distance"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2211
    iget v5, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v5, p4, v5

    if-lez v5, :cond_1

    .line 2227
    :cond_0
    :goto_0
    return v3

    .line 2212
    :cond_1
    aget v5, p3, v3

    aget v6, p3, v4

    invoke-virtual {p2, v5, v6}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2214
    .local v0, dropOverView:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2215
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2216
    .local v2, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-boolean v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v5, :cond_2

    iget v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_0

    iget v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v5, v6, :cond_0

    .line 2221
    .end local v2           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    instance-of v5, v0, Lcom/android/launcher2/FolderIcon;

    if-eqz v5, :cond_0

    move-object v1, v0

    .line 2222
    check-cast v1, Lcom/android/launcher2/FolderIcon;

    .line 2223
    .local v1, fi:Lcom/android/launcher2/FolderIcon;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/FolderIcon;->acceptDrop(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 2224
    goto :goto_0
.end method

.method willCreateUserFolder(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;[IFZ)Z
    .locals 9
    .parameter "info"
    .parameter "target"
    .parameter "targetCell"
    .parameter "distance"
    .parameter "considerTimeout"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2182
    iget v7, p0, Lcom/android/launcher2/Workspace;->mMaxDistanceForFolderCreation:F

    cmpl-float v7, p4, v7

    if-lez v7, :cond_1

    .line 2206
    :cond_0
    :goto_0
    return v6

    .line 2183
    :cond_1
    aget v7, p3, v6

    aget v8, p3, v5

    invoke-virtual {p2, v7, v8}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    .line 2185
    .local v1, dropOverView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 2186
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2187
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-boolean v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v7, :cond_2

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellX:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v7, v8, :cond_0

    iget v7, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    iget v8, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v7, v8, :cond_0

    .line 2192
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    .line 2193
    .local v2, hasntMoved:Z
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v7, :cond_3

    .line 2194
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v7, v7, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne v1, v7, :cond_6

    move v2, v5

    .line 2197
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    if-eqz p5, :cond_4

    iget-boolean v7, p0, Lcom/android/launcher2/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v7, :cond_0

    .line 2201
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v0, v7, Lcom/android/launcher2/ShortcutInfo;

    .line 2202
    .local v0, aboveShortcut:Z
    iget v7, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-eqz v7, :cond_5

    iget v7, p1, Lcom/android/launcher2/ItemInfo;->itemType:I

    if-ne v7, v5, :cond_7

    :cond_5
    move v4, v5

    .line 2206
    .local v4, willBecomeShortcut:Z
    :goto_2
    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    :goto_3
    move v6, v5

    goto :goto_0

    .end local v0           #aboveShortcut:Z
    .end local v4           #willBecomeShortcut:Z
    :cond_6
    move v2, v6

    .line 2194
    goto :goto_1

    .restart local v0       #aboveShortcut:Z
    :cond_7
    move v4, v6

    .line 2202
    goto :goto_2

    .restart local v4       #willBecomeShortcut:Z
    :cond_8
    move v5, v6

    .line 2206
    goto :goto_3
.end method
