.class public Lcom/android/email/data/ThrottlingCursorLoader;
.super Landroid/content/CursorLoader;
.source "ThrottlingCursorLoader.java"


# instance fields
.field private final mThrottle:Lcom/android/email/Throttle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 39
    const/16 v7, 0xfa

    const/16 v8, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "minTimeout"
    .parameter "maxTimeout"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v2, Lcom/android/email/data/ThrottlingCursorLoader$1;

    invoke-direct {v2, p0}, Lcom/android/email/data/ThrottlingCursorLoader$1;-><init>(Lcom/android/email/data/ThrottlingCursorLoader;)V

    .line 54
    .local v2, forceLoadRunnable:Ljava/lang/Runnable;
    new-instance v0, Lcom/android/email/Throttle;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;II)V

    iput-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/data/ThrottlingCursorLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/email/data/ThrottlingCursorLoader;->callSuperOnContentChanged()V

    return-void
.end method

.method private callSuperOnContentChanged()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/content/Loader;->onContentChanged()V

    .line 108
    return-void
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 59
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThrottlingCursorLoader: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method


# virtual methods
.method public onCanceled(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    .line 89
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/data/ThrottlingCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->onEvent()V

    .line 103
    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    .line 72
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onForceLoad()V

    .line 73
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    .line 95
    invoke-super {p0}, Landroid/content/CursorLoader;->onReset()V

    .line 96
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/content/CursorLoader;->onStartLoading()V

    .line 66
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/content/CursorLoader;->onStopLoading()V

    .line 81
    return-void
.end method
