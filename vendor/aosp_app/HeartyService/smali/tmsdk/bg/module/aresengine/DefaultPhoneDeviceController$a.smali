.class final Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic us:Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;

.field private ut:I

.field private uu:I

.field private uv:I


# direct methods
.method public constructor <init>(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;III)V
    .locals 0
    .parameter
    .parameter "ringmode"
    .parameter "vibratemode"
    .parameter "seconds"

    .prologue
    .line 197
    iput-object p1, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->us:Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p2, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->ut:I

    .line 199
    iput p3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->uu:I

    .line 200
    iput p4, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->uv:I

    .line 201
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 207
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 208
    iget v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->uv:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->us:Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;

    invoke-static {v3}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->a(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 214
    .local v0, current_ring_mode:I
    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->us:Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;

    invoke-static {v3}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->a(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 216
    .local v1, current_vibrate_mode:I
    iget v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->ut:I

    if-eq v3, v6, :cond_0

    iget v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->ut:I

    if-eq v0, v3, :cond_0

    .line 217
    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->us:Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;

    invoke-static {v3}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->a(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;)Landroid/media/AudioManager;

    move-result-object v3

    iget v4, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->ut:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 220
    :cond_0
    iget v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->uu:I

    if-eq v3, v6, :cond_1

    iget v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->uu:I

    if-eq v1, v3, :cond_1

    .line 221
    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->us:Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;

    invoke-static {v3}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->a(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;)Landroid/media/AudioManager;

    move-result-object v3

    iget v4, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->uu:I

    invoke-virtual {v3, v5, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 224
    :cond_1
    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;->us:Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;

    invoke-static {v3, v5}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->a(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;Z)Z

    .line 225
    return-void

    .line 209
    .end local v0           #current_ring_mode:I
    .end local v1           #current_vibrate_mode:I
    :catch_0
    move-exception v2

    .line 210
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
