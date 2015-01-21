.class final Lkn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final a:Ljava/lang/String;

.field private static a:Z


# instance fields
.field private a:I

.field private a:Landroid/os/Handler;

.field private final a:Lkk;

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lkn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkn;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lkn;->a:Z

    return-void
.end method

.method constructor <init>(Lkk;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lkn;->a:Lkk;

    .line 37
    iput-boolean p2, p0, Lkn;->b:Z

    .line 38
    return-void
.end method

.method private static final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    sget-boolean v0, Lkn;->a:Z

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lkn;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/os/Handler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lkn;->a:Landroid/os/Handler;

    .line 42
    iput p2, p0, Lkn;->a:I

    .line 43
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 46
    iget-object v0, p0, Lkn;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 47
    iget-boolean v1, p0, Lkn;->b:Z

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p2, v4}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 50
    :cond_0
    iget-object v1, p0, Lkn;->a:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 51
    sget-boolean v1, Lkn;->a:Z

    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ".....x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   .... y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkn;->a(Ljava/lang/String;)V

    .line 55
    :cond_1
    iget-object v1, p0, Lkn;->a:Landroid/os/Handler;

    iget v2, p0, Lkn;->a:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 58
    iput-object v4, p0, Lkn;->a:Landroid/os/Handler;

    .line 64
    :cond_2
    :goto_0
    return-void

    .line 60
    :cond_3
    sget-boolean v0, Lkn;->a:Z

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "Got preview callback, but no handler for it"

    invoke-static {v0}, Lkn;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
