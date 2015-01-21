.class Landroid/app/AppContextImpl;
.super Landroid/app/ContextImpl;
.source "AppContextImpl.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MApplicationContext"


# instance fields
.field private mDisplayId:I

.field private mMainThread:Landroid/app/ActivityThread;

.field mPackageInfo:Landroid/app/LoadedApk;

.field private mResources:Landroid/content/res/Resources;

.field final mThemeResources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mThemes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/Resources$Theme;",
            ">;"
        }
    .end annotation
.end field

.field private ssContext:Landroid/content/SmartShowContext;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/ContextImpl;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AppContextImpl;->ssContext:Landroid/content/SmartShowContext;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppContextImpl;->mThemes:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppContextImpl;->mThemeResources:Ljava/util/HashMap;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppContextImpl;->mDisplayId:I

    .line 50
    invoke-static {}, Landroid/content/SmartShowContextWrapper;->getDefaultContext()Landroid/content/SmartShowContextWrapper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppContextImpl;->ssContext:Landroid/content/SmartShowContext;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/app/ContextImpl;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AppContextImpl;->ssContext:Landroid/content/SmartShowContext;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppContextImpl;->mThemes:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppContextImpl;->mThemeResources:Ljava/util/HashMap;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppContextImpl;->mDisplayId:I

    .line 55
    invoke-static {}, Landroid/content/SmartShowContextWrapper;->getDefaultContext()Landroid/content/SmartShowContextWrapper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppContextImpl;->ssContext:Landroid/content/SmartShowContext;

    .line 56
    return-void
.end method

.method private getContextImpl(I)Landroid/content/Context;
    .locals 1
    .parameter "contextId"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/AppContextImpl;->mMainThread:Landroid/app/ActivityThread;

    if-nez v0, :cond_1

    .line 142
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/app/AppContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->getContextImpl(I)Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private getCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/app/AppContextImpl;->getCurrentContextId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/AppContextImpl;->getContextImpl(I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentContextId()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/app/AppContextImpl;->ssContext:Landroid/content/SmartShowContext;

    invoke-virtual {v0}, Landroid/content/SmartShowContext;->getContextId()I

    move-result v0

    return v0
.end method

.method private getInputMethodManagerService(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .parameter "name"
    .parameter "contextId"

    .prologue
    .line 89
    if-eqz p2, :cond_0

    .line 90
    invoke-static {p2, p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(ILandroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getContextId()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayId()I
    .locals 3

    .prologue
    .line 65
    iget v1, p0, Landroid/app/AppContextImpl;->mDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 66
    iget v1, p0, Landroid/app/AppContextImpl;->mDisplayId:I

    .line 72
    :goto_0
    return v1

    .line 68
    :cond_0
    invoke-direct {p0}, Landroid/app/AppContextImpl;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/AppContextImpl;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 79
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Landroid/content/ContextWrapper;

    .end local v0           #ctx:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    .restart local v0       #ctx:Landroid/content/Context;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    :goto_0
    return-object v1

    :cond_1
    invoke-super {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "name"

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/app/AppContextImpl;->getCurrentContext()Landroid/content/Context;

    move-result-object v2

    .line 98
    .local v2, ctx:Landroid/content/Context;
    if-eqz v2, :cond_2

    .line 99
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_0

    .line 100
    check-cast v2, Landroid/content/ContextWrapper;

    .end local v2           #ctx:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 102
    .restart local v2       #ctx:Landroid/content/Context;
    :cond_0
    const-string v3, "window"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 116
    :goto_0
    return-object v3

    .line 104
    :cond_1
    const-string v3, "input_method"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    invoke-virtual {v2}, Landroid/content/Context;->getContextId()I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/app/AppContextImpl;->getInputMethodManagerService(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 108
    :cond_2
    const-string v3, "input_method"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, p0, Landroid/app/AppContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 110
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 112
    .local v1, c:Landroid/content/Context;
    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 116
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #c:Landroid/content/Context;
    :cond_3
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V
    .locals 1
    .parameter "packageInfo"
    .parameter "activityToken"
    .parameter "mainThread"

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/app/ContextImpl;->init(Landroid/app/LoadedApk;Landroid/os/IBinder;Landroid/app/ActivityThread;)V

    .line 122
    iput-object p1, p0, Landroid/app/AppContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    .line 123
    iget-object v0, p0, Landroid/app/AppContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v0, p3}, Landroid/app/LoadedApk;->getResources(Landroid/app/ActivityThread;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppContextImpl;->mResources:Landroid/content/res/Resources;

    .line 124
    iput-object p3, p0, Landroid/app/AppContextImpl;->mMainThread:Landroid/app/ActivityThread;

    .line 125
    return-void
.end method

.method public setDisplayId(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 60
    iput p1, p0, Landroid/app/AppContextImpl;->mDisplayId:I

    .line 61
    return-void
.end method
