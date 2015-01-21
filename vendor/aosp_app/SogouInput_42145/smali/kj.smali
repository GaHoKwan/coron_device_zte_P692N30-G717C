.class final Lkj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# static fields
.field private static final a:Ljava/lang/String;

.field private static a:Z


# instance fields
.field private a:I

.field private a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lkj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkj;->a:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lkj;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    sget-boolean v0, Lkj;->a:Z

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lkj;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lkj;->a:Landroid/os/Handler;

    .line 35
    iput p2, p0, Lkj;->a:I

    .line 36
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lkj;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lkj;->a:Landroid/os/Handler;

    iget v1, p0, Lkj;->a:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lkj;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lkj;->a:Landroid/os/Handler;

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    sget-boolean v0, Lkj;->a:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "Got auto-focus callback, but no handler for it"

    invoke-static {v0}, Lkj;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
