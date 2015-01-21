.class public Lcom/android/launcher2/AppsCustomizePagedView;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/android/launcher2/DragController$DragListener;
.implements Lcom/android/launcher2/DragScroller;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DropTarget;
.implements Lcom/android/launcher2/LauncherTransitionable;
.implements Lcom/android/launcher2/PagedViewIcon$PressedCallback;
.implements Lcom/android/launcher2/PagedViewWidget$ShortPressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;,
        Lcom/android/launcher2/AppsCustomizePagedView$ContentType;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field private static final INSTALL_ICON_START_PAGE:I = 0x3

.field private static PERFORM_OVERSCROLL_ROTATION:Z = false

.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final STK2_CLASS_NAME:Ljava/lang/String; = "com.android.stk.StkLauncherActivityII"

.field private static final STK_CLASS_NAME:Ljava/lang/String; = "com.android.stk.StkLauncherActivity"

.field private static final STK_PACKAGE_NAME:Ljava/lang/String; = "com.android.stk"

.field private static final TAG:Ljava/lang/String; = "AppsCustomizePagedView"

.field private static TRANSITION_MAX_ROTATION:F = 0.0f

.field private static TRANSITION_PIVOT:F = 0.0f

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field static final WIDGET_BOUND:I = 0x1

.field static final WIDGET_INFLATED:I = 0x2

.field static final WIDGET_NO_CLEANUP_REQUIRED:I = -0x1

.field static final WIDGET_PRELOAD_PENDING:I = 0x0

.field public static mApps:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static sAllAppsPage:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final sLookAheadPageCount:I = 0x2

.field static final sLookBehindPageCount:I = 0x2

.field private static final sPageSleepDelay:I = 0xc8

.field private static sRemovedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sShowAndHideApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mAnimatingViewIntoPlace:Z

.field private mAppIconSize:I

.field private mAppsHasSet:Z

.field private mBindWidgetRunnable:Ljava/lang/Runnable;

.field mCachedAppWidgetPreviewCanvas:Lcom/android/launcher2/CanvasCache;

.field mCachedAppWidgetPreviewDestRect:Lcom/android/launcher2/RectCache;

.field mCachedAppWidgetPreviewPaint:Lcom/android/launcher2/PaintCache;

.field mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher2/RectCache;

.field mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

.field mCachedShortcutPreviewCanvas:Lcom/android/launcher2/CanvasCache;

.field mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClingFocusedX:I

.field private mClingFocusedY:I

.field private mContentWidth:I

.field private mContext:Landroid/content/Context;

.field mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

.field private mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

.field private mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AsyncTaskPageData;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteMarginleft:I

.field private mDisableShowAllAppsCling:Z

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

.field private mDragInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

.field private mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

