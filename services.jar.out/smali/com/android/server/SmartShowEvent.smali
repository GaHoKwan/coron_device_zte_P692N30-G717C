.class public Lcom/android/server/SmartShowEvent;
.super Ljava/lang/Object;
.source "SmartShowEvent.java"


# static fields
.field public static final EVENT_ACTIVITY_PAUSED:I = 0x2

.field public static final EVENT_ACTIVITY_PRE_RESUME:I = 0x3

.field public static final EVENT_ACTIVITY_RESUMED:I = 0x1

.field public static final EVENT_ACTIVITY_STOPPED:I = 0x6

.field public static final EVENT_APP_CRASHED:I = 0x4

.field public static final EVENT_APP_DIED:I = 0x5


# instance fields
.field public data:Ljava/lang/Object;

.field public intent:Landroid/content/Intent;

.field mContextId:I

.field mIsExtendMode:Z

.field mScreen:I

.field mTaskId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput v1, p0, Lcom/android/server/SmartShowEvent;->mScreen:I

    .line 44
    iput v0, p0, Lcom/android/server/SmartShowEvent;->mTaskId:I

    .line 45
    iput v0, p0, Lcom/android/server/SmartShowEvent;->mContextId:I

    .line 46
    iput-boolean v1, p0, Lcom/android/server/SmartShowEvent;->mIsExtendMode:Z

    .line 47
    iput-object v2, p0, Lcom/android/server/SmartShowEvent;->intent:Landroid/content/Intent;

    .line 48
    iput-object v2, p0, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getContextId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/server/SmartShowEvent;->mContextId:I

    return v0
.end method

.method public getScreen()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/SmartShowEvent;->mScreen:I

    return v0
.end method

.method public getTaskId()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/android/server/SmartShowEvent;->mTaskId:I

    return v0
.end method

.method public isExtendMode()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/SmartShowEvent;->mIsExtendMode:Z

    return v0
.end method

.method public setContextId(I)V
    .locals 0
    .parameter "contextId"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/server/SmartShowEvent;->mContextId:I

    .line 68
    return-void
.end method

.method public setExtendMode(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/server/SmartShowEvent;->mIsExtendMode:Z

    .line 76
    return-void
.end method

.method public setScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/server/SmartShowEvent;->mScreen:I

    .line 52
    return-void
.end method

.method public setTaskId(I)V
    .locals 0
    .parameter "taskId"

    .prologue
    .line 59
    iput p1, p0, Lcom/android/server/SmartShowEvent;->mTaskId:I

    .line 60
    return-void
.end method
