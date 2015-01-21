.class public final Lcom/powermo/connectivity/rpc/RootServer;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    return-void
.end method

.method private native nativeBroadcastCommand(IIIIILjava/lang/String;)V
.end method

.method private native nativeBroadcastEffectorEvent(IIIIIIII)V
.end method

.method private native nativeBroadcastInputControl(IIIIII)V
.end method

.method private native nativeBroadcastMappingInfoChange(IIIIIIIIIIIII)V
.end method

.method private native nativeBroadcastSensorControl(IIIIII)V
.end method

.method private native nativeCreate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeStart(I)V
.end method

.method private native nativeStop(I)V
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    invoke-direct {p0, v0}, Lcom/powermo/connectivity/rpc/RootServer;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    return-void
.end method

.method public final a(IIILcom/powermo/connectivity/aidl/MappingInfo;)V
    .locals 15

    iget v2, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    move-object/from16 v0, p4

    iget v6, v0, Lcom/powermo/connectivity/aidl/MappingInfo;->c:I

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/powermo/connectivity/aidl/MappingInfo;->a:Landroid/graphics/Rect;

    iget v7, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/powermo/connectivity/aidl/MappingInfo;->a:Landroid/graphics/Rect;

    iget v8, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/powermo/connectivity/aidl/MappingInfo;->a:Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/powermo/connectivity/aidl/MappingInfo;->a:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/powermo/connectivity/aidl/MappingInfo;->b:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/powermo/connectivity/aidl/MappingInfo;->b:Landroid/graphics/Rect;

    iget v12, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/powermo/connectivity/aidl/MappingInfo;->b:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/powermo/connectivity/aidl/MappingInfo;->b:Landroid/graphics/Rect;

    iget v14, v1, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v1 .. v14}, Lcom/powermo/connectivity/rpc/RootServer;->nativeBroadcastMappingInfoChange(IIIIIIIIIIIII)V

    return-void
.end method

.method public final a(ILcom/powermo/connectivity/aidl/EffectorEvent;)V
    .locals 9

    iget v1, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    iget v3, p2, Lcom/powermo/connectivity/aidl/EffectorEvent;->a:I

    iget v4, p2, Lcom/powermo/connectivity/aidl/EffectorEvent;->b:I

    iget v5, p2, Lcom/powermo/connectivity/aidl/EffectorEvent;->c:I

    iget v6, p2, Lcom/powermo/connectivity/aidl/EffectorEvent;->d:I

    iget v7, p2, Lcom/powermo/connectivity/aidl/EffectorEvent;->e:I

    iget v8, p2, Lcom/powermo/connectivity/aidl/EffectorEvent;->f:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/powermo/connectivity/rpc/RootServer;->nativeBroadcastEffectorEvent(IIIIIIII)V

    return-void
.end method

.method public final a(ILcom/powermo/connectivity/aidl/InputControl;)V
    .locals 7

    iget v1, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    iget v3, p2, Lcom/powermo/connectivity/aidl/InputControl;->a:I

    iget v4, p2, Lcom/powermo/connectivity/aidl/InputControl;->b:I

    iget v5, p2, Lcom/powermo/connectivity/aidl/InputControl;->c:I

    iget v6, p2, Lcom/powermo/connectivity/aidl/InputControl;->d:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/powermo/connectivity/rpc/RootServer;->nativeBroadcastInputControl(IIIIII)V

    return-void
.end method

.method public final a(ILcom/powermo/connectivity/aidl/SensorControl;)V
    .locals 7

    iget v1, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    iget v3, p2, Lcom/powermo/connectivity/aidl/SensorControl;->a:I

    iget v4, p2, Lcom/powermo/connectivity/aidl/SensorControl;->b:I

    iget v5, p2, Lcom/powermo/connectivity/aidl/SensorControl;->c:I

    iget v6, p2, Lcom/powermo/connectivity/aidl/SensorControl;->d:I

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/powermo/connectivity/rpc/RootServer;->nativeBroadcastSensorControl(IIIIII)V

    return-void
.end method

.method public final a(ILcom/powermo/connectivity/aidl/SimpleCommand;)V
    .locals 7

    iget v1, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    iget v3, p2, Lcom/powermo/connectivity/aidl/SimpleCommand;->a:I

    iget v4, p2, Lcom/powermo/connectivity/aidl/SimpleCommand;->b:I

    iget v5, p2, Lcom/powermo/connectivity/aidl/SimpleCommand;->c:I

    iget-object v6, p2, Lcom/powermo/connectivity/aidl/SimpleCommand;->d:Ljava/lang/String;

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/powermo/connectivity/rpc/RootServer;->nativeBroadcastCommand(IIIIILjava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    if-nez p2, :cond_2

    const-string v2, ""

    :goto_0
    if-nez p3, :cond_1

    const-string v3, ""

    :goto_1
    if-nez p4, :cond_0

    move-object v4, v3

    :goto_2
    move-object v0, p0

    move v1, p1

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/powermo/connectivity/rpc/RootServer;->nativeCreate(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    return-void

    :cond_0
    move-object v4, p4

    goto :goto_2

    :cond_1
    move-object v3, p3

    goto :goto_1

    :cond_2
    move-object v2, p2

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget v0, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    invoke-direct {p0, v0}, Lcom/powermo/connectivity/rpc/RootServer;->nativeStart(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lcom/powermo/connectivity/rpc/RootServer;->a:I

    invoke-direct {p0, v0}, Lcom/powermo/connectivity/rpc/RootServer;->nativeStop(I)V

    return-void
.end method

.method protected final finalize()V
    .locals 1

    invoke-virtual {p0}, Lcom/powermo/connectivity/rpc/RootServer;->a()V

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