.field private mDragViewVisualCenter:[F

.field private mDraggingWidget:Z

.field private mDropToLayout:Lcom/android/launcher2/PagedViewCellLayout;

.field private mEmptyCell:[I

.field private mHasShownAllAppsCling:Z

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInScrollArea:Z

.field private mInTransition:Z

.field private mInflateWidgetRunnable:Ljava/lang/Runnable;

.field private mIsDragOccuring:Z

.field private mLastCell:Lcom/android/launcher2/PagedViewIcon;

.field private mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mMaxAppCellCountX:I

.field private mMaxAppCellCountY:I

.field private mNumAppsPages:I

.field private mNumWidgetPages:I

.field private mOccuredReorder:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

.field private mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

.field private mPrevEmptyCell:[I

.field private mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

.field private mPrevLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

.field private mPrevTargetCell:[I

.field private mPreviousTargetCell:[I

.field private mReorderAlarm:Lcom/android/launcher2/Alarm;

.field private final mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

.field mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveInstanceStateItemIndex:I

.field private mSupportCycleSliding:Z

.field private mSupportEditAndHideApps:Z

.field private mTargetCell:[I

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mTouchDelta:I

.field mWidgetCleanupState:I

.field private mWidgetCountX:I

.field private mWidgetCountY:I

.field private mWidgetHeightGap:I

.field private mWidgetInstructionToast:Landroid/widget/Toast;

.field mWidgetLoadingId:I

.field private mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

.field private mWidgetWidthGap:I

.field private mWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

.field private final sWidgetPreviewIconPaddingPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    const v0, 0x45cb2000

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    .line 309
    const v0, 0x3f3d70a4

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    .line 310
    const v0, 0x3f266666

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    .line 311
    const/high16 v0, 0x41b0

    sput v0, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    .line 312
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/AppsCustomizePagedView;->PERFORM_OVERSCROLL_ROTATION:Z

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sShowAndHideApps:Ljava/util/ArrayList;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sRemovedApps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 278
    iput v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 301
    const/high16 v2, 0x3e80

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->sWidgetPreviewIconPaddingPercentage:F

    .line 307
    new-instance v2, Lcom/android/launcher2/Workspace$ZInterpolator;

    const/high16 v3, 0x3f00

    invoke-direct {v2, v3}, Lcom/android/launcher2/Workspace$ZInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    .line 313
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const v3, 0x3f666666

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 314
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4080

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 320
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 321
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 326
    iput v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 327
    iput v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    .line 328
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 329
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    .line 340
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    .line 343
    new-instance v2, Lcom/android/launcher2/BitmapCache;

    invoke-direct {v2}, Lcom/android/launcher2/BitmapCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

    .line 344
    new-instance v2, Lcom/android/launcher2/PaintCache;

    invoke-direct {v2}, Lcom/android/launcher2/PaintCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

    .line 345
    new-instance v2, Lcom/android/launcher2/CanvasCache;

    invoke-direct {v2}, Lcom/android/launcher2/CanvasCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    .line 348
    new-instance v2, Lcom/android/launcher2/CanvasCache;

    invoke-direct {v2}, Lcom/android/launcher2/CanvasCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    .line 349
    new-instance v2, Lcom/android/launcher2/RectCache;

    invoke-direct {v2}, Lcom/android/launcher2/RectCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher2/RectCache;

    .line 350
    new-instance v2, Lcom/android/launcher2/RectCache;

    invoke-direct {v2}, Lcom/android/launcher2/RectCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewDestRect:Lcom/android/launcher2/RectCache;

    .line 351
    new-instance v2, Lcom/android/launcher2/PaintCache;

    invoke-direct {v2}, Lcom/android/launcher2/PaintCache;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewPaint:Lcom/android/launcher2/PaintCache;

    .line 354
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppsHasSet:Z

    .line 360
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInScrollArea:Z

    .line 361
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTouchDelta:I

    .line 366
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 376
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDropToLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 378
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewVisualCenter:[F

    .line 382
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAnimatingViewIntoPlace:Z

    .line 384
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 386
    new-instance v2, Lcom/android/launcher2/Alarm;

    invoke-direct {v2}, Lcom/android/launcher2/Alarm;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    .line 390
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 392
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 397
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    .line 398
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPreviousTargetCell:[I

    .line 399
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    .line 400
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevTargetCell:[I

    .line 401
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevEmptyCell:[I

    .line 402
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDisplaySize:Landroid/graphics/Point;

    .line 403
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIsDragOccuring:Z

    .line 408
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    .line 409
    new-instance v2, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    invoke-direct {v2}, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    .line 410
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    .line 411
    new-instance v2, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    invoke-direct {v2}, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    .line 427
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mOccuredReorder:Z

    .line 432
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    .line 433
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportCycleSliding:Z

    .line 435
    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 445
    iput-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDisableShowAllAppsCling:Z

    .line 4652
    new-instance v2, Lcom/android/launcher2/AppsCustomizePagedView$8;

    invoke-direct {v2, p0}, Lcom/android/launcher2/AppsCustomizePagedView$8;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    .line 451
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    .line 452
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    .line 456
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 457
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    .line 458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 462
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    .line 464
    sget-object v2, Lcom/android/launcher/R$styleable;->AppsCustomizePagedView:[I

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 465
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    .line 466
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    .line 467
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    .line 469
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    .line 471
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    .line 472
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    .line 473
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedX:I

    .line 474
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedY:I

    .line 475
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 476
    new-instance v2, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 480
    iput-boolean v4, p0, Lcom/android/launcher2/PagedView;->mFadeInAdjacentScreens:Z

    .line 483
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 484
    invoke-virtual {p0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 488
    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherExtPlugin;->getInstance()Lcom/android/launcher2/LauncherExtPlugin;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/LauncherExtPlugin;->getOperatorCheckerExt(Landroid/content/Context;)Lcom/mediatek/launcher2/ext/IOperatorChecker;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/launcher2/ext/IOperatorChecker;->supportEditAndHideApps()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    .line 489
    new-instance v2, Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-direct {v2, p1}, Lcom/android/launcher2/DropTarget$DragEnforcer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    .line 491
    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-eqz v2, :cond_1

    .line 492
    sget v2, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountX:I

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 493
    sget v2, Lcom/mediatek/launcher2/ext/AllApps;->sAppsCellCountY:I

    iput v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 494
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 495
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeleteMarginleft:I

    .line 497
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherExtPlugin;->getInstance()Lcom/android/launcher2/LauncherExtPlugin;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher2/LauncherExtPlugin;->getOperatorCheckerExt(Landroid/content/Context;)Lcom/mediatek/launcher2/ext/IOperatorChecker;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/launcher2/ext/IOperatorChecker;->supportAppListCycleSliding()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportCycleSliding:Z

    .line 498
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isSupportCycleSlidingScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    sput-boolean v4, Lcom/android/launcher2/AppsCustomizePagedView;->PERFORM_OVERSCROLL_ROTATION:Z

    .line 501
    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppsCustomizePagedView;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/AppsCustomizePagedView;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/AppsCustomizePagedView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/AppsCustomizePagedView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/AppsCustomizePagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/AppsCustomizePagedView;ILjava/util/ArrayList;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 256
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/AppsCustomizePagedView;->prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/AppsCustomizePagedView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/AppsCustomizePagedView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/AppsCustomizePagedView;[I[ILcom/android/launcher2/PagedViewCellLayout;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->realTimeReorder([I[ILcom/android/launcher2/PagedViewCellLayout;)V

    return-void
.end method

.method private addAddedApps(Ljava/util/ArrayList;)V
    .locals 8
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
    .line 3977
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3978
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 3979
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 3981
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    iget-object v6, v2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v5, v6}, Lcom/android/launcher2/AppsCustomizePagedView;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)I

    move-result v0

    .line 3983
    .local v0, appIndex:I
    const-string v5, "AppsCustomizePagedView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAddedApps: info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",appIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",componentName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    if-ltz v0, :cond_2

    .line 3989
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ApplicationInfo;

    .line 3990
    .local v4, origApp:Lcom/android/launcher2/ApplicationInfo;
    iget v5, v4, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ltz v5, :cond_1

    .line 3991
    const-string v5, "AppsCustomizePagedView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already exists in all apps list!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4005
    .end local v0           #appIndex:I
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v4           #origApp:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    return-void

    .line 3994
    .restart local v0       #appIndex:I
    .restart local v2       #info:Lcom/android/launcher2/ApplicationInfo;
    .restart local v4       #origApp:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const-string v5, "AppsCustomizePagedView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is in the pending added list!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3995
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3999
    .end local v4           #origApp:Lcom/android/launcher2/ApplicationInfo;
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    .line 4000
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4002
    invoke-direct {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->addApp(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4003
    invoke-direct {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->addItemInDatabase(Lcom/android/launcher2/ApplicationInfo;)V

    .line 3978
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private addApp(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 4068
    const/4 v2, -0x1

    .line 4069
    .local v2, page:I
    iget-object v3, p1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4070
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.stk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.stk.StkLauncherActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.stk.StkLauncherActivityII"

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4072
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->findFirstEmptyPositionFromLastPage(Lcom/android/launcher2/ApplicationInfo;)I

    move-result v2

    .line 4078
    :goto_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 4079
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->addNewAppsPageLayout()I

    move-result v1

    .line 4081
    .local v1, newPage:I
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppToNewPage(Lcom/android/launcher2/ApplicationInfo;I)V

    .line 4085
    .end local v1           #newPage:I
    :goto_1
    return-void

    .line 4074
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->findFirstEmptyPosition(Lcom/android/launcher2/ApplicationInfo;)I

    move-result v2

    goto :goto_0

    .line 4083
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->addApp(Lcom/android/launcher2/ApplicationInfo;I)V

    goto :goto_1
.end method

.method private addApp(Lcom/android/launcher2/ApplicationInfo;I)V
    .locals 1
    .parameter "info"
    .parameter "page"

    .prologue
    .line 4094
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->add(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4095
    return-void
.end method

.method private addAppToNewPage(Lcom/android/launcher2/ApplicationInfo;I)V
    .locals 4
    .parameter "appInfo"
    .parameter "page"

    .prologue
    .line 3931
    const-string v1, "AppsCustomizePagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppToNewPage: appInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", page = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3933
    sget-object v1, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    iget-object v0, v1, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    .line 3934
    .local v0, newPage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iput p2, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 3935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    .line 3936
    iget v1, p1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int/2addr v1, v2

    iput v1, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 3937
    iget v1, p1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int/2addr v1, v2

    iput v1, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 3938
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3939
    return-void
.end method

.method private addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 2254
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2255
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2256
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 2257
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    sget-object v4, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getAppNameComparator()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 2258
    .local v2, index:I
    if-gez v2, :cond_0

    .line 2259
    sget-object v4, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2261
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppsWithoutInvalidate: mApps size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2266
    .end local v2           #index:I
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    return-void
.end method

.method private addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 7
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 3206
    invoke-virtual {p0, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewCellLayout;

    .line 3207
    .local v2, layout:Lcom/android/launcher2/PagedViewCellLayout;
    new-instance v4, Lcom/android/launcher2/IconKeyEventListener;

    invoke-direct {v4}, Lcom/android/launcher2/IconKeyEventListener;-><init>()V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3209
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3211
    .local v1, genericLp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    instance-of v4, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    if-nez v4, :cond_3

    .line 3212
    :cond_0
    new-instance v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-direct {v3, p3, p4, p5, p6}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    .line 3221
    .local v3, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    :goto_0
    iget v4, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    mul-int/2addr v4, v5

    iget v5, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    add-int v0, v4, v5

    .line 3224
    .local v0, childId:I
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addInScreen: child = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", childInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", screen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", y = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", childId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    if-eqz v2, :cond_1

    if-eqz p7, :cond_4

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, p1, v4, v0, v3}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3233
    :cond_1
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add to item at ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") to PagedViewCellLayout"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    :cond_2
    return-void

    .end local v0           #childId:I
    .end local v3           #lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    :cond_3
    move-object v3, v1

    .line 3214
    check-cast v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 3215
    .restart local v3       #lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    iput p3, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 3216
    iput p4, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 3217
    iput p5, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 3218
    iput p6, v3, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    goto/16 :goto_0

    .line 3229
    .restart local v0       #childId:I
    :cond_4
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private addItemInDatabase(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    .line 3610
    const-string v1, "AppsCustomizePagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addItemInDatabase: info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3612
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    .line 3613
    .local v0, model:Lcom/android/launcher2/LauncherModel;
    if-eqz p1, :cond_0

    .line 3614
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v4, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addAllAppsItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ApplicationInfo;IIIZ)V

    .line 3617
    :cond_0
    return-void
.end method

.method private addNewAppsPageLayout()I
    .locals 5

    .prologue
    .line 3873
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3874
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-direct {v1, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 3875
    .local v1, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 3876
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3879
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNewAppsPageLayout: mNumAppsPages = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    iget-object v2, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3882
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->addNewEmptyAppsPage()I

    move-result v2

    return v2
.end method

.method private addNewEmptyAppsPage()I
    .locals 2

    .prologue
    .line 3891
    new-instance v0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    .line 3892
    .local v0, newPage:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    .line 3893
    sget-object v1, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3894
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 3896
    sget-object v1, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private beginDraggingApplication(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 841
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 842
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, p1, p0}, Lcom/android/launcher2/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher2/DragSource;)V

    .line 845
    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 846
    move-object v2, p1

    .line 847
    .local v2, cellLayout:Landroid/view/View;
    :goto_0
    instance-of v3, v2, Lcom/android/launcher2/PagedViewCellLayout;

    if-nez v3, :cond_0

    .line 848
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #cellLayout:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2       #cellLayout:Landroid/view/View;
    goto :goto_0

    .line 851
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    .line 853
    .local v1, cellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;
    if-nez v1, :cond_2

    .line 854
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cellInfo is null during dragging: cellLayout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    .end local v1           #cellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;
    .end local v2           #cellLayout:Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .line 860
    .restart local v1       #cellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;
    .restart local v2       #cellLayout:Landroid/view/View;
    :cond_2
    iget-object v3, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isInTouchMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 861
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The child "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not in touch mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 865
    :cond_3
    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    .line 866
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevEmptyCell:[I

    iget v4, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    aput v4, v3, v6

    .line 867
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevEmptyCell:[I

    iget v4, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    aput v4, v3, v7

    .line 869
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    iget v4, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    aput v4, v3, v6

    .line 870
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    iget v4, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    aput v4, v3, v7

    move-object v3, v2

    .line 872
    check-cast v3, Lcom/android/launcher2/PagedViewCellLayout;

    iget-object v4, v1, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PagedViewCellLayout;->removeChildView(Landroid/view/View;)V

    .line 873
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 874
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->remove(Lcom/android/launcher2/ApplicationInfo;)V

    .line 875
    iput-boolean v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mOccuredReorder:Z

    .line 878
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginDraggingApplication: mEmptyCell[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mEmptyCell[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    aget v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mDragInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",appInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",cellLayout = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",v = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 884
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    goto/16 :goto_1
.end method

.method private beginDraggingWidget(Landroid/view/View;)Z
    .locals 32
    .parameter "v"

    .prologue
    .line 1040
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 1042
    const v3, 0x7f070015

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 1043
    .local v25, image:Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/PendingAddItemInfo;

    .line 1052
    .local v18, createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1053
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 1054
    const/4 v3, 0x0

    .line 1122
    :goto_0
    return v3

    .line 1060
    :cond_0
    const/high16 v21, 0x3f80

    .line 1061
    .local v21, scale:F
    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v3, :cond_3

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    if-nez v3, :cond_1

    .line 1065
    const/4 v3, 0x0

    goto :goto_0

    .line 1068
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    move-object/from16 v24, v0

    .line 1069
    .local v24, createWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    move-object/from16 v18, v24

    .line 1070
    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1071
    .local v7, spanX:I
    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 1072
    .local v8, spanY:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v3, v7, v8, v0, v4}, Lcom/android/launcher2/Workspace;->estimateItemSize(IILcom/android/launcher2/ItemInfo;Z)[I

    move-result-object v31

    .line 1075
    .local v31, size:[I
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    check-cast v30, Lcom/android/launcher2/FastBitmapDrawable;

    .line 1076
    .local v30, previewDrawable:Lcom/android/launcher2/FastBitmapDrawable;
    const/high16 v27, 0x3fa0

    .line 1077
    .local v27, minScale:F
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v27

    float-to-int v3, v3

    const/4 v4, 0x0

    aget v4, v31, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1078
    .local v9, maxWidth:I
    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v27

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v4, v31, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1079
    .local v10, maxHeight:I
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->previewImage:I

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->icon:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1083
    .local v13, preview:Landroid/graphics/Bitmap;
    const/16 v3, 0x9

    new-array v0, v3, [F

    move-object/from16 v28, v0

    .line 1084
    .local v28, mv:[F
    new-instance v26, Landroid/graphics/Matrix;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Matrix;-><init>()V

    .line 1085
    .local v26, m:Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v3, v4, v5, v6, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v4, v5, v6, v11, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1090
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1091
    const/4 v3, 0x0

    aget v21, v28, v3

    .line 1108
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    .end local v9           #maxWidth:I
    .end local v10           #maxHeight:I
    .end local v24           #createWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    .end local v26           #m:Landroid/graphics/Matrix;
    .end local v27           #minScale:F
    .end local v28           #mv:[F
    .end local v30           #previewDrawable:Lcom/android/launcher2/FastBitmapDrawable;
    .end local v31           #size:[I
    :goto_1
    move-object/from16 v0, v18

    instance-of v3, v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v3, :cond_2

    move-object/from16 v3, v18

    check-cast v3, Lcom/android/launcher2/PendingAddWidgetInfo;

    iget v3, v3, Lcom/android/launcher2/PendingAddWidgetInfo;->previewImage:I

    if-eqz v3, :cond_4

    :cond_2
    const/16 v22, 0x1

    .line 1112
    .local v22, clipAlpha:Z
    :goto_2
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v13, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 1116
    .local v29, outline:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->lockScreenOrientation()V

    .line 1117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Lcom/android/launcher2/PendingAddItemInfo;Landroid/graphics/Bitmap;Z)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v15, v25

    move-object/from16 v16, v13

    move-object/from16 v17, p0

    invoke-virtual/range {v14 .. v21}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;F)V

    .line 1120
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->recycle()V

    .line 1121
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 1122
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1093
    .end local v13           #preview:Landroid/graphics/Bitmap;
    .end local v22           #clipAlpha:Z
    .end local v29           #outline:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/PendingAddShortcutInfo;

    .line 1094
    .local v23, createShortcutInfo:Lcom/android/launcher2/PendingAddShortcutInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/launcher2/PendingAddShortcutInfo;->shortcutActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1095
    .local v12, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1098
    .restart local v13       #preview:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1100
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1104
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    goto/16 :goto_1

    .line 1108
    .end local v12           #icon:Landroid/graphics/drawable/Drawable;
    .end local v23           #createShortcutInfo:Lcom/android/launcher2/PendingAddShortcutInfo;
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_2
.end method

.method private cancelAllTasks()V
    .locals 6

    .prologue
    .line 1339
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelAllTasks: mRunningTasks size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1344
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1345
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1346
    .local v1, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1347
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1348
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    iget v4, v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1351
    iget v3, v1, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1352
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v3, :cond_0

    .line 1353
    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViewsOnPage()V

    goto :goto_0

    .line 1356
    .end local v1           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1357
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1358
    return-void
.end method

.method private cleanupWidgetPreloading(Z)V
    .locals 7
    .parameter "widgetWasAdded"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 993
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanupWidgetPreloading widgetWasAdded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCreateWidgetInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mWidgetLoadingId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    if-nez p1, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 1001
    .local v0, info:Lcom/android/launcher2/PendingAddWidgetInfo;
    iput-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 1003
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    if-nez v2, :cond_1

    .line 1005
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1006
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1026
    .end local v0           #info:Lcom/android/launcher2/PendingAddWidgetInfo;
    :cond_0
    :goto_0
    iput v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 1027
    iput v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    .line 1028
    iput-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 1029
    invoke-static {}, Lcom/android/launcher2/PagedViewWidget;->resetShortPressTarget()V

    .line 1030
    return-void

    .line 1007
    .restart local v0       #info:Lcom/android/launcher2/PendingAddWidgetInfo;
    :cond_1
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1009
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    if-eq v2, v5, :cond_2

    .line 1010
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1014
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1015
    :cond_3
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1017
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    if-eq v2, v5, :cond_4

    .line 1018
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetLoadingId:I

    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 1022
    :cond_4
    iget-object v1, v0, Lcom/android/launcher2/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 1023
    .local v1, widget:Landroid/appwidget/AppWidgetHostView;
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private deleteItemInDatabase(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 3626
    const-string v1, "AppsCustomizePagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteItemInDatabase: info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3628
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    .line 3629
    .local v0, model:Lcom/android/launcher2/LauncherModel;
    if-eqz p1, :cond_0

    .line 3630
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/LauncherModel;->deleteAllAppsItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ApplicationInfo;)V

    .line 3632
    :cond_0
    return-void
.end method

.method private dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "tag"
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2451
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2453
    .local v0, i:Ljava/lang/Object;
    instance-of v3, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 2454
    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 2455
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   label=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" previewImage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resizeMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " configure="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " initialLayout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2459
    .end local v2           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_1
    instance-of v3, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 2460
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 2461
    .local v2, info:Landroid/content/pm/ResolveInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   label=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" icon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2465
    .end local v0           #i:Ljava/lang/Object;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :cond_2
    return-void
.end method

.method private endDragging(Landroid/view/View;ZZ)V
    .locals 2
    .parameter "target"
    .parameter "isFlingToDelete"
    .parameter "success"

    .prologue
    .line 1178
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher2/DeleteDropTarget;

    if-nez v0, :cond_1

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 1184
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    .line 1185
    return-void
.end method

.method private fillPageInfoIntoAppInfo(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;I)V
    .locals 2
    .parameter "appInfo"
    .parameter "pageInfo"
    .parameter "screen"

    .prologue
    .line 3804
    iget-object v0, p2, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    .line 3806
    iget v0, p1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int/2addr v0, v1

    iput v0, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 3807
    iget v0, p1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int/2addr v0, v1

    iput v0, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 3808
    iput p3, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 3809
    return-void
.end method

.method private findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)I
    .locals 4
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")I"
        }
    .end annotation

    .prologue
    .line 4015
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4016
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4017
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 4018
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v3, v2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4022
    .end local v1           #i:I
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :goto_1
    return v1

    .line 4016
    .restart local v1       #i:I
    .restart local v2       #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4022
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findApp(Ljava/util/ArrayList;Lcom/android/launcher2/ApplicationInfo;)Lcom/android/launcher2/ApplicationInfo;
    .locals 5
    .parameter
    .parameter "appInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Lcom/android/launcher2/ApplicationInfo;",
            ")",
            "Lcom/android/launcher2/ApplicationInfo;"
        }
    .end annotation

    .prologue
    .line 3960
    .local p1, allAppsInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3961
    .local v0, appsCount:I
    iget-object v1, p2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 3962
    .local v1, componentName:Landroid/content/ComponentName;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3963
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 3964
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v3, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3968
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local p2
    :goto_1
    return-object p2

    .line 3962
    .restart local v3       #info:Lcom/android/launcher2/ApplicationInfo;
    .restart local p2
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3968
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const/4 p2, 0x0

    goto :goto_1
.end method

.method private findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Lcom/android/launcher2/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2287
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 2288
    .local v3, removeComponent:Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2289
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2290
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 2291
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2295
    .end local v0           #i:I
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    :goto_1
    return v0

    .line 2289
    .restart local v0       #i:I
    .restart local v1       #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2295
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findAppByPackage(Ljava/util/List;Ljava/lang/String;)I
    .locals 10
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2298
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v7, p2}, Lcom/android/launcher2/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 2299
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 2300
    .local v4, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 2301
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 2302
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v7, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-static {v7}, Lcom/android/launcher2/ItemInfo;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2307
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/launcher2/Utilities;->isComponentEnabled(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    .line 2311
    .local v3, isComponentEnabled:Z
    const/4 v6, 0x0

    .line 2312
    .local v6, removed:Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 2313
    iget-object v7, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2314
    .local v0, component:Landroid/content/ComponentName;
    invoke-static {v5, v0}, Lcom/android/launcher2/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2315
    const/4 v6, 0x1

    .line 2322
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_0
    :goto_1
    const-string v7, "AppsCustomizePagedView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "findAppByPackage: i = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", info = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",isComponentEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",removed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    if-eqz v3, :cond_1

    if-eqz v6, :cond_3

    .line 2333
    .end local v1           #i:I
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v3           #isComponentEnabled:Z
    .end local v6           #removed:Z
    :cond_1
    :goto_2
    return v1

    .line 2318
    .restart local v1       #i:I
    .restart local v2       #info:Lcom/android/launcher2/ApplicationInfo;
    .restart local v3       #isComponentEnabled:Z
    .restart local v6       #removed:Z
    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    .line 2329
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/launcher2/LauncherModel;->restoreAppInAllAppsList(Lcom/android/launcher2/ApplicationInfo;)V

    .line 2300
    .end local v3           #isComponentEnabled:Z
    .end local v6           #removed:Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2333
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_5
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private findFirstEmptyPosition(Lcom/android/launcher2/ApplicationInfo;)I
    .locals 7
    .parameter "info"

    .prologue
    .line 3751
    sget-object v4, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3753
    .local v1, pageCount:I
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findFirstEmptyPosition: info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",pageCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    iget-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-eqz v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 3760
    .local v3, startPage:I
    :goto_0
    move v0, v3

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 3761
    sget-object v4, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 3763
    .local v2, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isFull()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3765
    invoke-direct {p0, p1, v2, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->fillPageInfoIntoAppInfo(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;I)V

    .line 3767
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Find empty cell for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCellCountX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCellCountY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3769
    iget v4, p1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 3774
    .end local v0           #i:I
    .end local v2           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :goto_2
    return v0

    .line 3759
    .end local v3           #startPage:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3760
    .restart local v0       #i:I
    .restart local v2       #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    .restart local v3       #startPage:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3774
    .end local v2           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_2
    const/4 v0, -0x1

    goto :goto_2
.end method

.method private findFirstEmptyPositionFromLastPage(Lcom/android/launcher2/ApplicationInfo;)I
    .locals 5
    .parameter "info"

    .prologue
    .line 3784
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3786
    .local v0, pageCount:I
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFirstEmptyPosition: info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pageCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3790
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 3792
    .local v1, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    invoke-virtual {v1}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isFull()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3793
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->fillPageInfoIntoAppInfo(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;I)V

    .line 3795
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find empty cell for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3797
    add-int/lit8 v2, v0, -0x1

    .line 3799
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private findHideAndShowApps(Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "pageInfo"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4312
    .local p2, hideApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .local p3, showApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v0, p1, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    .line 4313
    .local v0, allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4314
    .local v1, appSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4315
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 4316
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    iget-boolean v4, v3, Lcom/android/launcher2/ApplicationInfo;->stateChanged:Z

    if-eqz v4, :cond_0

    .line 4319
    iget-boolean v4, v3, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    if-eqz v4, :cond_1

    .line 4320
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    .line 4321
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4323
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->moveAppsPositionAfterHideApps(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4314
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4325
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    .line 4326
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4330
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_2
    return-void
.end method

.method private findHideAndShowApps(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter "page"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 4286
    .local p1, allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .local p2, hideApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .local p3, showApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4287
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4288
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 4289
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget v3, v2, Lcom/android/launcher2/ItemInfo;->screen:I

    if-ne p4, v3, :cond_0

    iget-boolean v3, v2, Lcom/android/launcher2/ApplicationInfo;->stateChanged:Z

    if-eqz v3, :cond_0

    .line 4290
    iget-boolean v3, v2, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    if-eqz v3, :cond_1

    .line 4291
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    .line 4292
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4294
    invoke-direct {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->moveAppsPositionAfterHideApps(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4287
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4296
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    .line 4297
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4301
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_2
    return-void
.end method

.method private findNearestArea(IIIILcom/android/launcher2/PagedViewCellLayout;[I)[I
    .locals 6
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 3312
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/PagedViewCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
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
    .line 3256
    if-nez p6, :cond_0

    .line 3257
    const/4 v3, 0x2

    new-array v1, v3, [F

    .line 3265
    .local v1, res:[F
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p1, v3

    .line 3266
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 3273
    sub-int v0, p1, p3

    .line 3274
    .local v0, left:I
    sub-int v2, p2, p4

    .line 3277
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

    .line 3278
    const/4 v3, 0x1

    invoke-virtual {p5}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    int-to-float v4, v4

    aput v4, v1, v3

    .line 3280
    return-object v1

    .line 3259
    .end local v0           #left:I
    .end local v1           #res:[F
    .end local v2           #top:I
    :cond_0
    move-object v1, p6

    .restart local v1       #res:[F
    goto :goto_0
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 9

    .prologue
    .line 516
    const/4 v3, -0x1

    .line 517
    .local v3, i:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getPageCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    .line 519
    .local v2, currentPage:I
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v2, v7, :cond_1

    .line 520
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewCellLayout;

    .line 521
    .local v4, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewCellLayout;->getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-result-object v1

    .line 522
    .local v1, childrenLayout:Lcom/android/launcher2/PagedViewCellLayoutChildren;
    iget v7, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v8, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v6, v7, v8

    .line 523
    .local v6, numItemsPerPage:I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 524
    .local v0, childCount:I
    if-lez v0, :cond_0

    .line 525
    mul-int v7, v2, v6

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    .line 538
    .end local v0           #childCount:I
    .end local v1           #childrenLayout:Lcom/android/launcher2/PagedViewCellLayoutChildren;
    .end local v2           #currentPage:I
    .end local v4           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    .end local v6           #numItemsPerPage:I
    :cond_0
    :goto_0
    return v3

    .line 528
    .restart local v2       #currentPage:I
    :cond_1
    sget-object v7, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 529
    .local v5, numApps:I
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 530
    .local v4, layout:Lcom/android/launcher2/PagedViewGridLayout;
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v6, v7, v8

    .line 531
    .restart local v6       #numItemsPerPage:I
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 532
    .restart local v0       #childCount:I
    if-lez v0, :cond_0

    .line 533
    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v7, v2, v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v5

    div-int/lit8 v8, v0, 0x2

    add-int v3, v7, v8

    goto :goto_0
.end method

.method private getPagedViewCellLayouts()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedViewCellLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3171
    .local v2, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/PagedViewCellLayout;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3172
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3173
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3175
    :cond_0
    return-object v2
.end method

.method private getParentPagedViewCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/PagedViewCellLayout;
    .locals 5
    .parameter "v"

    .prologue
    .line 3184
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPagedViewCellLayouts()Ljava/util/ArrayList;

    move-result-object v3

    .line 3185
    .local v3, layouts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/PagedViewCellLayout;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewCellLayout;

    .line 3186
    .local v2, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v2, p1}, Lcom/android/launcher2/PagedViewCellLayout;->indexOfChildOnPage(Landroid/view/View;)I

    move-result v1

    .line 3187
    .local v1, index:I
    const/4 v4, -0x1

    if-le v1, v4, :cond_0

    .line 3191
    .end local v1           #index:I
    .end local v2           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getShortcutPreview(Landroid/content/pm/ResolveInfo;II)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "info"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 1637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

    invoke-virtual {v2}, Lcom/android/launcher2/WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1638
    .local v4, tempBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    invoke-virtual {v2}, Lcom/android/launcher2/WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Canvas;

    .line 1639
    .local v15, c:Landroid/graphics/Canvas;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p3

    if-eq v2, v0, :cond_2

    .line 1642
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewBitmap:Lcom/android/launcher2/BitmapCache;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/WeakReferenceThreadLocal;->set(Ljava/lang/Object;)V

    .line 1650
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1652
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0b003b

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 1654
    .local v6, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0b0039

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 1656
    .local v5, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f0b003a

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    .line 1659
    .local v18, paddingRight:I
    sub-int v2, p2, v5

    sub-int v7, v2, v18

    .local v7, scaledIconWidth:I
    move-object/from16 v2, p0

    move v8, v7

    .line 1661
    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1664
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1665
    .local v10, preview:Landroid/graphics/Bitmap;
    invoke-virtual {v15, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

    invoke-virtual {v2}, Lcom/android/launcher2/WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Paint;

    .line 1667
    .local v17, p:Landroid/graphics/Paint;
    if-nez v17, :cond_1

    .line 1668
    new-instance v17, Landroid/graphics/Paint;

    .end local v17           #p:Landroid/graphics/Paint;
    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 1669
    .restart local v17       #p:Landroid/graphics/Paint;
    new-instance v16, Landroid/graphics/ColorMatrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1670
    .local v16, colorMatrix:Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1671
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1672
    const/16 v2, 0xf

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedShortcutPreviewPaint:Lcom/android/launcher2/PaintCache;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher2/WeakReferenceThreadLocal;->set(Ljava/lang/Object;)V

    .line 1677
    .end local v16           #colorMatrix:Landroid/graphics/ColorMatrix;
    :cond_1
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v15, v4, v2, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1678
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1680
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    move-object/from16 v8, p0

    move-object v9, v3

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1682
    return-object v10

    .line 1645
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #paddingLeft:I
    .end local v6           #paddingTop:I
    .end local v7           #scaledIconWidth:I
    .end local v10           #preview:Landroid/graphics/Bitmap;
    .end local v17           #p:Landroid/graphics/Paint;
    .end local v18           #paddingRight:I
    :cond_2
    invoke-virtual {v15, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1646
    const/4 v2, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v15, v2, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1647
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private getSleepForPage(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 1543
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 1544
    .local v0, pageDiff:I
    const/4 v1, 0x0

    mul-int/lit16 v2, v0, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;
    .locals 2

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizeTabHost;

    return-object v0
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3
    .parameter "page"

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x1

    .line 1532
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPageLoadPriority(I)I

    move-result v0

    .line 1533
    .local v0, pageDiff:I
    if-gtz v0, :cond_0

    .line 1538
    :goto_0
    return v1

    .line 1535
    :cond_0
    if-gt v0, v1, :cond_1

    move v1, v2

    .line 1536
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1538
    goto :goto_0
.end method

.method private getWidgetPageLoadPriority(I)I
    .locals 7
    .parameter "page"

    .prologue
    .line 1508
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 1509
    .local v4, toPage:I
    iget v5, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 1510
    iget v4, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 1516
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1517
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    const v1, 0x7fffffff

    .line 1518
    .local v1, minPageDiff:I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1519
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1520
    .local v3, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v5, v3, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1521
    goto :goto_0

    .line 1523
    .end local v3           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_1
    sub-int v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1524
    .local v2, rawPageDiff:I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v5, v2, v5

    return v5
.end method

.method private getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;
    .locals 32
    .parameter "provider"
    .parameter "previewImage"
    .parameter "iconId"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 1689
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 1691
    .local v20, packageName:Ljava/lang/String;
    if-gtz p6, :cond_0

    .line 1693
    const-string v2, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getWidgetPreview: packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", maxWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    const p6, 0x7fffffff

    .line 1697
    :cond_0
    if-gtz p7, :cond_1

    .line 1699
    const-string v2, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getWidgetPreview: packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", maxHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const p7, 0x7fffffff

    .line 1704
    :cond_1
    const/16 v16, 0x0

    .line 1705
    .local v16, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 1706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1707
    if-nez v16, :cond_2

    .line 1708
    const-string v2, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_2
    const/4 v12, 0x0

    .line 1715
    .local v12, bitmapWidth:I
    const/4 v13, 0x0

    .line 1716
    .local v13, bitmapHeight:I
    const/4 v4, 0x0

    .line 1717
    .local v4, defaultPreview:Landroid/graphics/Bitmap;
    if-eqz v16, :cond_b

    const/16 v31, 0x1

    .line 1719
    .local v31, widgetPreviewExists:Z
    :goto_0
    const/16 v30, 0x0

    .line 1720
    .local v30, useWidgetPreview:Z
    if-eqz v31, :cond_4

    .line 1721
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 1722
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 1723
    if-lez v12, :cond_3

    if-gtz v13, :cond_c

    .line 1725
    :cond_3
    const-string v2, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getWidgetPreview: packageName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", getIntrinsicWidth() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", getIntrinsicHeight() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    :cond_4
    :goto_1
    if-nez v30, :cond_8

    .line 1736
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ge v0, v2, :cond_5

    const/16 p4, 0x1

    .line 1737
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ge v0, v2, :cond_6

    const/16 p5, 0x1

    .line 1739
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f02007d

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    check-cast v22, Landroid/graphics/drawable/BitmapDrawable;

    .line 1741
    .local v22, previewDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v24

    .line 1743
    .local v24, previewDrawableWidth:I
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v23

    .line 1745
    .local v23, previewDrawableHeight:I
    mul-int v12, v24, p4

    .line 1746
    mul-int v13, v23, p5

    .line 1748
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1750
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    invoke-virtual {v2}, Lcom/android/launcher2/WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Canvas;

    .line 1751
    .local v14, c:Landroid/graphics/Canvas;
    invoke-virtual {v14, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1752
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v7, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1759
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v21

    .line 1760
    .local v21, previewBitmap:Landroid/graphics/Bitmap;
    new-instance v26, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1761
    .local v26, shader:Landroid/graphics/BitmapShader;
    new-instance v27, Landroid/graphics/Paint;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Paint;-><init>()V

    .line 1762
    .local v27, shaderPaint:Landroid/graphics/Paint;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1763
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1766
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1769
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    const/high16 v7, 0x3e80

    mul-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v18, v0

    .line 1770
    .local v18, minOffset:I
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1771
    .local v28, smallestSide:I
    move/from16 v0, v28

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    mul-int/lit8 v8, v18, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v2, v7

    const/high16 v7, 0x3f80

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 1775
    .local v17, iconScale:F
    const/4 v3, 0x0

    .line 1776
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    move/from16 v0, v24

    int-to-float v2, v0

    :try_start_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v7, v7

    mul-float v7, v7, v17

    sub-float/2addr v2, v7

    const/high16 v7, 0x4000

    div-float/2addr v2, v7

    float-to-int v5, v2

    .line 1778
    .local v5, hoffset:I
    move/from16 v0, v23

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v7, v7

    mul-float v7, v7, v17

    sub-float/2addr v2, v7

    const/high16 v7, 0x4000

    div-float/2addr v2, v7

    float-to-int v6, v2

    .line 1780
    .local v6, yoffset:I
    if-lez p3, :cond_7

    .line 1781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1783
    :cond_7
    if-eqz v3, :cond_8

    .line 1784
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppIconSize:I

    int-to-float v2, v2

    mul-float v2, v2, v17

    float-to-int v8, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1794
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #hoffset:I
    .end local v6           #yoffset:I
    .end local v14           #c:Landroid/graphics/Canvas;
    .end local v17           #iconScale:F
    .end local v18           #minOffset:I
    .end local v21           #previewBitmap:Landroid/graphics/Bitmap;
    .end local v22           #previewDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v23           #previewDrawableHeight:I
    .end local v24           #previewDrawableWidth:I
    .end local v26           #shader:Landroid/graphics/BitmapShader;
    .end local v27           #shaderPaint:Landroid/graphics/Paint;
    .end local v28           #smallestSide:I
    :cond_8
    :goto_2
    const/high16 v25, 0x3f80

    .line 1795
    .local v25, scale:F
    move/from16 v0, p6

    if-le v12, v0, :cond_9

    .line 1796
    move/from16 v0, p6

    int-to-float v2, v0

    int-to-float v7, v12

    div-float v25, v2, v7

    .line 1798
    :cond_9
    const/high16 v2, 0x3f80

    cmpl-float v2, v25, v2

    if-eqz v2, :cond_a

    .line 1799
    int-to-float v2, v12

    mul-float v2, v2, v25

    float-to-int v12, v2

    .line 1800
    int-to-float v2, v13

    mul-float v2, v2, v25

    float-to-int v13, v2

    .line 1803
    :cond_a
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1807
    .local v9, preview:Landroid/graphics/Bitmap;
    if-eqz v31, :cond_d

    .line 1808
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 1827
    :goto_3
    return-object v9

    .line 1717
    .end local v9           #preview:Landroid/graphics/Bitmap;
    .end local v25           #scale:F
    .end local v30           #useWidgetPreview:Z
    .end local v31           #widgetPreviewExists:Z
    :cond_b
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 1730
    .restart local v30       #useWidgetPreview:Z
    .restart local v31       #widgetPreviewExists:Z
    :cond_c
    const/16 v30, 0x1

    goto/16 :goto_1

    .line 1811
    .restart local v9       #preview:Landroid/graphics/Bitmap;
    .restart local v25       #scale:F
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewCanvas:Lcom/android/launcher2/CanvasCache;

    invoke-virtual {v2}, Lcom/android/launcher2/WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Canvas;

    .line 1812
    .restart local v14       #c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewSrcRect:Lcom/android/launcher2/RectCache;

    invoke-virtual {v2}, Lcom/android/launcher2/WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/graphics/Rect;

    .line 1813
    .local v29, src:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewDestRect:Lcom/android/launcher2/RectCache;

    invoke-virtual {v2}, Lcom/android/launcher2/WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    .line 1814
    .local v15, dest:Landroid/graphics/Rect;
    invoke-virtual {v14, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1815
    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v7, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1816
    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v15, v2, v7, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewPaint:Lcom/android/launcher2/PaintCache;

    invoke-virtual {v2}, Lcom/android/launcher2/WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Paint;

    .line 1819
    .local v19, p:Landroid/graphics/Paint;
    if-nez v19, :cond_e

    .line 1820
    new-instance v19, Landroid/graphics/Paint;

    .end local v19           #p:Landroid/graphics/Paint;
    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 1821
    .restart local v19       #p:Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1822
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mCachedAppWidgetPreviewPaint:Lcom/android/launcher2/PaintCache;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/launcher2/WeakReferenceThreadLocal;->set(Ljava/lang/Object;)V

    .line 1824
    :cond_e
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v14, v4, v0, v15, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1825
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1788
    .end local v9           #preview:Landroid/graphics/Bitmap;
    .end local v15           #dest:Landroid/graphics/Rect;
    .end local v19           #p:Landroid/graphics/Paint;
    .end local v25           #scale:F
    .end local v29           #src:Landroid/graphics/Rect;
    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v17       #iconScale:F
    .restart local v18       #minOffset:I
    .restart local v21       #previewBitmap:Landroid/graphics/Bitmap;
    .restart local v22       #previewDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v23       #previewDrawableHeight:I
    .restart local v24       #previewDrawableWidth:I
    .restart local v26       #shader:Landroid/graphics/BitmapShader;
    .restart local v27       #shaderPaint:Landroid/graphics/Paint;
    .restart local v28       #smallestSide:I
    :catch_0
    move-exception v2

    goto/16 :goto_2
.end method

.method private hideOrRemoveApps(Ljava/util/ArrayList;Z)V
    .locals 13
    .parameter
    .parameter "isRemoved"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4230
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const-string v10, "AppsCustomizePagedView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hideOrRemoveApps: apps = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",isRemoved = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4234
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4235
    .local v8, pageAppsStateChanged:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4237
    .local v3, hideAppsCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 4238
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 4239
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    iget v7, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 4240
    .local v7, page:I
    if-ltz v7, :cond_0

    .line 4241
    sget-object v10, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 4242
    .local v9, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    invoke-virtual {v9, v0}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->remove(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4243
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 4244
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4247
    .end local v9           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_0
    if-eqz p2, :cond_1

    .line 4248
    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->deleteItemInDatabase(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4237
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4250
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->updateItemInDatabase(Lcom/android/launcher2/ApplicationInfo;)V

    goto :goto_1

    .line 4254
    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    .end local v7           #page:I
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4256
    .local v2, count:I
    const-string v10, "AppsCustomizePagedView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hideOrRemoveApps middle: pageAppsStateChanged = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4259
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_5

    .line 4260
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4261
    .restart local v7       #page:I
    sget-object v10, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 4262
    .restart local v9       #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    invoke-virtual {v9}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->getAppsCount()I

    move-result v1

    .line 4263
    .local v1, appsCount:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_3
    if-ge v6, v1, :cond_3

    .line 4264
    invoke-virtual {v9, v6}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->get(I)Lcom/android/launcher2/ApplicationInfo;

    move-result-object v5

    .line 4265
    .local v5, info:Lcom/android/launcher2/ApplicationInfo;
    iput v6, v5, Lcom/android/launcher2/ApplicationInfo;->pos:I

    .line 4266
    iget v10, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v10, v6, v10

    iput v10, v5, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 4267
    iget v10, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v10, v6, v10

    iput v10, v5, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 4263
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 4269
    .end local v5           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_3
    if-lez v1, :cond_4

    .line 4270
    invoke-virtual {p0, v7, v9}, Lcom/android/launcher2/AppsCustomizePagedView;->updateItemLocationsInDatabase(ILcom/android/launcher2/AppsCustomizePagedView$PageInfo;)V

    .line 4259
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4273
    .end local v1           #appsCount:I
    .end local v6           #j:I
    .end local v7           #page:I
    .end local v9           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_5
    return-void
.end method

.method private initAllAppsPage()V
    .locals 9

    .prologue
    .line 3694
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 3695
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 3699
    :cond_0
    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-gtz v6, :cond_1

    .line 3700
    sget v6, Lcom/android/launcher2/LauncherModel;->sMaxAppsPageIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 3704
    :cond_1
    const-string v6, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initAllAppsPage mNumAppsPages = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3708
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v6, :cond_2

    .line 3709
    new-instance v4, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    invoke-direct {v4, p0}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    .line 3710
    .local v4, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3708
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3714
    .end local v4           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_2
    const/4 v1, 0x0

    :goto_1
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 3715
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 3716
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget v5, v2, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 3717
    .local v5, screen:I
    iget v6, v2, Lcom/android/launcher2/ItemInfo;->screen:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    iget-boolean v6, v2, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    if-eqz v6, :cond_3

    .line 3718
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 3719
    .restart local v4       #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    invoke-virtual {v4, v2}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->add(Lcom/android/launcher2/ApplicationInfo;)V

    .line 3714
    .end local v4           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3723
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v5           #screen:I
    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3725
    .local v0, hidePages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3726
    .local v3, pageCount:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_6

    .line 3727
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 3728
    .restart local v4       #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3729
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3726
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3734
    .end local v4           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 3735
    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePagesWhenNeedToRemove(Ljava/util/HashSet;)V

    .line 3739
    :cond_7
    const-string v6, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initAllAppsPage end: mNumAppsPages = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",sAllAppsPage size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",hidePages = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3742
    return-void
.end method

.method private invalidateOnDataChange()V
    .locals 2

    .prologue
    .line 2213
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isDataReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2217
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "invalidateOnDataChange : Data is not ready"

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2224
    :goto_0
    return-void

    .line 2221
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 2222
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->invalidatePageData()V

    goto :goto_0
.end method

.method private loadWidgetPreviewsInBackground(Lcom/android/launcher2/AppsCustomizeAsyncTask;Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 17
    .parameter "task"
    .parameter "data"

    .prologue
    .line 1953
    if-eqz p1, :cond_0

    .line 1955
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1959
    :cond_0
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 1960
    .local v15, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 1961
    .local v13, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1962
    .local v11, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 1963
    if-eqz p1, :cond_3

    .line 1965
    invoke-virtual/range {p1 .. p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1989
    :cond_1
    return-void

    .line 1968
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 1971
    :cond_3
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 1972
    .local v16, rawInfo:Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_5

    move-object/from16 v14, v16

    .line 1973
    check-cast v14, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1974
    .local v14, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v1, v14}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v10

    .line 1976
    .local v10, cellSpans:[I
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    const/4 v3, 0x0

    aget v3, v10, v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1978
    .local v7, maxWidth:I
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    const/4 v3, 0x1

    aget v3, v10, v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellHeight(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1980
    .local v8, maxHeight:I
    iget-object v2, v14, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v3, v14, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iget v4, v14, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v1, 0x0

    aget v5, v10, v1

    const/4 v1, 0x1

    aget v6, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/AppsCustomizePagedView;->getWidgetPreview(Landroid/content/ComponentName;IIIIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1982
    .local v9, b:Landroid/graphics/Bitmap;
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1962
    .end local v7           #maxWidth:I
    .end local v8           #maxHeight:I
    .end local v9           #b:Landroid/graphics/Bitmap;
    .end local v10           #cellSpans:[I
    .end local v14           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_4
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1983
    :cond_5
    move-object/from16 v0, v16

    instance-of v1, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_4

    move-object/from16 v14, v16

    .line 1985
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1986
    .local v14, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p2

    iget v1, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageWidth:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/launcher2/AsyncTaskPageData;->maxImageHeight:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getShortcutPreview(Landroid/content/pm/ResolveInfo;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 5
    .parameter "v"
    .parameter "xy"
    .parameter "cachedInverseMatrix"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3293
    if-nez p3, :cond_0

    .line 3294
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 3295
    iget-object p3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 3297
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 3298
    .local v0, scrollX:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3299
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    .line 3301
    :cond_1
    aget v1, p2, v3

    int-to-float v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v3

    .line 3302
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

    .line 3303
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3304
    return-void
.end method

.method private modifyAppPosition(Landroid/view/View;III)V
    .locals 9
    .parameter "v"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 3504
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 3505
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iput p3, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 3506
    iput p4, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 3507
    iget v5, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 3508
    .local v5, prevScreen:I
    iget v4, v1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    .line 3509
    .local v4, prevPos:I
    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    mul-int/2addr v6, p4

    add-int v2, v6, p3

    .line 3512
    .local v2, pos:I
    const-string v6, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "modifyAppPositioin v = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", info = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", screen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cellX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cellY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", prevScreen = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", prevPos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3518
    if-ltz p2, :cond_1

    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p2, v6, :cond_1

    .line 3519
    if-eq v5, p2, :cond_0

    .line 3520
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 3521
    .local v3, prevPage:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    invoke-virtual {v3, v1}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->remove(Lcom/android/launcher2/ApplicationInfo;)V

    .line 3525
    .end local v3           #prevPage:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_0
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 3526
    .local v0, curPage:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    iput p2, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 3527
    iput v2, v1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    .line 3528
    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->add(Lcom/android/launcher2/ApplicationInfo;)V

    .line 3530
    .end local v0           #curPage:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_1
    return-void
.end method

.method private moveAppsPositionAfterHideApps(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 10
    .parameter "hideAppInfo"

    .prologue
    .line 4338
    iget v4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 4339
    .local v4, page:I
    iget v6, p1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    .line 4341
    .local v6, pos:I
    sget-object v7, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 4342
    .local v5, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    iget-object v0, v5, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    .line 4343
    .local v0, allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4346
    .local v2, childCount:I
    const-string v7, "AppsCustomizePagedView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "moveAppsPositionAfterHideApps: page = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",pos = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",hideAppInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",childCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4350
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 4351
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 4352
    .local v1, appInfo:Lcom/android/launcher2/ApplicationInfo;
    iget v7, v1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    if-le v7, v6, :cond_0

    .line 4353
    iget v7, v1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    .line 4354
    iget v7, v1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    iget v8, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int/2addr v7, v8

    iput v7, v1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 4355
    iget v7, v1, Lcom/android/launcher2/ApplicationInfo;->pos:I

    iget v8, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int/2addr v7, v8

    iput v7, v1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 4357
    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateItemInDatabase(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4350
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4361
    .end local v1           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateItemInDatabase(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4362
    return-void
.end method

.method private notifyPageListChanged()V
    .locals 2

    .prologue
    .line 3686
    new-instance v0, Landroid/content/Intent;

    const-string v1, "package_list_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3687
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 3688
    return-void
.end method

.method private onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V
    .locals 14
    .parameter "data"

    .prologue
    const/4 v13, 0x0

    .line 1992
    iget-boolean v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    if-eqz v10, :cond_0

    .line 1993
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2028
    :goto_0
    return-void

    .line 1997
    :cond_0
    :try_start_0
    iget v5, p1, Lcom/android/launcher2/AsyncTaskPageData;->page:I

    .line 1998
    .local v5, page:I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewGridLayout;

    .line 2000
    .local v4, layout:Lcom/android/launcher2/PagedViewGridLayout;
    iget-object v2, p1, Lcom/android/launcher2/AsyncTaskPageData;->items:Ljava/util/ArrayList;

    .line 2001
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2002
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 2003
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PagedViewWidget;

    .line 2004
    .local v9, widget:Lcom/android/launcher2/PagedViewWidget;
    if-eqz v9, :cond_1

    .line 2005
    iget-object v10, p1, Lcom/android/launcher2/AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 2006
    .local v7, preview:Landroid/graphics/Bitmap;
    new-instance v10, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v10, v7}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v10, v1}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;I)V

    .line 2002
    .end local v7           #preview:Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2011
    .end local v9           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_2
    const-string v10, "AppsCustomizePagedView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onSyncWidgetPageItems: page = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", layout = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", this = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v4}, Lcom/android/launcher2/PagedViewGridLayout;->createHardwareLayer()V

    .line 2016
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2019
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2020
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2021
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 2022
    .local v8, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v6, v8, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 2023
    .local v6, pageIndex:I
    invoke-direct {p0, v6}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2026
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    .end local v4           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    .end local v5           #page:I
    .end local v6           #pageIndex:I
    .end local v8           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :catchall_0
    move-exception v10

    invoke-virtual {p1, v13}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    throw v10

    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    .restart local v4       #layout:Lcom/android/launcher2/PagedViewGridLayout;
    .restart local v5       #page:I
    :cond_3
    invoke-virtual {p1, v13}, Lcom/android/launcher2/AsyncTaskPageData;->cleanup(Z)V

    goto/16 :goto_0
.end method

.method private preloadWidget(Lcom/android/launcher2/PendingAddWidgetInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    .line 913
    iget-object v1, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 914
    .local v1, pInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getDefaultOptionsForWidget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 917
    .local v0, options:Landroid/os/Bundle;
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preloadWidget info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pInfo.configure = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 922
    iput-object v0, p1, Lcom/android/launcher2/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 973
    :goto_0
    return-void

    .line 926
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 927
    new-instance v2, Lcom/android/launcher2/AppsCustomizePagedView$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher2/AppsCustomizePagedView$2;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;Landroid/os/Bundle;Lcom/android/launcher2/PendingAddWidgetInfo;)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 946
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 948
    new-instance v2, Lcom/android/launcher2/AppsCustomizePagedView$3;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/launcher2/AppsCustomizePagedView$3;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher2/PendingAddWidgetInfo;)V

    iput-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 972
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private prepareLoadWidgetPreviewsTask(ILjava/util/ArrayList;III)V
    .locals 12
    .parameter "page"
    .parameter
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "cellCountX"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 1553
    .local p2, widgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1554
    .local v7, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1555
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1556
    .local v10, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v11, v10, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 1557
    .local v11, taskPage:I
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getAssociatedLowerPageBound(I)I

    move-result v1

    if-lt v11, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getAssociatedUpperPageBound(I)I

    move-result v1

    if-le v11, v1, :cond_1

    .line 1559
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1560
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1562
    :cond_1
    invoke-direct {p0, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 1567
    .end local v10           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    .end local v11           #taskPage:I
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getSleepForPage(I)I

    move-result v8

    .line 1568
    .local v8, sleepMs:I
    new-instance v0, Lcom/android/launcher2/AsyncTaskPageData;

    new-instance v5, Lcom/android/launcher2/AppsCustomizePagedView$5;

    invoke-direct {v5, p0, v8}, Lcom/android/launcher2/AppsCustomizePagedView$5;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;I)V

    new-instance v6, Lcom/android/launcher2/AppsCustomizePagedView$6;

    invoke-direct {v6, p0}, Lcom/android/launcher2/AppsCustomizePagedView$6;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/android/launcher2/AsyncTaskCallback;Lcom/android/launcher2/AsyncTaskCallback;)V

    .line 1597
    .local v0, pageData:Lcom/android/launcher2/AsyncTaskPageData;
    new-instance v9, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    sget-object v1, Lcom/android/launcher2/AsyncTaskPageData$Type;->LoadWidgetPreviewData:Lcom/android/launcher2/AsyncTaskPageData$Type;

    invoke-direct {v9, p1, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;-><init>(ILcom/android/launcher2/AsyncTaskPageData$Type;)V

    .line 1599
    .local v9, t:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    .line 1600
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v9, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1601
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    return-void
.end method

.method private processLastCellInFullPage(I)V
    .locals 18
    .parameter "screen"

    .prologue
    .line 3421
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 3423
    .local v10, childCount:I
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLastCellInFullPage: screen = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",childCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    const/4 v2, 0x2

    new-array v12, v2, [I

    .line 3428
    .local v12, firstCell:[I
    const/4 v2, 0x2

    new-array v11, v2, [I

    .line 3429
    .local v11, emptyCell:[I
    const/4 v15, 0x0

    .line 3431
    .local v15, layout:Lcom/android/launcher2/PagedViewCellLayout;
    add-int/lit8 v4, p1, 0x1

    .local v4, i:I
    :goto_0
    if-ge v4, v10, :cond_1

    .line 3432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    .line 3433
    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v12, v2

    .line 3434
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v12, v2

    .line 3436
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    check-cast v15, Lcom/android/launcher2/PagedViewCellLayout;

    .line 3437
    .restart local v15       #layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v15, v11}, Lcom/android/launcher2/PagedViewCellLayout;->getLastPosition([I)[I

    .line 3440
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLastCellInFullPage: mPrevLastCell = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",emptyCell = ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x0

    aget v5, v11, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x1

    aget v5, v11, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3444
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isFull()Z

    move-result v14

    .line 3445
    .local v14, isFull:Z
    if-eqz v14, :cond_0

    .line 3446
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v15, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewIcon;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    .line 3447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 3449
    .local v16, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    iput-object v3, v2, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cell:Landroid/view/View;

    .line 3450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iput v3, v2, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    .line 3451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iput v3, v2, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    .line 3452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    mul-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget v5, v5, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    add-int/2addr v3, v5

    iput v3, v2, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->pos:I

    .line 3453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3455
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLastCellInFullPage: mLastCell = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mLastCellInfo = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3460
    .end local v16           #lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v15}, Lcom/android/launcher2/AppsCustomizePagedView;->realTimeReorder([I[ILcom/android/launcher2/PagedViewCellLayout;)V

    .line 3463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->getParentPagedViewCellLayoutForView(Landroid/view/View;)Lcom/android/launcher2/PagedViewCellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->removeChildView(Landroid/view/View;)V

    .line 3464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/ApplicationInfo;

    .line 3467
    .local v13, info:Lcom/android/launcher2/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    const/4 v2, 0x0

    aget v5, v12, v2

    const/4 v2, 0x1

    aget v6, v12, v2

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/AppsCustomizePagedView;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 3471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    const/4 v3, 0x0

    aget v3, v12, v3

    const/4 v5, 0x1

    aget v5, v12, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v3, v5}, Lcom/android/launcher2/AppsCustomizePagedView;->modifyAppPosition(Landroid/view/View;III)V

    .line 3472
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/AppsCustomizePagedView;->updateItemLocationsInDatabase(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 3474
    if-nez v14, :cond_3

    .line 3476
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    .line 3477
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    .line 3483
    .end local v13           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v14           #isFull:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v2, :cond_2

    .line 3484
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->addNewAppsPageLayout()I

    move-result v17

    .line 3486
    .local v17, newPage:I
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processLastCellInFullPage: newPage = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mPrevLastCell = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppToNewPage(Lcom/android/launcher2/ApplicationInfo;I)V

    .line 3493
    .end local v17           #newPage:I
    :cond_2
    return-void

    .line 3431
    .restart local v13       #info:Lcom/android/launcher2/ApplicationInfo;
    .restart local v14       #isFull:Z
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method private readingOrderGreaterThan([I[I)Z
    .locals 4
    .parameter "v1"
    .parameter "v2"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4642
    aget v2, p1, v1

    aget v3, p2, v1

    if-gt v2, v3, :cond_0

    aget v2, p1, v1

    aget v3, p2, v1

    if-ne v2, v3, :cond_1

    aget v2, p1, v0

    aget v3, p2, v0

    if-le v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 4645
    :cond_1
    return v0
.end method

.method private realTimeReorder([I[ILcom/android/launcher2/PagedViewCellLayout;)V
    .locals 18
    .parameter "empty"
    .parameter "target"
    .parameter "layout"

    .prologue
    .line 4583
    const-string v3, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realTimeReorder: empty = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, p1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "),target = ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, p2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, p2, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4590
    const/4 v8, 0x0

    .line 4591
    .local v8, delay:I
    const/high16 v11, 0x41f0

    .line 4593
    .local v11, delayAmount:F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->readingOrderGreaterThan([I[I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4594
    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_1

    const/4 v15, 0x1

    .line 4595
    .local v15, wrap:Z
    :goto_0
    if-eqz v15, :cond_2

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v14, v3, 0x1

    .line 4596
    .local v14, startY:I
    :goto_1
    move/from16 v17, v14

    .local v17, y:I
    :goto_2
    const/4 v3, 0x1

    aget v3, p2, v3

    move/from16 v0, v17

    if-gt v0, v3, :cond_d

    .line 4597
    const/4 v3, 0x1

    aget v3, p1, v3

    move/from16 v0, v17

    if-ne v0, v3, :cond_3

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v13, v3, 0x1

    .line 4598
    .local v13, startX:I
    :goto_3
    const/4 v3, 0x1

    aget v3, p2, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    .line 4599
    .local v12, endX:I
    :goto_4
    move/from16 v16, v13

    .local v16, x:I
    :goto_5
    move/from16 v0, v16

    if-gt v0, v12, :cond_5

    .line 4600
    move-object/from16 v0, p3

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 4601
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_0

    const/4 v3, 0x0

    aget v5, p1, v3

    const/4 v3, 0x1

    aget v6, p1, v3

    const/16 v7, 0xe6

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher2/PagedViewCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4604
    const/4 v3, 0x0

    aput v16, p1, v3

    .line 4605
    const/4 v3, 0x1

    aput v17, p1, v3

    .line 4606
    int-to-float v3, v8

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 4607
    float-to-double v5, v11

    const-wide v9, 0x3feccccccccccccdL

    mul-double/2addr v5, v9

    double-to-float v11, v5

    .line 4608
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mOccuredReorder:Z

    .line 4599
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 4594
    .end local v4           #v:Landroid/view/View;
    .end local v12           #endX:I
    .end local v13           #startX:I
    .end local v14           #startY:I
    .end local v15           #wrap:Z
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 4595
    .restart local v15       #wrap:Z
    :cond_2
    const/4 v3, 0x1

    aget v14, p1, v3

    goto :goto_1

    .line 4597
    .restart local v14       #startY:I
    .restart local v17       #y:I
    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    .line 4598
    .restart local v13       #startX:I
    :cond_4
    const/4 v3, 0x0

    aget v12, p2, v3

    goto :goto_4

    .line 4596
    .restart local v12       #endX:I
    .restart local v16       #x:I
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 4613
    .end local v12           #endX:I
    .end local v13           #startX:I
    .end local v14           #startY:I
    .end local v15           #wrap:Z
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_6
    const/4 v3, 0x0

    aget v3, p1, v3

    if-nez v3, :cond_8

    const/4 v15, 0x1

    .line 4614
    .restart local v15       #wrap:Z
    :goto_6
    if-eqz v15, :cond_9

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v14, v3, -0x1

    .line 4615
    .restart local v14       #startY:I
    :goto_7
    move/from16 v17, v14

    .restart local v17       #y:I
    :goto_8
    const/4 v3, 0x1

    aget v3, p2, v3

    move/from16 v0, v17

    if-lt v0, v3, :cond_d

    .line 4616
    const/4 v3, 0x1

    aget v3, p1, v3

    move/from16 v0, v17

    if-ne v0, v3, :cond_a

    const/4 v3, 0x0

    aget v3, p1, v3

    add-int/lit8 v13, v3, -0x1

    .line 4617
    .restart local v13       #startX:I
    :goto_9
    const/4 v3, 0x1

    aget v3, p2, v3

    move/from16 v0, v17

    if-le v0, v3, :cond_b

    const/4 v12, 0x0

    .line 4618
    .restart local v12       #endX:I
    :goto_a
    move/from16 v16, v13

    .restart local v16       #x:I
    :goto_b
    move/from16 v0, v16

    if-lt v0, v12, :cond_c

    .line 4619
    move-object/from16 v0, p3

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 4620
    .restart local v4       #v:Landroid/view/View;
    if-eqz v4, :cond_7

    const/4 v3, 0x0

    aget v5, p1, v3

    const/4 v3, 0x1

    aget v6, p1, v3

    const/16 v7, 0xe6

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher2/PagedViewCellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4623
    const/4 v3, 0x0

    aput v16, p1, v3

    .line 4624
    const/4 v3, 0x1

    aput v17, p1, v3

    .line 4625
    int-to-float v3, v8

    add-float/2addr v3, v11

    float-to-int v8, v3

    .line 4626
    float-to-double v5, v11

    const-wide v9, 0x3feccccccccccccdL

    mul-double/2addr v5, v9

    double-to-float v11, v5

    .line 4627
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mOccuredReorder:Z

    .line 4618
    :cond_7
    add-int/lit8 v16, v16, -0x1

    goto :goto_b

    .line 4613
    .end local v4           #v:Landroid/view/View;
    .end local v12           #endX:I
    .end local v13           #startX:I
    .end local v14           #startY:I
    .end local v15           #wrap:Z
    .end local v16           #x:I
    .end local v17           #y:I
    :cond_8
    const/4 v15, 0x0

    goto :goto_6

    .line 4614
    .restart local v15       #wrap:Z
    :cond_9
    const/4 v3, 0x1

    aget v14, p1, v3

    goto :goto_7

    .line 4616
    .restart local v14       #startY:I
    .restart local v17       #y:I
    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v3

    add-int/lit8 v13, v3, -0x1

    goto :goto_9

    .line 4617
    .restart local v13       #startX:I
    :cond_b
    const/4 v3, 0x0

    aget v12, p2, v3

    goto :goto_a

    .line 4615
    .restart local v12       #endX:I
    .restart local v16       #x:I
    :cond_c
    add-int/lit8 v17, v17, -0x1

    goto :goto_8

    .line 4632
    .end local v12           #endX:I
    .end local v13           #startX:I
    .end local v16           #x:I
    :cond_d
    return-void
.end method

.method private removeAppsWithPackageNameWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 2354
    .local p1, packageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2355
    .local v1, pn:Ljava/lang/String;
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByPackage(Ljava/util/List;Ljava/lang/String;)I

    move-result v2

    .line 2356
    .local v2, removeIndex:I
    :goto_0
    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    .line 2358
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAppsWithPackageNameWithoutInvalidate: removeIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView;->sRemovedApps:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2363
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByPackage(Ljava/util/List;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 2366
    .end local v1           #pn:Ljava/lang/String;
    .end local v2           #removeIndex:I
    :cond_1
    return-void
.end method

.method private removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 2338
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2339
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2340
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 2341
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    sget-object v4, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v3

    .line 2342
    .local v3, removeIndex:I
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 2343
    sget-object v4, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2345
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAppsWithoutInvalidate: removeIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ApplicationInfo info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2350
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v3           #removeIndex:I
    :cond_1
    return-void
.end method

.method private removeDisabledApps(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 3947
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->hideOrRemoveApps(Ljava/util/ArrayList;Z)V

    .line 3948
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->removeHidePages()V

    .line 3949
    return-void
.end method

.method private removeEmptyPages()V
    .locals 6

    .prologue
    .line 3904
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3906
    .local v1, pageCount:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 3907
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 3908
    .local v2, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3909
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3910
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ge v0, v3, :cond_0

    .line 3911
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    .line 3913
    :cond_0
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 3906
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3918
    .end local v2           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_2
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeEmptyPages: mNumAppsPages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3920
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updateAllAppsPage()V

    .line 3921
    return-void
.end method

.method private removeHidePage(Ljava/util/HashSet;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4406
    .local p1, hidePages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v2

    .line 4407
    .local v2, hidePageSize:I
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4409
    .local v0, allAppsPageSize:I
    const-string v5, "AppsCustomizePagedView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeHidePage: hidePages = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",allAppsPageSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mNumAppsPages = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",sAllAppsPage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4414
    add-int/lit8 v3, v0, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_3

    .line 4415
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 4416
    .local v4, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    const/4 v1, 0x0

    .line 4417
    .local v1, firstInfo:Lcom/android/launcher2/ApplicationInfo;
    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4418
    iget-object v5, v4, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #firstInfo:Lcom/android/launcher2/ApplicationInfo;
    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 4421
    .restart local v1       #firstInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v1, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4422
    :cond_1
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4424
    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 4414
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4427
    .end local v1           #firstInfo:Lcom/android/launcher2/ApplicationInfo;
    .end local v4           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_3
    return-void
.end method

.method private removeHidePages()V
    .locals 6

    .prologue
    .line 4380
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4381
    .local v3, pageNeedToRemove:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4382
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4383
    sget-object v4, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 4384
    .local v2, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    invoke-virtual {v2}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4385
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4382
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4391
    .end local v2           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4392
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePagesWhenNeedToRemove(Ljava/util/HashSet;)V

    .line 4397
    :cond_2
    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-lt v4, v5, :cond_3

    .line 4398
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    .line 4400
    :cond_3
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1620
    const/high16 v7, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/AppsCustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    .line 1621
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 4
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scale"

    .prologue
    .line 1625
    if-eqz p2, :cond_0

    .line 1626
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1627
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v0, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1628
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1629
    .local v1, oldBounds:Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1630
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1631
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1632
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1634
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v1           #oldBounds:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method private rollbackLastScreenItemsPosition(I)V
    .locals 11
    .parameter "page"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 3641
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rollbackLastScreenItemsPosition: page = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", occuredReorder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mOccuredReorder:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3645
    iget-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mOccuredReorder:Z

    if-nez v4, :cond_1

    .line 3679
    :cond_0
    :goto_0
    return-void

    .line 3649
    :cond_1
    if-eq p1, v8, :cond_0

    .line 3650
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewCellLayout;

    .line 3651
    .local v2, layout:Lcom/android/launcher2/PagedViewCellLayout;
    sget-object v4, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 3652
    .local v3, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevEmptyCell:[I

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v5, v5, v7

    aput v5, v4, v7

    .line 3653
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevEmptyCell:[I

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v5, v5, v9

    aput v5, v4, v9

    .line 3654
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3655
    .local v0, childCount:I
    move v1, v0

    .line 3657
    .local v1, index:I
    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isFull()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v4, :cond_2

    .line 3658
    add-int/lit8 v1, v0, -0x1

    .line 3659
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    iput-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    .line 3660
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3661
    iput-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevLastCell:Lcom/android/launcher2/PagedViewIcon;

    .line 3662
    iput-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    .line 3664
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevTargetCell:[I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v5, v1, v5

    aput v5, v4, v7

    .line 3665
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevTargetCell:[I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v5, v1, v5

    aput v5, v4, v9

    .line 3667
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevEmptyCell:[I

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevTargetCell:[I

    invoke-direct {p0, v4, v5, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->realTimeReorder([I[ILcom/android/launcher2/PagedViewCellLayout;)V

    .line 3669
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevEmptyCell:[I

    aput v8, v4, v7

    .line 3670
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevEmptyCell:[I

    aput v8, v4, v9

    .line 3672
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevTargetCell:[I

    aput v8, v4, v7

    .line 3673
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevTargetCell:[I

    aput v8, v4, v9

    .line 3675
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->updateItemLocationsInDatabase(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 3677
    iput-boolean v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mOccuredReorder:Z

    goto :goto_0
.end method

.method private saveLastCellInFullPage(Lcom/android/launcher2/PagedViewCellLayout;Z)V
    .locals 11
    .parameter "layout"
    .parameter "dragFromOtherScreen"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3371
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v5, :cond_0

    .line 3372
    const-string v5, "AppsCustomizePagedView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveLastCellInFullPage mLastCell = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3412
    :goto_0
    return-void

    .line 3376
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/AppsCustomizePagedView;->indexToPage(I)I

    move-result v3

    .line 3377
    .local v3, page:I
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 3378
    .local v4, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewCellLayout;->getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3379
    .local v0, childCount:I
    move v1, v0

    .line 3382
    .local v1, index:I
    invoke-virtual {v4}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isFull()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3383
    add-int/lit8 v1, v0, -0x1

    .line 3384
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v5, v6}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PagedViewIcon;

    iput-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    .line 3385
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 3387
    .local v2, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    iput-object v6, v5, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cell:Landroid/view/View;

    .line 3388
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iput v6, v5, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    .line 3389
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget v6, v2, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iput v6, v5, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    .line 3390
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget v6, v6, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellY:I

    iget v7, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    mul-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget v7, v7, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cellX:I

    add-int/2addr v6, v7

    iput v6, v5, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->pos:I

    .line 3392
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3395
    const-string v5, "AppsCustomizePagedView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveLastCellInFullpage page = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mLastCell = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mLastCellInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCellInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    .end local v2           #lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    :cond_1
    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    aget v5, v5, v9

    if-ne v5, v10, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    aget v5, v5, v8

    if-ne v5, v10, :cond_2

    .line 3403
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v6, v1, v6

    aput v6, v5, v9

    .line 3404
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    iget v6, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v6, v1, v6

    aput v6, v5, v8

    .line 3405
    iput-boolean v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mOccuredReorder:Z

    .line 3409
    :cond_2
    const-string v5, "AppsCustomizePagedView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveLastCellInFullpage mEmptyCell[0] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mEmptyCell[1] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setVisibilityOnChildren(Landroid/view/ViewGroup;I)V
    .locals 3
    .parameter "layout"
    .parameter "visibility"

    .prologue
    .line 1440
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1441
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1442
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1444
    :cond_0
    return-void
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 1447
    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setCellCount(II)V

    .line 1448
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutWidthGap:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 1449
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 1456
    const/16 v2, 0x8

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 1457
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1458
    .local v1, widthSpec:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1459
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1460
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1461
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->setVisibilityOnChildren(Landroid/view/ViewGroup;I)V

    .line 1462
    return-void
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V
    .locals 7
    .parameter "layout"

    .prologue
    const/high16 v6, -0x8000

    .line 1608
    iget v2, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    iget v3, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    iget v5, p0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1613
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1614
    .local v1, widthSpec:I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1615
    .local v0, heightSpec:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageContentWidth()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1616
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1617
    return-void
.end method

.method private showApp(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    .line 4047
    iget v2, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 4050
    .local v2, prevScreen:I
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->findFirstEmptyPosition(Lcom/android/launcher2/ApplicationInfo;)I

    move-result v1

    .line 4052
    .local v1, page:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 4053
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->addNewAppsPageLayout()I

    move-result v0

    .line 4055
    .local v0, newPage:I
    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppToNewPage(Lcom/android/launcher2/ApplicationInfo;I)V

    .line 4059
    .end local v0           #newPage:I
    :goto_0
    return-void

    .line 4057
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->addApp(Lcom/android/launcher2/ApplicationInfo;I)V

    goto :goto_0
.end method

.method private showApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 4031
    .local p1, showAppsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4032
    .local v1, appsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4033
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 4034
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->showApp(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4037
    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->updateItemInDatabase(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4032
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4039
    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    return-void
.end method

.method private touchInDeleteArea(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 4683
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 4684
    .local v1, deleteButtonWidth:I
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeleteButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4685
    .local v0, deleteButtonHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 4686
    .local v2, eventx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 4688
    .local v3, eventy:I
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeleteMarginleft:I

    add-int/lit8 v4, v4, -0x8

    if-lt v2, v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeleteMarginleft:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x8

    if-gt v2, v4, :cond_0

    add-int/lit8 v4, v3, 0x8

    if-ltz v4, :cond_0

    add-int/lit8 v4, v0, 0x8

    if-gt v3, v4, :cond_0

    .line 4692
    const/4 v4, 0x1

    .line 4694
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateAllAppsPage()V
    .locals 8

    .prologue
    .line 4434
    sget-object v7, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 4436
    .local v6, pageSize:I
    if-nez v6, :cond_0

    .line 4437
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->addNewAppsPageLayout()I

    .line 4441
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_2

    .line 4442
    sget-object v7, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    .line 4443
    .local v5, pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    iget-object v0, v5, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    .line 4444
    .local v0, allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4445
    .local v1, appCount:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 4446
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 4447
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    iput v2, v3, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 4448
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->updateItemInDatabase(Lcom/android/launcher2/ApplicationInfo;)V

    .line 4445
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4441
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4451
    .end local v0           #allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v1           #appCount:I
    .end local v4           #j:I
    .end local v5           #pageInfo:Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
    :cond_2
    return-void
.end method

.method private updateCurrentTab(I)V
    .locals 5
    .parameter "currentPage"

    .prologue
    .line 1406
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    .line 1408
    .local v0, tabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCurrentTab: currentPage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentPage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mNumAppsPages = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",tabHost = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 1415
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1416
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-lt p1, v2, :cond_1

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1422
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->updateEditAndHideIcon(Z)V

    .line 1423
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 1434
    .end local v1           #tag:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1424
    .restart local v1       #tag:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1429
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-boolean v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->updateEditAndHideIcon(Z)V

    .line 1430
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    goto :goto_0
.end method

.method private updateItemInDatabase(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 3594
    const-string v1, "AppsCustomizePagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateItemLocationsInDatabase: info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3597
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    .line 3598
    .local v0, model:Lcom/android/launcher2/LauncherModel;
    if-eqz p1, :cond_0

    .line 3599
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    iget v4, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->moveAllAppsItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ApplicationInfo;III)V

    .line 3601
    :cond_0
    return-void
.end method

.method private updateItemPositionAfterDrop(Lcom/android/launcher2/PagedViewCellLayout;Landroid/view/View;I)V
    .locals 10
    .parameter "layout"
    .parameter "cell"
    .parameter "screen"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 3325
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 3327
    .local v9, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v0, v0, v7

    iput v0, v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 3328
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v0, v0, v5

    iput v0, v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 3329
    iput v5, v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 3330
    iput v5, v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 3332
    iget v0, v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    mul-int/2addr v0, v1

    iget v1, v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    add-int v8, v0, v1

    .line 3333
    .local v8, childId:I
    invoke-virtual {p2, v8}, Landroid/view/View;->setId(I)V

    .line 3336
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateItemPositionAfterDrop: layout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cell = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", childId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v3, v0, v7

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v4, v0, v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/AppsCustomizePagedView;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 3344
    iget v0, v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v1, v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->modifyAppPosition(Landroid/view/View;III)V

    .line 3348
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLastCell:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_0

    .line 3349
    invoke-direct {p0, p3}, Lcom/android/launcher2/AppsCustomizePagedView;->processLastCellInFullPage(I)V

    .line 3353
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateItemLocationsInDatabase(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 3356
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->getAppsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    .line 3358
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->addNewAppsPageLayout()I

    .line 3359
    invoke-virtual {p0, p3}, Lcom/android/launcher2/PagedView;->invalidatePageData(I)V

    .line 3361
    :cond_1
    return-void
.end method

.method private updatePageCounts()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 571
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePageCounts: mSupportCycleSliding = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportCycleSliding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNumAppsPages = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mNumWidgetPages = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportCycleSliding:Z

    if-eqz v2, :cond_1

    .line 577
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    .line 578
    .local v0, tabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, tag:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 581
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    iput v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 583
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->updateWidgetsPageCounts(Z)V

    .line 595
    .end local v0           #tabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    .end local v1           #tag:Ljava/lang/String;
    :goto_0
    return-void

    .line 585
    .restart local v0       #tabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    .restart local v1       #tag:Ljava/lang/String;
    :cond_0
    iput v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 586
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updateAppsPageCounts()V

    goto :goto_0

    .line 593
    .end local v0           #tabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    .end local v1           #tag:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/launcher2/AppsCustomizePagedView;->updateWidgetsPageCounts(Z)V

    .line 594
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updateAppsPageCounts()V

    goto :goto_0
.end method

.method private updatePagesWhenNeedToRemove(Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4371
    .local p1, pages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeHidePage(Ljava/util/HashSet;)V

    .line 4372
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updateAllAppsPage()V

    .line 4373
    return-void
.end method

.method private updateUnreadNumInAppInfo(Landroid/content/ComponentName;I)V
    .locals 4
    .parameter "component"
    .parameter "unreadNum"

    .prologue
    .line 2649
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2650
    .local v2, size:I
    const/4 v0, 0x0

    .line 2651
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2652
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 2653
    .restart local v0       #appInfo:Lcom/android/launcher2/ApplicationInfo;
    iget-object v3, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2654
    iput p2, v0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    .line 2651
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2657
    :cond_1
    return-void
.end method

.method public static updateUnreadNumInAppInfo(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 2665
    .local p0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2666
    .local v2, size:I
    const/4 v0, 0x0

    .line 2667
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2668
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 2669
    .restart local v0       #appInfo:Lcom/android/launcher2/ApplicationInfo;
    iget-object v3, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v3}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadNumberOfComponent(Landroid/content/ComponentName;)I

    move-result v3

    iput v3, v0, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    .line 2667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2671
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DropTarget$DragObject;)Z
    .locals 3
    .parameter "dragObject"

    .prologue
    .line 2957
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptDrop: edit mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",dragObject = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2960
    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method public addApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 2270
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addApps: mSupportEditAndHideApps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-nez v0, :cond_0

    .line 2275
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 2276
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 2282
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 2283
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 2284
    return-void

    .line 2278
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAddedApps(Ljava/util/ArrayList;)V

    .line 2279
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->notifyPageListChanged()V

    goto :goto_0
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1128
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginDragging: v = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return v0

    .line 1133
    :cond_1
    instance-of v2, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v2, :cond_2

    .line 1134
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->beginDraggingApplication(Landroid/view/View;)V

    .line 1137
    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1138
    goto :goto_0

    .line 1140
    :cond_2
    instance-of v2, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v2, :cond_3

    .line 1141
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->beginDraggingWidget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1148
    :cond_3
    new-instance v0, Lcom/android/launcher2/AppsCustomizePagedView$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppsCustomizePagedView$4;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v1

    .line 1165
    goto :goto_0
.end method

.method public cleanUpShortPress(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    if-nez v0, :cond_0

    .line 1035
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 1037
    :cond_0
    return-void
.end method

.method public clearAllPages()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1318
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1319
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1321
    .local v0, count:I
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearAllPages: count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1325
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 1326
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher2/PagedViewGridLayout;

    if-eqz v3, :cond_1

    .line 1327
    check-cast v2, Lcom/android/launcher2/PagedViewGridLayout;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewGridLayout;->removeAllViewsOnPage()V

    .line 1328
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1324
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1330
    .restart local v2       #v:Landroid/view/View;
    :cond_1
    instance-of v3, v2, Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v3, :cond_0

    .line 1331
    check-cast v2, Lcom/android/launcher2/PagedViewCellLayout;

    .end local v2           #v:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 1332
    iget-object v3, p0, Lcom/android/launcher2/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1335
    :cond_2
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "ev"

    .prologue
    .line 838
    return-void
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 2445
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mApps"

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2446
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "mWidgets"

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->dumpAppWidgetProviderInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2447
    return-void
.end method

.method public enterEditMode()V
    .locals 3

    .prologue
    .line 2721
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterEditMode: mNumWidgetPages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNumAppsPages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurrentPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 2729
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->addNewEmptyAppsPage()I

    .line 2730
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(I)V

    .line 2733
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 2734
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 2735
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 2736
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragController;->addDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 2738
    invoke-static {}, Lcom/android/launcher2/Launcher;->enablePendingAppsQueue()V

    .line 2739
    return-void
.end method

.method public exitEditMode()V
    .locals 3

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 2747
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->removeEmptyPages()V

    .line 2750
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitEditMode: mNumWidgetPages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNumAppsPages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 2754
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedView;->invalidatePageData(I)V

    .line 2757
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setDragScoller(Lcom/android/launcher2/DragScroller;)V

    .line 2758
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setMoveTarget(Landroid/view/View;)V

    .line 2759
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 2760
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragController;->removeDragListener(Lcom/android/launcher2/DragController$DragListener;)V

    .line 2762
    invoke-static {p0}, Lcom/android/launcher2/Launcher;->disableAndFlushPendingAppsQueue(Lcom/android/launcher2/AppsCustomizePagedView;)V

    .line 2763
    return-void
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 5
    .parameter "page"

    .prologue
    .line 2501
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2502
    .local v0, count:I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2503
    .local v2, windowSize:I
    add-int/lit8 v3, p1, -0x2

    sub-int v4, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isSupportCycleSlidingScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2505
    .local v1, windowMinIndex:I
    return v1

    .line 2503
    .end local v1           #windowMinIndex:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 5
    .parameter "page"

    .prologue
    .line 2509
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2510
    .local v0, count:I
    const/4 v3, 0x5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2511
    .local v2, windowSize:I
    add-int/lit8 v3, p1, 0x2

    add-int/lit8 v4, v2, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isSupportCycleSlidingScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0           #count:I
    :goto_0
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2513
    .local v1, windowMaxIndex:I
    return v1

    .line 2511
    .end local v1           #windowMaxIndex:I
    .restart local v0       #count:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 1189
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher2/PagedViewCellLayout;
    .locals 1

    .prologue
    .line 3162
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewCellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2518
    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    .line 2519
    .local v1, page:I
    :goto_0
    const v2, 0x7f0d0060

    .line 2520
    .local v2, stringId:I
    const/4 v0, 0x0

    .line 2522
    .local v0, count:I
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v3, :cond_1

    .line 2523
    const v2, 0x7f0d0062

    .line 2524
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 2531
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2518
    .end local v0           #count:I
    .end local v1           #page:I
    .end local v2           #stringId:I
    :cond_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    goto :goto_0

    .line 2526
    .restart local v0       #count:I
    .restart local v1       #page:I
    .restart local v2       #stringId:I
    :cond_1
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int/2addr v1, v3

    .line 2527
    const v2, 0x7f0d0063

    .line 2528
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    goto :goto_1
.end method

.method getDefaultOptionsForWidget(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 9
    .parameter "launcher"
    .parameter "info"

    .prologue
    .line 889
    const/4 v1, 0x0

    .line 890
    .local v1, options:Landroid/os/Bundle;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 891
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v6, p2, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v7, p2, Lcom/android/launcher2/ItemInfo;->spanY:I

    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v5, v6, v7, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidgetSizeRanges(Lcom/android/launcher2/Launcher;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 892
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v6, p2, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 895
    .local v2, padding:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    .line 896
    .local v0, density:F
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v3, v5

    .line 897
    .local v3, xPaddingDips:I
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v4, v5

    .line 899
    .local v4, yPaddingDips:I
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #options:Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 900
    .restart local v1       #options:Landroid/os/Bundle;
    const-string v5, "appWidgetMinWidth"

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 902
    const-string v5, "appWidgetMinHeight"

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 904
    const-string v5, "appWidgetMaxWidth"

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 906
    const-string v5, "appWidgetMaxHeight"

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 909
    .end local v0           #density:F
    .end local v2           #padding:Landroid/graphics/Rect;
    .end local v3           #xPaddingDips:I
    .end local v4           #yPaddingDips:I
    :cond_0
    return-object v1
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DropTarget$DragObject;)Lcom/android/launcher2/DropTarget;
    .locals 3
    .parameter "dragObject"

    .prologue
    .line 2966
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDropTargetDelegate: dragObject = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2968
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "outRect"

    .prologue
    const/4 v2, 0x0

    .line 2973
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2976
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHitRect: outRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2978
    return-void
.end method

.method public getLocationInDragLayer([I)V
    .locals 3
    .parameter "loc"

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 2984
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocationInDragLayer: loc = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    return-void
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 2086
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->indexToPage(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageContentWidth()I
    .locals 1

    .prologue
    .line 2184
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    return v0
.end method

.method getPageForComponent(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 552
    if-gez p1, :cond_0

    const/4 v1, 0x0

    .line 559
    :goto_0
    return v1

    .line 554
    :cond_0
    sget-object v1, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 555
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v0, v1, v2

    .line 556
    .local v0, numItemsPerPage:I
    div-int v1, p1, v0

    goto :goto_0

    .line 558
    .end local v0           #numItemsPerPage:I
    :cond_1
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v0, v1, v2

    .line 559
    .restart local v0       #numItemsPerPage:I
    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v2, p1, v2

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    .prologue
    .line 543
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 546
    :cond_0
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .parameter "screenCenter"
    .parameter "v"
    .parameter "page"

    .prologue
    .line 2685
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isSupportCycleSlidingScreen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2686
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 2687
    .local v2, halfScreenSize:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2688
    .local v0, childCount:I
    move v1, v2

    .line 2689
    .local v1, firstCenter:I
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->getChildOffset(I)I

    move-result v5

    add-int v3, v5, v2

    .line 2690
    .local v3, lastCenter:I
    add-int v4, v3, v2

    .line 2694
    .local v4, totalWidth:I
    if-nez p3, :cond_1

    .line 2696
    if-lt p1, v3, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 2697
    sub-int/2addr p1, v4

    .line 2706
    .end local v0           #childCount:I
    .end local v1           #firstCenter:I
    .end local v2           #halfScreenSize:I
    .end local v3           #lastCenter:I
    .end local v4           #totalWidth:I
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v5

    return v5

    .line 2699
    .restart local v0       #childCount:I
    .restart local v1       #firstCenter:I
    .restart local v2       #halfScreenSize:I
    .restart local v3       #lastCenter:I
    .restart local v4       #totalWidth:I
    :cond_1
    add-int/lit8 v5, v0, -0x1

    if-ne p3, v5, :cond_0

    .line 2700
    if-gt p1, v1, :cond_0

    .line 2701
    add-int/2addr p1, v4

    goto :goto_0
.end method

.method public iconPressed(Lcom/android/launcher2/PagedViewIcon;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewIcon;->resetDrawableState()V

    .line 2482
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    .line 2483
    return-void
.end method

.method protected indexToPage(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 2091
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 505
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->init()V

    .line 506
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/PagedView;->mCenterPagesVertically:Z

    .line 508
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 509
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 510
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0a000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->setDragSlopeThreshold(F)V

    .line 511
    return-void
.end method

.method invalidateAppPages(IZ)V
    .locals 3
    .parameter "currentPage"
    .parameter "immediateAndOnly"

    .prologue
    .line 2678
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateAppPages: currentPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", immediateAndOnly = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 2681
    return-void
.end method

.method public isDropEnabled()Z
    .locals 3

    .prologue
    .line 2991
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDropEnabled: edit mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2993
    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v0

    return v0
.end method

.method public isSupportCycleSlidingScreen()Z
    .locals 1

    .prologue
    .line 2711
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportCycleSliding:Z

    return v0
.end method

.method public needShowEditAndHideIcon()Z
    .locals 2

    .prologue
    .line 2771
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const-wide/16 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 777
    const-string v6, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick: v = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", v.getTag() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v6, "AppsCustomizePagedView.onClick"

    invoke-static {v11, v12, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 784
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->isSwitchingState()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 787
    :cond_1
    instance-of v6, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v6, :cond_4

    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 792
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v6, :cond_2

    .line 793
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewIcon;->lockDrawableState()V

    .line 799
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6, v10}, Lcom/android/launcher2/Launcher;->updateWallpaperVisibility(Z)V

    .line 800
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v7, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, p1, v7, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 825
    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_3
    :goto_1
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 802
    :cond_4
    instance-of v6, p1, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v6, :cond_3

    .line 804
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    if-eqz v6, :cond_5

    .line 805
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    .line 807
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d0021

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    .line 809
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 812
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v2, v6

    .line 813
    .local v2, offsetY:F
    const v6, 0x7f070015

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 814
    .local v3, p:Landroid/widget/ImageView;
    invoke-static {}, Lcom/android/launcher2/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 815
    .local v1, bounce:Landroid/animation/AnimatorSet;
    const-string v6, "translationY"

    new-array v7, v10, [F

    aput v2, v7, v9

    invoke-static {v3, v6, v7}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 816
    .local v5, tyuAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x7d

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 817
    const-string v6, "translationY"

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {v3, v6, v7}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 818
    .local v4, tydAnim:Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x64

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 819
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 820
    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 821
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1
.end method

.method protected onDataReady(II)V
    .locals 16
    .parameter "width"
    .parameter "height"

    .prologue
    .line 628
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v5, 0x1

    .line 630
    .local v5, isLandscape:Z
    :goto_0
    const v6, 0x7fffffff

    .line 631
    .local v6, maxCellCountX:I
    const v7, 0x7fffffff

    .line 632
    .local v7, maxCellCountY:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 633
    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v6

    .line 635
    :goto_1
    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v7

    .line 638
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    const/4 v12, -0x1

    if-le v11, v12, :cond_1

    .line 639
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountX:I

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 642
    :cond_1
    move v8, v7

    .line 643
    .local v8, maxWidgetCellCountY:I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    const/4 v12, -0x1

    if-le v11, v12, :cond_2

    .line 644
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mMaxAppCellCountY:I

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 649
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagedView;->mPageLayoutWidthGap:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mPageLayoutHeightGap:I

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 650
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 652
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-nez v11, :cond_3

    .line 653
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1, v6, v7}, Lcom/android/launcher2/PagedViewCellLayout;->calculateCellCount(IIII)V

    .line 654
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountX()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    .line 655
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedViewCellLayout;->getCellCountY()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    .line 657
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    const/high16 v12, -0x8000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 661
    .local v10, widthSpec:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    const/high16 v12, -0x8000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 662
    .local v2, heightSpec:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1, v6, v8}, Lcom/android/launcher2/PagedViewCellLayout;->calculateCellCount(IIII)V

    .line 663
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v11, v10, v2}, Landroid/view/View;->measure(II)V

    .line 664
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v11}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    .line 666
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v3

    .line 667
    .local v3, host:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-virtual {v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->isTransitioning()Z

    move-result v4

    .line 670
    .local v4, hostIsTransitioning:Z
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageForComponent(I)I

    move-result v9

    .line 672
    .local v9, page:I
    const-string v11, "AppsCustomizePagedView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onDataReady: height = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", width = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", isLandscape = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", page = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", hostIsTransitioning = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mContentWidth = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mContentWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mNumAppsPages = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mNumWidgetPages = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", this = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/4 v11, 0x0

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v4}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 683
    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDisableShowAllAppsCling:Z

    if-nez v11, :cond_4

    .line 684
    new-instance v11, Lcom/android/launcher2/AppsCustomizePagedView$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/launcher2/AppsCustomizePagedView$1;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 691
    :cond_4
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mDisableShowAllAppsCling:Z

    .line 694
    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/Launcher;->flushPendingAppsQueue(Lcom/android/launcher2/AppsCustomizePagedView;)V

    .line 695
    return-void

    .line 628
    .end local v2           #heightSpec:I
    .end local v3           #host:Lcom/android/launcher2/AppsCustomizeTabHost;
    .end local v4           #hostIsTransitioning:Z
    .end local v5           #isLandscape:Z
    .end local v6           #maxCellCountX:I
    .end local v7           #maxCellCountY:I
    .end local v8           #maxWidgetCellCountY:I
    .end local v9           #page:I
    .end local v10           #widthSpec:I
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 633
    .restart local v5       #isLandscape:Z
    .restart local v6       #maxCellCountX:I
    .restart local v7       #maxCellCountY:I
    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v6

    goto/16 :goto_1

    .line 635
    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v7

    goto/16 :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1309
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onDetachedFromWindow()V

    .line 1311
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "onDetachedFromWindow."

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1314
    return-void
.end method

.method public onDragEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3014
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd: mIsDragOccuring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIsDragOccuring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    iput-boolean v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIsDragOccuring:Z

    .line 3017
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation(Z)V

    .line 3018
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 5
    .parameter "d"

    .prologue
    const/4 v4, -0x1

    .line 2780
    const-string v1, "AppsCustomizePagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragEnter: d = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDragTargetLayout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v1}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragEnter()V

    .line 2786
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDropToLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 2787
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentDropLayout()Lcom/android/launcher2/PagedViewCellLayout;

    move-result-object v0

    .line 2788
    .local v0, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setCurrentDropLayout(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 2791
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPreviousTargetCell:[I

    const/4 v2, 0x0

    aput v4, v1, v2

    .line 2792
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPreviousTargetCell:[I

    const/4 v2, 0x1

    aput v4, v1, v2

    .line 2793
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 4
    .parameter "d"

    .prologue
    const/4 v1, 0x0

    .line 2844
    const-string v0, "AppsCustomizePagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragExit: mInScrollArea = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInScrollArea:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",d = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2847
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragEnforcer:Lcom/android/launcher2/DropTarget$DragEnforcer;

    invoke-virtual {v0}, Lcom/android/launcher2/DropTarget$DragEnforcer;->onDragExit()V

    .line 2850
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInScrollArea:Z

    if-eqz v0, :cond_0

    .line 2851
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentDropLayout()Lcom/android/launcher2/PagedViewCellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDropToLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 2852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInScrollArea:Z

    .line 2858
    :goto_0
    const-string v2, "AppsCustomizePagedView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragExit: drag source = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", drag info = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mDragTargetLayout = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", mIsPageMoving = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/launcher2/PagedView;->mIsPageMoving:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2862
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->setCurrentDropLayout(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 2863
    return-void

    .line 2854
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDropToLayout:Lcom/android/launcher2/PagedViewCellLayout;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2858
    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public onDragOver(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 11
    .parameter "d"

    .prologue
    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2801
    iget-boolean v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInScrollArea:Z

    if-eqz v1, :cond_1

    .line 2802
    const-string v1, "AppsCustomizePagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragOver scroll area: d = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    :cond_0
    :goto_0
    return-void

    .line 2806
    :cond_1
    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AppsCustomizePagedView;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v7

    .line 2807
    .local v7, r:[F
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentDropLayout()Lcom/android/launcher2/PagedViewCellLayout;

    move-result-object v0

    .line 2808
    .local v0, layout:Lcom/android/launcher2/PagedViewCellLayout;
    aget v1, v7, v9

    float-to-int v1, v1

    aget v2, v7, v8

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    move v3, v8

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/PagedViewCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    .line 2811
    const-string v1, "AppsCustomizePagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragOver: d = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTargetCell = ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    if-eq v1, v2, :cond_2

    .line 2816
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPreviousTargetCell:[I

    aput v10, v1, v9

    .line 2817
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPreviousTargetCell:[I

    aput v10, v1, v8

    .line 2818
    iput-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 2820
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    aput v10, v1, v9

    .line 2821
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    aput v10, v1, v8

    .line 2824
    invoke-direct {p0, v0, v8}, Lcom/android/launcher2/AppsCustomizePagedView;->saveLastCellInFullPage(Lcom/android/launcher2/PagedViewCellLayout;Z)V

    .line 2826
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setCurrentDropLayout(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 2829
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v1, v1, v9

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPreviousTargetCell:[I

    aget v2, v2, v9

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v1, v1, v8

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPreviousTargetCell:[I

    aget v2, v2, v8

    if-eq v1, v2, :cond_0

    .line 2830
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher2/Alarm;->cancelAlarm()V

    .line 2831
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mReorderAlarmListener:Lcom/android/launcher2/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Alarm;->setOnAlarmListener(Lcom/android/launcher2/OnAlarmListener;)V

    .line 2832
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mReorderAlarm:Lcom/android/launcher2/Alarm;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Alarm;->setAlarm(J)V

    .line 2833
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPreviousTargetCell:[I

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v2, v2, v9

    aput v2, v1, v9

    .line 2834
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPreviousTargetCell:[I

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v2, v2, v8

    aput v2, v1, v8

    goto/16 :goto_0
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 3
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 3004
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragStart: source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dragAction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mIsDragOccuring:Z

    .line 3008
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->lockScreenOrientation()V

    .line 3009
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V
    .locals 13
    .parameter "d"

    .prologue
    .line 2867
    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    iget v3, p1, Lcom/android/launcher2/DropTarget$DragObject;->xOffset:I

    iget v4, p1, Lcom/android/launcher2/DropTarget$DragObject;->yOffset:I

    iget-object v5, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewVisualCenter:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AppsCustomizePagedView;->getDragViewVisualCenter(IIIILcom/android/launcher2/DragView;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewVisualCenter:[F

    .line 2870
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v9

    .line 2872
    .local v9, host:Lcom/android/launcher2/AppsCustomizeTabHost;
    iget v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->x:I

    iget v1, p1, Lcom/android/launcher2/DropTarget$DragObject;->y:I

    invoke-virtual {v9, v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->isPointInEditTitleArea(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2873
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setCurrentDropLayout(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 2876
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDropToLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 2879
    .local v5, dropTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;
    if-eqz v5, :cond_1

    .line 2880
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewVisualCenter:[F

    const/4 v1, 0x0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2884
    :cond_1
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrop 1: drag view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dragInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dragSource  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/DropTarget$DragObject;->dragSource:Lcom/android/launcher2/DragSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dropTargetLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDragInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInScrollArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInScrollArea:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    if-eqz v0, :cond_9

    .line 2891
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget-object v7, v0, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2896
    .local v7, cell:Landroid/view/View;
    if-nez v5, :cond_a

    .line 2897
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 2898
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewVisualCenter:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragViewVisualCenter:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    float-to-int v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/AppsCustomizePagedView;->findNearestArea(IIIILcom/android/launcher2/PagedViewCellLayout;[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    .line 2905
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedViewCellLayout;->isExceedLastPosition([I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2906
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    invoke-virtual {v5, v0}, Lcom/android/launcher2/PagedViewCellLayout;->getLastPosition([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    .line 2909
    :cond_2
    if-eqz v5, :cond_7

    .line 2910
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-gez v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget v12, v0, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->screen:I

    .line 2913
    .local v12, screen:I
    :goto_1
    iget v0, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-eq v0, v12, :cond_3

    .line 2914
    invoke-virtual {p0, v12}, Lcom/android/launcher2/PagedView;->snapToPage(I)V

    .line 2918
    :cond_3
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrop 2: mCurrentPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",screen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTargetCell[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTargetCell[1]  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",child count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    invoke-virtual {p0, v12}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/PagedViewCellLayout;

    .line 2925
    .local v10, layout:Lcom/android/launcher2/PagedViewCellLayout;
    const/4 v8, 0x0

    .line 2926
    .local v8, child:Landroid/view/View;
    if-eqz v10, :cond_4

    .line 2927
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(II)Landroid/view/View;

    .line 2931
    :cond_4
    if-eqz v8, :cond_6

    .line 2932
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->screen:I

    if-eq v0, v12, :cond_5

    .line 2934
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout$CellInfo;->screen:I

    if-eq v0, v12, :cond_c

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v10, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->saveLastCellInFullPage(Lcom/android/launcher2/PagedViewCellLayout;Z)V

    .line 2937
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    invoke-direct {p0, v0, v1, v10}, Lcom/android/launcher2/AppsCustomizePagedView;->realTimeReorder([I[ILcom/android/launcher2/PagedViewCellLayout;)V

    .line 2940
    :cond_6
    invoke-direct {p0, v10, v7, v12}, Lcom/android/launcher2/AppsCustomizePagedView;->updateItemPositionAfterDrop(Lcom/android/launcher2/PagedViewCellLayout;Landroid/view/View;I)V

    .line 2941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mOccuredReorder:Z

    .line 2945
    .end local v8           #child:Landroid/view/View;
    .end local v10           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    .end local v12           #screen:I
    :cond_7
    if-eqz v7, :cond_8

    .line 2946
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/PagedViewCellLayout;

    .line 2947
    .local v11, parent:Lcom/android/launcher2/PagedViewCellLayout;
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2948
    invoke-virtual {v11, v7}, Lcom/android/launcher2/PagedViewCellLayout;->onDropChild(Landroid/view/View;)V

    .line 2950
    .end local v11           #parent:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 2952
    .end local v7           #cell:Landroid/view/View;
    :cond_9
    return-void

    .line 2901
    .restart local v7       #cell:Landroid/view/View;
    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    .line 2902
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    goto/16 :goto_0

    .line 2910
    :cond_b
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->indexToPage(I)I

    move-result v12

    goto/16 :goto_1

    .line 2934
    .restart local v8       #child:Landroid/view/View;
    .restart local v10       #layout:Lcom/android/launcher2/PagedViewCellLayout;
    .restart local v12       #screen:I
    :cond_c
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher2/DropTarget$DragObject;ZZ)V
    .locals 11
    .parameter "target"
    .parameter "d"
    .parameter "isFlingToDelete"
    .parameter "success"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1240
    const-string v8, "AppsCustomizePagedView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onDropCompleted: target = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", d = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isFlingToDelete = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", success = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mEmptyCell = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mEmptyCell:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "), mTargetCell = ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mTargetCell:[I

    aget v10, v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mDragInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragInfo:Lcom/android/launcher2/PagedViewCellLayout$CellInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mCurrentPage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    if-eqz p3, :cond_0

    .line 1288
    :goto_0
    return-void

    .line 1250
    :cond_0
    invoke-direct {p0, p1, v7, p4}, Lcom/android/launcher2/AppsCustomizePagedView;->endDragging(Landroid/view/View;ZZ)V

    .line 1254
    if-nez p4, :cond_5

    .line 1255
    const/4 v4, 0x0

    .line 1256
    .local v4, showOutOfSpaceMessage:Z
    instance-of v8, p1, Lcom/android/launcher2/Workspace;

    if-eqz v8, :cond_2

    .line 1257
    iget-object v8, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getCurrentWorkspaceScreen()I

    move-result v0

    .local v0, currentScreen:I
    move-object v5, p1

    .line 1258
    check-cast v5, Lcom/android/launcher2/Workspace;

    .line 1259
    .local v5, workspace:Lcom/android/launcher2/Workspace;
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 1260
    .local v3, layout:Lcom/android/launcher2/CellLayout;
    iget-object v2, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher2/ItemInfo;

    .line 1261
    .local v2, itemInfo:Lcom/android/launcher2/ItemInfo;
    if-eqz v3, :cond_1

    .line 1262
    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayout;->calculateSpans(Lcom/android/launcher2/ItemInfo;)V

    .line 1263
    const/4 v8, 0x0

    iget v9, v2, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v10, v2, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {v3, v8, v9, v10}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-nez v8, :cond_6

    move v4, v6

    .line 1268
    :cond_1
    :goto_1
    iget-object v6, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v6, :cond_2

    .line 1269
    iget-object v1, p2, Lcom/android/launcher2/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 1270
    .local v1, info:Lcom/android/launcher2/PendingAddWidgetInfo;
    iget-object v6, v1, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v5, v6}, Lcom/android/launcher2/PagedView;->searchIMTKWidget(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1271
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/Launcher;->showOnlyOneWidgetMessage(Lcom/android/launcher2/PendingAddWidgetInfo;)V

    .line 1275
    .end local v0           #currentScreen:I
    .end local v1           #info:Lcom/android/launcher2/PendingAddWidgetInfo;
    .end local v2           #itemInfo:Lcom/android/launcher2/ItemInfo;
    .end local v3           #layout:Lcom/android/launcher2/CellLayout;
    .end local v5           #workspace:Lcom/android/launcher2/Workspace;
    :cond_2
    if-eqz v4, :cond_3

    .line 1276
    iget-object v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage(Z)V

    .line 1280
    :cond_3
    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1281
    invoke-virtual {p0, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->onDrop(Lcom/android/launcher2/DropTarget$DragObject;)V

    .line 1284
    :cond_4
    iput-boolean v7, p2, Lcom/android/launcher2/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1286
    .end local v4           #showOutOfSpaceMessage:Z
    :cond_5
    invoke-direct {p0, p4}, Lcom/android/launcher2/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 1287
    iput-boolean v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    goto :goto_0

    .restart local v0       #currentScreen:I
    .restart local v2       #itemInfo:Lcom/android/launcher2/ItemInfo;
    .restart local v3       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v4       #showOutOfSpaceMessage:Z
    .restart local v5       #workspace:Lcom/android/launcher2/Workspace;
    :cond_6
    move v4, v7

    .line 1263
    goto :goto_1
.end method

.method public onEnterScrollArea(III)Z
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 3090
    const/4 v2, 0x0

    .line 3091
    .local v2, result:Z
    iput-boolean v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInScrollArea:Z

    .line 3092
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->getNextPage()I

    move-result v6

    if-nez p3, :cond_2

    move v3, v4

    :goto_0
    add-int v1, v6, v3

    .line 3093
    .local v1, page:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3096
    .local v0, childCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isSupportCycleSlidingScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3097
    if-ne p3, v5, :cond_3

    if-ne v1, v0, :cond_3

    .line 3098
    const/4 v1, 0x0

    .line 3105
    :cond_0
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->setCurrentDropLayout(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 3106
    if-ltz v1, :cond_1

    if-ge v1, v0, :cond_1

    .line 3107
    const/4 v2, 0x1

    .line 3111
    :cond_1
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEnterScrollArea: page = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    return v2

    .end local v0           #childCount:I
    .end local v1           #page:I
    :cond_2
    move v3, v5

    .line 3092
    goto :goto_0

    .line 3099
    .restart local v0       #childCount:I
    .restart local v1       #page:I
    :cond_3
    if-nez p3, :cond_0

    if-ne v1, v4, :cond_0

    .line 3100
    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 5

    .prologue
    .line 3123
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onExitScrollArea: mInScrollArea = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInScrollArea:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    const/4 v1, 0x0

    .line 3126
    .local v1, result:Z
    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInScrollArea:Z

    if-eqz v2, :cond_0

    .line 3127
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 3128
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getCurrentDropLayout()Lcom/android/launcher2/PagedViewCellLayout;

    move-result-object v0

    .line 3129
    .local v0, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->setCurrentDropLayout(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 3130
    const/4 v1, 0x1

    .line 3131
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInScrollArea:Z

    .line 3133
    .end local v0           #layout:Lcom/android/launcher2/PagedViewCellLayout;
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
    .line 2999
    return-void
.end method

.method public onFlingToDeleteCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1293
    const-string v0, "AppsCustomizePagedView"

    const-string v1, "onFlingToDeleteCompleted."

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->endDragging(Landroid/view/View;ZZ)V

    .line 1298
    invoke-direct {p0, v2}, Lcom/android/launcher2/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 1299
    iput-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDraggingWidget:Z

    .line 1300
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 829
    invoke-static {p1, p2, p3}, Lcom/android/launcher2/FocusHelper;->handleAppsCustomizeKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 7
    .parameter "l"
    .parameter "animated"
    .parameter "toWorkspace"

    .prologue
    const/4 v3, 0x0

    .line 1216
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLauncherTransitionEnd l = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", animated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", toWorkspace = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iput-boolean v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    .line 1221
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AsyncTaskPageData;

    .line 1222
    .local v0, d:Lcom/android/launcher2/AsyncTaskPageData;
    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->onSyncWidgetPageItems(Lcom/android/launcher2/AsyncTaskPageData;)V

    goto :goto_0

    .line 1224
    .end local v0           #d:Lcom/android/launcher2/AsyncTaskPageData;
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredSyncWidgetPageItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1225
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1226
    .local v2, r:Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 1229
    .end local v2           #r:Ljava/lang/Runnable;
    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-eqz v4, :cond_2

    .line 1230
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->needShowEditAndHideIcon()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Launcher;->updateEditAndHideIcon(Z)V

    .line 1232
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDeferredPrepareLoadWidgetPreviewsTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1233
    if-nez p3, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Lcom/android/launcher2/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1234
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 3
    .parameter "l"
    .parameter "animated"
    .parameter "toWorkspace"

    .prologue
    .line 1195
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLauncherTransitionPrepare l = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", animated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", toWorkspace = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mInTransition:Z

    .line 1200
    if-eqz p3, :cond_0

    .line 1201
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 1203
    :cond_0
    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher2/Launcher;ZZ)V
    .locals 0
    .parameter "l"
    .parameter "animated"
    .parameter "toWorkspace"

    .prologue
    .line 1207
    return-void
.end method

.method public onLauncherTransitionStep(Lcom/android/launcher2/Launcher;F)V
    .locals 0
    .parameter "l"
    .parameter "t"

    .prologue
    .line 1211
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 723
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 724
    .local v1, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 725
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isDataReady()Z

    move-result v2

    if-nez v2, :cond_0

    .line 726
    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppsHasSet:Z

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->setDataIsReady()V

    .line 728
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 729
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->onDataReady(II)V

    .line 733
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedView;->onMeasure(II)V

    .line 734
    return-void
.end method

.method public onPackagesUpdated()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 738
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 739
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v9}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v8

    .line 742
    .local v8, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const-string v9, "AppsCustomizePagedView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updatePackages: widgets size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    .local v5, shortcutsIntent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v5, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 747
    .local v4, shortcuts:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/appwidget/AppWidgetProviderInfo;

    .line 748
    .local v7, widget:Landroid/appwidget/AppWidgetProviderInfo;
    iget v9, v7, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    if-lez v9, :cond_1

    iget v9, v7, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    if-lez v9, :cond_1

    .line 750
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v9, v7}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v6

    .line 751
    .local v6, spanXY:[I
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v9, v7}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v2

    .line 752
    .local v2, minSpanXY:[I
    aget v9, v6, v12

    aget v10, v2, v12

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 753
    .local v1, minSpanX:I
    aget v9, v6, v13

    aget v10, v2, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 754
    .local v3, minSpanY:I
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v9

    if-gt v1, v9, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v9

    if-gt v3, v9, :cond_0

    .line 756
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 758
    :cond_0
    const-string v9, "AppsCustomizePagedView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Widget "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " can not fit on this device ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), min span is ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), span is ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v11, v6, v13

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 763
    .end local v1           #minSpanX:I
    .end local v2           #minSpanXY:[I
    .end local v3           #minSpanY:I
    .end local v6           #spanXY:[I
    :cond_1
    const-string v9, "AppsCustomizePagedView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Widget "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has invalid dimensions ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 767
    .end local v7           #widget:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 768
    iget-object v9, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;

    iget-object v11, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v10, v11}, Lcom/android/launcher2/LauncherModel$WidgetAndShortcutNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 770
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 771
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 772
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 2189
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onPageEndMoving()V

    .line 2190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 2193
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 2194
    return-void
.end method

.method public onShortPress(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 978
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShortcutPress v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", v.getTag() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    .line 985
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->cleanupWidgetPreloading(Z)V

    .line 987
    :cond_0
    new-instance v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Lcom/android/launcher2/PendingAddWidgetInfo;)V

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 988
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCreateWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->preloadWidget(Lcom/android/launcher2/PendingAddWidgetInfo;)V

    .line 989
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 4667
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewIcon;->getDeleteButtonVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->touchInDeleteArea(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4672
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->onClickDeleteButton(Landroid/view/View;)V

    .line 4673
    const/4 v0, 0x1

    .line 4675
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected overScroll(F)V
    .locals 0
    .parameter "amount"

    .prologue
    .line 2176
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedView;->acceleratedOverScroll(F)V

    .line 2177
    return-void
.end method

.method public processAppsStateChanged()V
    .locals 8

    .prologue
    .line 4103
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->sShowAndHideApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4104
    .local v1, count:I
    if-nez v1, :cond_1

    .line 4105
    const-string v5, "AppsCustomizePagedView"

    const-string v6, "processAppsStateChanged with no state changed apps."

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4151
    :cond_0
    :goto_0
    return-void

    .line 4110
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4112
    .local v2, hideApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4114
    .local v4, showApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 4115
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->sShowAndHideApps:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 4116
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    iget-boolean v5, v0, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    if-eqz v5, :cond_2

    .line 4117
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4114
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4119
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4123
    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_3
    sget-object v5, Lcom/android/launcher2/AppsCustomizePagedView;->sShowAndHideApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 4126
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 4127
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lcom/android/launcher2/AppsCustomizePagedView;->hideOrRemoveApps(Ljava/util/ArrayList;Z)V

    .line 4131
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 4132
    invoke-direct {p0, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->showApps(Ljava/util/ArrayList;)V

    .line 4136
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->removeHidePages()V

    .line 4139
    const-string v5, "AppsCustomizePagedView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processAppsStateChanged end: mNumAppsPages = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mCurrentPage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",showApps = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",hideApps = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4144
    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PagedView;->invalidatePageData(I)V

    .line 4148
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 4149
    iget-object v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Workspace;->removeItemsByComponentName(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public processPendingAddApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 4160
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPendingAddApps: list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-nez v0, :cond_0

    .line 4164
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 4165
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 4170
    :goto_0
    return-void

    .line 4167
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAddedApps(Ljava/util/ArrayList;)V

    .line 4168
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->notifyPageListChanged()V

    goto :goto_0
.end method

.method public processPendingPost()V
    .locals 3

    .prologue
    .line 4215
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPendingPost: this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4218
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 4219
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 4220
    return-void
.end method

.method public processPendingRemoveApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 4196
    .local p1, packageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPendingRemoveApps: packageNames = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4199
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithPackageNameWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 4201
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-nez v0, :cond_0

    .line 4202
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 4208
    :goto_0
    return-void

    .line 4204
    :cond_0
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sRemovedApps:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->removeDisabledApps(Ljava/util/ArrayList;)V

    .line 4205
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->notifyPageListChanged()V

    .line 4206
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sRemovedApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public processPendingUpdateApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 4179
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPendingUpdateApps: list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4182
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-nez v0, :cond_0

    .line 4183
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 4184
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 4185
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 4187
    :cond_0
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 2370
    .local p1, packageNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeApps: packageNames = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sRemovedApps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->sRemovedApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithPackageNameWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 2376
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-nez v0, :cond_0

    .line 2377
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 2383
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 2384
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 2385
    return-void

    .line 2379
    :cond_0
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sRemovedApps:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->removeDisabledApps(Ljava/util/ArrayList;)V

    .line 2380
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->notifyPageListChanged()V

    .line 2381
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sRemovedApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public reorderApps()V
    .locals 9

    .prologue
    .line 2539
    const-string v6, "AppsCustomizePagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reorderApps: mApps = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2541
    sget-object v6, Lcom/android/launcher2/AllAppsList;->sTopPackages:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/launcher2/AllAppsList;->sTopPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2571
    :cond_0
    return-void

    .line 2546
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0x2a

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2549
    .local v1, dataReorder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    sget-object v6, Lcom/android/launcher2/AllAppsList;->sTopPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AllAppsList$TopPackage;

    .line 2550
    .local v5, tp:Lcom/android/launcher2/AllAppsList$TopPackage;
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 2551
    .local v0, ai:Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/launcher2/AllAppsList$TopPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/launcher2/AllAppsList$TopPackage;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2553
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2554
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2560
    .end local v0           #ai:Lcom/android/launcher2/ApplicationInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #tp:Lcom/android/launcher2/AllAppsList$TopPackage;
    :cond_4
    sget-object v6, Lcom/android/launcher2/AllAppsList;->sTopPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AllAppsList$TopPackage;

    .line 2561
    .restart local v5       #tp:Lcom/android/launcher2/AllAppsList$TopPackage;
    const/4 v4, 0x0

    .line 2562
    .local v4, newIndex:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 2563
    .restart local v0       #ai:Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/launcher2/AllAppsList$TopPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/launcher2/AllAppsList$TopPackage;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2565
    iget v6, v5, Lcom/android/launcher2/AllAppsList$TopPackage;->order:I

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sget-object v7, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2566
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 6

    .prologue
    .line 2408
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    .line 2410
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v1

    .line 2411
    .local v1, tabHost:Lcom/android/launcher2/AppsCustomizeTabHost;
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 2415
    .local v2, tag:Ljava/lang/String;
    const/4 v0, 0x0

    .line 2416
    .local v0, needInvalidateForTabChanges:Z
    if-eqz v2, :cond_0

    .line 2417
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->getTabTagForContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2418
    sget-object v3, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AppsCustomizeTabHost;->setCurrentTabFromContent(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V

    .line 2419
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isSupportCycleSlidingScreen()Z

    move-result v0

    .line 2424
    :cond_0
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reset: tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mCurrentPage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNumWidgetPages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mNumAppsPages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", needInvalidateForTabChanges = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    if-eqz v0, :cond_1

    .line 2431
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 2434
    :cond_1
    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    .line 2435
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/PagedView;->invalidatePageData(I)V

    .line 2437
    :cond_3
    return-void
.end method

.method public resetDrawableState()V
    .locals 1

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    if-eqz v0, :cond_0

    .line 2487
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewIcon;->resetDrawableState()V

    .line 2488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPressedIcon:Lcom/android/launcher2/PagedViewIcon;

    .line 2490
    :cond_0
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 565
    if-gez p1, :cond_0

    .line 567
    :goto_0
    return-void

    .line 566
    :cond_0
    iput p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSaveInstanceStateItemIndex:I

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 14
    .parameter "screenCenter"

    .prologue
    const/high16 v13, 0x4000

    const/high16 v9, 0x3f80

    const/4 v12, 0x0

    .line 2097
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->screenScrolled(I)V

    .line 2105
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v1, v10, :cond_7

    .line 2106
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 2107
    .local v8, v:Landroid/view/View;
    if-eqz v8, :cond_1

    .line 2108
    invoke-virtual {p0, p1, v8, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v6

    .line 2110
    .local v6, scrollProgress:F
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mZInterpolator:Lcom/android/launcher2/Workspace$ZInterpolator;

    invoke-static {v6, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Workspace$ZInterpolator;->getInterpolation(F)F

    move-result v2

    .line 2112
    .local v2, interpolatedProgress:F
    sub-float v10, v9, v2

    sget v11, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v11, v2

    add-float v5, v10, v11

    .line 2114
    .local v5, scale:F
    invoke-static {v12, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float v7, v10, v11

    .line 2118
    .local v7, translationX:F
    cmpg-float v10, v6, v12

    if-gez v10, :cond_3

    .line 2119
    cmpg-float v10, v6, v12

    if-gez v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float v11, v9, v11

    invoke-virtual {v10, v11}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 2131
    .local v0, alpha:F
    :goto_1
    iget v10, p0, Lcom/android/launcher2/PagedView;->mDensity:F

    sget v11, Lcom/android/launcher2/AppsCustomizePagedView;->CAMERA_DISTANCE:F

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setCameraDistance(F)V

    .line 2132
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 2133
    .local v4, pageWidth:I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 2135
    .local v3, pageHeight:I
    sget-boolean v10, Lcom/android/launcher2/AppsCustomizePagedView;->PERFORM_OVERSCROLL_ROTATION:Z

    if-eqz v10, :cond_0

    .line 2136
    if-nez v1, :cond_4

    cmpg-float v10, v6, v12

    if-gez v10, :cond_4

    .line 2138
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 2139
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    neg-float v10, v10

    mul-float/2addr v10, v6

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotationY(F)V

    .line 2140
    const/high16 v5, 0x3f80

    .line 2141
    const/high16 v0, 0x3f80

    .line 2143
    const/4 v7, 0x0

    .line 2159
    :cond_0
    :goto_2
    invoke-virtual {v8, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 2160
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleX(F)V

    .line 2161
    invoke-virtual {v8, v5}, Landroid/view/View;->setScaleY(F)V

    .line 2162
    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    .line 2166
    cmpl-float v10, v0, v12

    if-nez v10, :cond_6

    .line 2167
    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2105
    .end local v0           #alpha:F
    .end local v2           #interpolatedProgress:F
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    .end local v5           #scale:F
    .end local v6           #scrollProgress:F
    .end local v7           #translationX:F
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .restart local v2       #interpolatedProgress:F
    .restart local v5       #scale:F
    .restart local v6       #scrollProgress:F
    .restart local v7       #translationX:F
    :cond_2
    move v0, v9

    .line 2119
    goto :goto_1

    .line 2123
    :cond_3
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLeftScreenAlphaInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v11, v9, v6

    invoke-virtual {v10, v11}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .restart local v0       #alpha:F
    goto :goto_1

    .line 2144
    .restart local v3       #pageHeight:I
    .restart local v4       #pageWidth:I
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_5

    cmpl-float v10, v6, v12

    if-lez v10, :cond_5

    .line 2146
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_PIVOT:F

    sub-float v10, v9, v10

    int-to-float v11, v4

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 2147
    sget v10, Lcom/android/launcher2/AppsCustomizePagedView;->TRANSITION_MAX_ROTATION:F

    neg-float v10, v10

    mul-float/2addr v10, v6

    invoke-virtual {v8, v10}, Landroid/view/View;->setRotationY(F)V

    .line 2148
    const/high16 v5, 0x3f80

    .line 2149
    const/high16 v0, 0x3f80

    .line 2151
    const/4 v7, 0x0

    goto :goto_2

    .line 2153
    :cond_5
    int-to-float v10, v3

    div-float/2addr v10, v13

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotY(F)V

    .line 2154
    int-to-float v10, v4

    div-float/2addr v10, v13

    invoke-virtual {v8, v10}, Landroid/view/View;->setPivotX(F)V

    .line 2155
    invoke-virtual {v8, v12}, Landroid/view/View;->setRotationY(F)V

    goto :goto_2

    .line 2168
    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_1

    .line 2169
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 2173
    .end local v0           #alpha:F
    .end local v2           #interpolatedProgress:F
    .end local v3           #pageHeight:I
    .end local v4           #pageWidth:I
    .end local v5           #scale:F
    .end local v6           #scrollProgress:F
    .end local v7           #translationX:F
    .end local v8           #v:Landroid/view/View;
    :cond_7
    return-void
.end method

.method public scrollLeft()V
    .locals 4

    .prologue
    .line 3022
    iget-boolean v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportCycleSliding:Z

    if-eqz v1, :cond_1

    .line 3023
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    .line 3025
    .local v0, scrollFinished:Z
    const-string v1, "AppsCustomizePagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollLeft: mCurrentPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNextPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scrollFinished = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    if-eqz v0, :cond_3

    .line 3029
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-lez v1, :cond_2

    .line 3030
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3031
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3038
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->rollbackLastScreenItemsPosition(I)V

    .line 3050
    .end local v0           #scrollFinished:Z
    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->scrollLeft()V

    .line 3051
    return-void

    .line 3032
    .restart local v0       #scrollFinished:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isSupportCycleSlidingScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-nez v1, :cond_0

    .line 3034
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3035
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    goto :goto_0

    .line 3041
    :cond_3
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    if-lez v1, :cond_1

    .line 3042
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3043
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3045
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->rollbackLastScreenItemsPosition(I)V

    goto :goto_1
.end method

.method public scrollRight()V
    .locals 4

    .prologue
    .line 3055
    iget-boolean v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportCycleSliding:Z

    if-eqz v1, :cond_1

    .line 3056
    iget-object v1, p0, Lcom/android/launcher2/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    .line 3058
    .local v0, scrollFinished:Z
    const-string v1, "AppsCustomizePagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollRight: mCurrentPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNextPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scrollFinished = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    if-eqz v0, :cond_3

    .line 3062
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 3063
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3064
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3071
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->rollbackLastScreenItemsPosition(I)V

    .line 3082
    .end local v0           #scrollFinished:Z
    :cond_1
    :goto_1
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->scrollRight()V

    .line 3083
    return-void

    .line 3065
    .restart local v0       #scrollFinished:Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->isSupportCycleSlidingScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3067
    iget v1, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3068
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    goto :goto_0

    .line 3073
    :cond_3
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 3074
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mPrevDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3075
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3077
    iget v1, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->rollbackLastScreenItemsPosition(I)V

    goto :goto_1
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 4
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
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v3, 0x1

    .line 2227
    sput-object p1, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    .line 2229
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setApps : mApps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAppsHasSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppsHasSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    iput-boolean v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mAppsHasSet:Z

    .line 2234
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-nez v0, :cond_1

    .line 2235
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getAppNameComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2236
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 2243
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/AppsCustomizeTabHost;->getContentVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2244
    iput-boolean v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDisableShowAllAppsCling:Z

    .line 2245
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->getTabHost()Lcom/android/launcher2/AppsCustomizeTabHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppsCustomizeTabHost;->setContentVisibility(I)V

    .line 2248
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 2249
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 2250
    return-void

    .line 2238
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->initAllAppsPage()V

    goto :goto_0
.end method

.method public setContentType(Lcom/android/launcher2/AppsCustomizePagedView$ContentType;)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1362
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Widgets:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher2/Launcher;->updateEditAndHideIcon(Z)V

    .line 1364
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1365
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    .line 1373
    :cond_0
    :goto_0
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContentType: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNumAppsPages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNumWidgetPages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    return-void

    .line 1366
    :cond_1
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView$ContentType;->Applications:Lcom/android/launcher2/AppsCustomizePagedView$ContentType;

    if-ne p1, v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-boolean v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->updateEditAndHideIcon(Z)V

    .line 1368
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 1369
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedView;->invalidatePageData(IZ)V

    goto :goto_0
.end method

.method setCurrentDropLayout(Lcom/android/launcher2/PagedViewCellLayout;)V
    .locals 3
    .parameter "layout"

    .prologue
    .line 3143
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentDropLayout layout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDragTargetLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3146
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v0, :cond_0

    .line 3147
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayout;->onDragExit()V

    .line 3150
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 3152
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    if-eqz v0, :cond_1

    .line 3153
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragTargetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayout;->onDragEnter()V

    .line 3155
    :cond_1
    return-void
.end method

.method public setup(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/DragController;)V
    .locals 2
    .parameter "launcher"
    .parameter "dragController"

    .prologue
    .line 2200
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 2201
    iput-object p2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    .line 2202
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2203
    .local v0, display:Landroid/view/Display;
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2204
    return-void
.end method

.method showAllAppsCling()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 699
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAllAppsCling: mHasShownAllAppsCling = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedView;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 703
    iput-boolean v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mHasShownAllAppsCling:Z

    .line 705
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 706
    .local v0, offset:[I
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedX:I

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mClingFocusedY:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellPosition(II)[I

    move-result-object v1

    .line 707
    .local v1, pos:[I
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher2/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 710
    aget v2, v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    aget v4, v0, v6

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v6

    .line 712
    aget v2, v1, v5

    aget v3, v0, v5

    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getDragLayer()Lcom/android/launcher2/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 714
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    aget v2, v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/Utilities;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v1, v5

    .line 717
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Launcher;->showFirstRunAllAppsCling([I)V

    .line 719
    .end local v0           #offset:[I
    .end local v1           #pos:[I
    :cond_1
    return-void
.end method

.method protected snapToPage(III)V
    .locals 6
    .parameter "whichPage"
    .parameter "delta"
    .parameter "duration"

    .prologue
    .line 1379
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;->snapToPage(III)V

    .line 1380
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->updateCurrentTab(I)V

    .line 1382
    const-string v3, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "snapToPage: whichPage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", delta = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1388
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/launcher2/AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1389
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppsCustomizeAsyncTask;

    .line 1390
    .local v2, task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    iget v1, v2, Lcom/android/launcher2/AppsCustomizeAsyncTask;->page:I

    .line 1391
    .local v1, pageIndex:I
    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ge v1, v3, :cond_1

    :cond_0
    iget v3, p0, Lcom/android/launcher2/PagedView;->mNextPage:I

    iget v4, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-ge v3, v4, :cond_2

    iget v3, p0, Lcom/android/launcher2/PagedView;->mCurrentPage:I

    if-gt v1, v3, :cond_2

    .line 1393
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->getThreadPriorityForPage(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 1395
    :cond_2
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 1400
    .end local v1           #pageIndex:I
    .end local v2           #task:Lcom/android/launcher2/AppsCustomizeAsyncTask;
    :cond_3
    iget v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v3, :cond_4

    .line 1401
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewCellLayout;

    iput-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mCurrentDropTarget:Lcom/android/launcher2/PagedViewCellLayout;

    .line 1403
    :cond_4
    return-void
.end method

.method public supportsFlingToDelete()Z
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x1

    return v0
.end method

.method public surrender()V
    .locals 0

    .prologue
    .line 2472
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 2473
    return-void
.end method

.method public syncAppsPageItems(IZ)V
    .locals 17
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 1466
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int v9, v13, v14

    .line 1467
    .local v9, numCells:I
    mul-int v10, p1, v9

    .line 1468
    .local v10, startIndex:I
    add-int v13, v10, v9

    sget-object v14, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1470
    .local v1, endIndex:I
    const-string v13, "AppsCustomizePagedView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "syncAppsPageItems: page = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", immediate = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", numCells = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", startIndex = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", endIndex = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", app size = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", child count = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", this = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PagedViewCellLayout;

    .line 1478
    .local v8, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 1479
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1481
    .local v4, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    move v2, v10

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1482
    sget-object v13, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ApplicationInfo;

    .line 1483
    .local v6, info:Lcom/android/launcher2/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f040003

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v8, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewIcon;

    .line 1485
    .local v3, icon:Lcom/android/launcher2/PagedViewIcon;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v3, v6, v13, v0}, Lcom/android/launcher2/PagedViewIcon;->applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;ZLcom/android/launcher2/PagedViewIcon$PressedCallback;)V

    .line 1486
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1487
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1488
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1489
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1491
    sub-int v5, v2, v10

    .line 1492
    .local v5, index:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v11, v5, v13

    .line 1493
    .local v11, x:I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v12, v5, v13

    .line 1494
    .local v12, y:I
    const/4 v13, -0x1

    new-instance v14, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v14, v11, v12, v15, v0}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v8, v3, v13, v2, v14}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    .line 1496
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1497
    iget-object v13, v6, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1500
    .end local v3           #icon:Lcom/android/launcher2/PagedViewIcon;
    .end local v5           #index:I
    .end local v6           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v11           #x:I
    .end local v12           #y:I
    :cond_0
    invoke-virtual {v8}, Lcom/android/launcher2/PagedViewCellLayout;->createHardwareLayers()V

    .line 1501
    return-void
.end method

.method public syncAppsPageItems(Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;IZ)V
    .locals 15
    .parameter "pageInfo"
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 3819
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    .line 3821
    .local v1, allApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedViewCellLayout;

    .line 3823
    .local v7, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v7}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 3824
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3825
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3827
    .local v4, images:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 3828
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ApplicationInfo;

    .line 3830
    .local v5, info:Lcom/android/launcher2/ApplicationInfo;
    const-string v10, "AppsCustomizePagedView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "syncAppsPageItems: i = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", info = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", page = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3833
    if-eqz v5, :cond_0

    iget-boolean v10, v5, Lcom/android/launcher2/ApplicationInfo;->isVisible:Z

    if-eqz v10, :cond_0

    .line 3834
    iget-object v10, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f040003

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewIcon;

    .line 3836
    .local v3, icon:Lcom/android/launcher2/PagedViewIcon;
    const/4 v10, 0x1

    invoke-virtual {v3, v5, v10, p0}, Lcom/android/launcher2/PagedViewIcon;->applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;ZLcom/android/launcher2/PagedViewIcon$PressedCallback;)V

    .line 3837
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3838
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3839
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3840
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3844
    invoke-static {}, Lcom/android/launcher2/Launcher;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-static {v5}, Lcom/android/launcher2/Utilities;->isSystemApp(Lcom/android/launcher2/ApplicationInfo;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3845
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/android/launcher2/PagedViewIcon;->setDeleteButtonVisibility(Z)V

    .line 3850
    :goto_1
    iget v10, v5, Lcom/android/launcher2/ApplicationInfo;->pos:I

    iget v11, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    rem-int v8, v10, v11

    .line 3851
    .local v8, x:I
    iget v10, v5, Lcom/android/launcher2/ApplicationInfo;->pos:I

    iget v11, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    div-int v9, v10, v11

    .line 3852
    .local v9, y:I
    const/4 v10, -0x1

    iget v11, v5, Lcom/android/launcher2/ApplicationInfo;->pos:I

    new-instance v12, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct {v12, v8, v9, v13, v14}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v7, v3, v10, v11, v12}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    .line 3856
    const-string v10, "AppsCustomizePagedView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "syncAppsPageItems info = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", page = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3859
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3860
    iget-object v10, v5, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3827
    .end local v3           #icon:Lcom/android/launcher2/PagedViewIcon;
    .end local v8           #x:I
    .end local v9           #y:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3847
    .restart local v3       #icon:Lcom/android/launcher2/PagedViewIcon;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/launcher2/PagedViewIcon;->setDeleteButtonVisibility(Z)V

    goto :goto_1

    .line 3864
    .end local v3           #icon:Lcom/android/launcher2/PagedViewIcon;
    .end local v5           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_2
    invoke-virtual {v7}, Lcom/android/launcher2/PagedViewCellLayout;->createHardwareLayers()V

    .line 3865
    return-void
.end method

.method public syncPageItems(IZ)V
    .locals 3
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 2066
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncPageItems: page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", immediate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNumAppsPages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSupportEditAndHideApps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",page size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    iget v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge p1, v0, :cond_1

    .line 2072
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-nez v0, :cond_0

    .line 2073
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->syncAppsPageItems(IZ)V

    .line 2081
    :goto_0
    return-void

    .line 2076
    :cond_0
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->syncAppsPageItems(Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;IZ)V

    goto :goto_0

    .line 2079
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V

    goto :goto_0
.end method

.method public syncPages()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 2033
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncPages: mNumWidgetPages = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mNumAppsPages = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2038
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->cancelAllTasks()V

    .line 2041
    iget-object v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->notifyPagesWereRecreated()V

    .line 2043
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2044
    .local v0, context:Landroid/content/Context;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    if-ge v2, v4, :cond_0

    .line 2045
    new-instance v3, Lcom/android/launcher2/PagedViewGridLayout;

    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v5, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    invoke-direct {v3, v0, v4, v5}, Lcom/android/launcher2/PagedViewGridLayout;-><init>(Landroid/content/Context;II)V

    .line 2047
    .local v3, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewGridLayout;)V

    .line 2048
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2044
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2052
    .end local v3           #layout:Lcom/android/launcher2/PagedViewGridLayout;
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget v4, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v1, v4, :cond_1

    .line 2053
    new-instance v3, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-direct {v3, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 2054
    .local v3, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher2/AppsCustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 2055
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2057
    const-string v4, "AppsCustomizePagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncPages: PagedViewCellLayout: i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",layout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2061
    .end local v3           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_1
    return-void
.end method

.method public syncWidgetPageItems(IZ)V
    .locals 24
    .parameter "page"
    .parameter "immediate"

    .prologue
    .line 1831
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int v19, v2, v3

    .line 1834
    .local v19, numItemsPerPage:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1835
    .local v9, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v11

    .line 1836
    .local v11, contentWidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingLeft:I

    sub-int v2, v11, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingRight:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    mul-int/2addr v3, v7

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    div-int v4, v2, v3

    .line 1838
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetSpacingLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->getContentHeight()I

    move-result v10

    .line 1839
    .local v10, contentHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingTop:I

    sub-int v2, v10, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PagedView;->mPageLayoutPaddingBottom:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    mul-int/2addr v3, v7

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    div-int v5, v2, v3

    .line 1843
    .local v5, cellHeight:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    sub-int v2, p1, v2

    mul-int v20, v2, v19

    .line 1844
    .local v20, offset:I
    move/from16 v13, v20

    .local v13, i:I
    :goto_0
    add-int v2, v20, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v13, v2, :cond_0

    .line 1845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1844
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1848
    :cond_0
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncWidgetPageItems: page = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", immediate = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", numItemsPerPage = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", contentWidth = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", cellWidth = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", contentHeight = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", cellHeight = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", offset = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", this = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewGridLayout;

    .line 1857
    .local v6, layout:Lcom/android/launcher2/PagedViewGridLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 1858
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncWidgetPageItems: cell count x = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewGridLayout;->getCellCountX()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", layout column count = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_5

    .line 1861
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 1862
    .local v21, rawInfo:Ljava/lang/Object;
    const/4 v12, 0x0

    .line 1863
    .local v12, createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040007

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/PagedViewWidget;

    .line 1865
    .local v23, widget:Lcom/android/launcher2/PagedViewWidget;
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_4

    move-object/from16 v14, v21

    .line 1867
    check-cast v14, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1868
    .local v14, info:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v12, Lcom/android/launcher2/PendingAddWidgetInfo;

    .end local v12           #createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v12, v14, v2, v3}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1871
    .restart local v12       #createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v2, v14}, Lcom/android/launcher2/Launcher;->getSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v22

    .line 1872
    .local v22, spanXY:[I
    const/4 v2, 0x0

    aget v2, v22, v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1873
    const/4 v2, 0x1

    aget v2, v22, v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 1874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v2, v14}, Lcom/android/launcher2/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v18

    .line 1875
    .local v18, minSpanXY:[I
    const/4 v2, 0x0

    aget v2, v18, v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->minSpanX:I

    .line 1876
    const/4 v2, 0x1

    aget v2, v18, v2

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->minSpanY:I

    .line 1878
    const/4 v2, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v2, v1}, Lcom/android/launcher2/PagedViewWidget;->applyFromAppWidgetProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;I[I)V

    .line 1879
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1880
    invoke-virtual/range {v23 .. v24}, Lcom/android/launcher2/PagedViewWidget;->setShortPressListener(Lcom/android/launcher2/PagedViewWidget$ShortPressListener;)V

    .line 1891
    .end local v14           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v18           #minSpanXY:[I
    .end local v22           #spanXY:[I
    :cond_1
    :goto_2
    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1892
    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1893
    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1894
    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1897
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    rem-int v15, v13, v2

    .line 1898
    .local v15, ix:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    div-int v16, v13, v2

    .line 1899
    .local v16, iy:I
    const-string v2, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncWidgetPageItems: i = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", ix = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", iy = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", mWidgetCountX = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    new-instance v17, Landroid/widget/GridLayout$LayoutParams;

    sget-object v2, Landroid/widget/GridLayout;->LEFT:Landroid/widget/GridLayout$Alignment;

    move/from16 v0, v16

    invoke-static {v0, v2}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    sget-object v3, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v15, v3}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 1904
    .local v17, lp:Landroid/widget/GridLayout$LayoutParams;
    move-object/from16 v0, v17

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1905
    move-object/from16 v0, v17

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1906
    const/16 v2, 0x33

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 1907
    if-lez v15, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetWidthGap:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1908
    :cond_2
    if-lez v16, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetHeightGap:I

    move-object/from16 v0, v17

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1909
    :cond_3
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1860
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1881
    .end local v15           #ix:I
    .end local v16           #iy:I
    .end local v17           #lp:Landroid/widget/GridLayout$LayoutParams;
    :cond_4
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_1

    move-object/from16 v14, v21

    .line 1883
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 1884
    .local v14, info:Landroid/content/pm/ResolveInfo;
    new-instance v12, Lcom/android/launcher2/PendingAddShortcutInfo;

    .end local v12           #createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v12, v2}, Lcom/android/launcher2/PendingAddShortcutInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 1885
    .restart local v12       #createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    const/4 v2, 0x1

    iput v2, v12, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 1886
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v12, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppsCustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v14}, Lcom/android/launcher2/PagedViewWidget;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    .line 1889
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1915
    .end local v12           #createItemInfo:Lcom/android/launcher2/PendingAddItemInfo;
    .end local v14           #info:Landroid/content/pm/ResolveInfo;
    .end local v21           #rawInfo:Ljava/lang/Object;
    .end local v23           #widget:Lcom/android/launcher2/PagedViewWidget;
    :cond_5
    new-instance v2, Lcom/android/launcher2/AppsCustomizePagedView$7;

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p1

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/AppsCustomizePagedView$7;-><init>(Lcom/android/launcher2/AppsCustomizePagedView;IILcom/android/launcher2/PagedViewGridLayout;ZILjava/util/ArrayList;)V

    invoke-virtual {v6, v2}, Lcom/android/launcher2/PagedViewGridLayout;->setOnLayoutListener(Ljava/lang/Runnable;)V

    .line 1947
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 2389
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateApps: list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-nez v0, :cond_0

    .line 2397
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 2398
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 2399
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->reorderApps()V

    .line 2402
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->updatePageCounts()V

    .line 2403
    invoke-direct {p0}, Lcom/android/launcher2/AppsCustomizePagedView;->invalidateOnDataChange()V

    .line 2404
    return-void
.end method

.method updateAppsPageCounts()V
    .locals 3

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportEditAndHideApps:Z

    if-nez v0, :cond_0

    .line 600
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    .line 606
    :goto_0
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAppsPageCounts end: mNumWidgetPages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNumAppsPages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCellCountX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCellCountY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/PagedView;->mCellCountY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mApps.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    return-void

    .line 602
    :cond_0
    sget-object v0, Lcom/android/launcher2/AppsCustomizePagedView;->sAllAppsPage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    goto :goto_0
.end method

.method public updateAppsUnread()V
    .locals 7

    .prologue
    .line 2619
    sget-object v6, Lcom/android/launcher2/AppsCustomizePagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/android/launcher2/AppsCustomizePagedView;->updateUnreadNumInAppInfo(Ljava/util/ArrayList;)V

    .line 2621
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v4, v6, :cond_0

    .line 2622
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewCellLayout;

    .line 2623
    .local v2, cl:Lcom/android/launcher2/PagedViewCellLayout;
    if-nez v2, :cond_1

    .line 2640
    .end local v2           #cl:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_0
    return-void

    .line 2626
    .restart local v2       #cl:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v3

    .line 2627
    .local v3, count:I
    const/4 v0, 0x0

    .line 2628
    .local v0, appIcon:Lcom/android/launcher2/PagedViewIcon;
    const/4 v1, 0x0

    .line 2629
    .local v1, appInfo:Lcom/android/launcher2/ApplicationInfo;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 2630
    invoke-virtual {v2, v5}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #appIcon:Lcom/android/launcher2/PagedViewIcon;
    check-cast v0, Lcom/android/launcher2/PagedViewIcon;

    .line 2631
    .restart local v0       #appIcon:Lcom/android/launcher2/PagedViewIcon;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 2632
    .restart local v1       #appInfo:Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, v1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v6}, Lcom/android/launcher2/MTKUnreadLoader;->getUnreadNumberOfComponent(Landroid/content/ComponentName;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    .line 2633
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2629
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2621
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public updateAppsUnreadChanged(Landroid/content/ComponentName;I)V
    .locals 7
    .parameter "component"
    .parameter "unreadNum"

    .prologue
    .line 2587
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AppsCustomizePagedView;->updateUnreadNumInAppInfo(Landroid/content/ComponentName;I)V

    .line 2588
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v6, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumAppsPages:I

    if-ge v4, v6, :cond_0

    .line 2589
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppsCustomizePagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewCellLayout;

    .line 2590
    .local v2, cl:Lcom/android/launcher2/PagedViewCellLayout;
    if-nez v2, :cond_1

    .line 2609
    .end local v2           #cl:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_0
    return-void

    .line 2593
    .restart local v2       #cl:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v3

    .line 2594
    .local v3, count:I
    const/4 v0, 0x0

    .line 2595
    .local v0, appIcon:Lcom/android/launcher2/PagedViewIcon;
    const/4 v1, 0x0

    .line 2596
    .local v1, appInfo:Lcom/android/launcher2/ApplicationInfo;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v3, :cond_3

    .line 2597
    invoke-virtual {v2, v5}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #appIcon:Lcom/android/launcher2/PagedViewIcon;
    check-cast v0, Lcom/android/launcher2/PagedViewIcon;

    .line 2598
    .restart local v0       #appIcon:Lcom/android/launcher2/PagedViewIcon;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 2603
    .restart local v1       #appInfo:Lcom/android/launcher2/ApplicationInfo;
    if-eqz v1, :cond_2

    iget-object v6, v1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2604
    iput p2, v1, Lcom/android/launcher2/ItemInfo;->unreadNum:I

    .line 2605
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2596
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2588
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method updateItemLocationsInDatabase(ILcom/android/launcher2/AppsCustomizePagedView$PageInfo;)V
    .locals 8
    .parameter "page"
    .parameter "pageInfo"

    .prologue
    .line 3571
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    .line 3572
    .local v0, model:Lcom/android/launcher2/LauncherModel;
    invoke-virtual {p2}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->getAppsCount()I

    move-result v6

    .line 3574
    .local v6, count:I
    const-string v1, "AppsCustomizePagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateItemLocationsInDatabase: page = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pageInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3577
    const/4 v2, 0x0

    .line 3578
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 3579
    invoke-virtual {p2, v7}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->get(I)Lcom/android/launcher2/ApplicationInfo;

    move-result-object v2

    .line 3581
    if-eqz v2, :cond_0

    .line 3582
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v4, v2, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v5, v2, Lcom/android/launcher2/ItemInfo;->cellY:I

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->moveAllAppsItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ApplicationInfo;III)V

    .line 3578
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3585
    :cond_1
    return-void
.end method

.method updateItemLocationsInDatabase(Lcom/android/launcher2/PagedViewCellLayout;)V
    .locals 10
    .parameter "cl"

    .prologue
    .line 3539
    if-nez p1, :cond_1

    .line 3540
    const-string v1, "AppsCustomizePagedView"

    const-string v4, "updateItemLocationsInDatabase cl == null!"

    invoke-static {v1, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3562
    :cond_0
    return-void

    .line 3543
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    .line 3544
    .local v0, model:Lcom/android/launcher2/LauncherModel;
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewCellLayout;->getChildrenLayout()Lcom/android/launcher2/PagedViewCellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 3546
    .local v6, count:I
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppsCustomizePagedView;->indexToPage(I)I

    move-result v3

    .line 3548
    .local v3, screen:I
    const-string v1, "AppsCustomizePagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateItemLocationsInDatabase cl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", screen = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    const/4 v2, 0x0

    .line 3552
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    const/4 v9, 0x0

    .line 3553
    .local v9, v:Landroid/view/View;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 3554
    invoke-virtual {p1, v7}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v9

    .line 3555
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 3556
    .restart local v2       #info:Lcom/android/launcher2/ApplicationInfo;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 3558
    .local v8, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    if-eqz v2, :cond_2

    .line 3559
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v4, v8, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v5, v8, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->moveAllAppsItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ApplicationInfo;III)V

    .line 3553
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method updateWidgetsPageCounts(Z)V
    .locals 3
    .parameter "isWidgetTab"

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mSupportCycleSliding:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 615
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    .line 621
    :goto_0
    const-string v0, "AppsCustomizePagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWidgetsPageCounts end: mNumWidgetPages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWidgets.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountX:I

    iget v2, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mWidgetCountY:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/launcher2/AppsCustomizePagedView;->mNumWidgetPages:I

    goto :goto_0
.end method
