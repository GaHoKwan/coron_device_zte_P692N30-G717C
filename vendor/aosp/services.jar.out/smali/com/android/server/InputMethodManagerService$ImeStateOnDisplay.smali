.class Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImeStateOnDisplay"
.end annotation


# instance fields
.field mBackDisposition:I

.field mBoundToMethod:Z

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field mDisplayId:I

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field mHaveConnection:Z

.field mImeWindowVis:I

.field mInputShown:Z

.field mInvisibleConnection:Lcom/android/server/InputMethodManagerService$MyServiceConnection;

.field mLastBindTime:J

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field mShowForcedFromKey:Z

.field mShowRequested:Z

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 287
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 289
    new-instance v0, Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay$1;-><init>(Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 296
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;->mVisibleBound:Z

    .line 402
    iput v1, p0, Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;->mBackDisposition:I

    .line 404
    iput v1, p0, Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;->mDisplayId:I

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .parameter "x0"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$ImeStateOnDisplay;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object p1
.end method
