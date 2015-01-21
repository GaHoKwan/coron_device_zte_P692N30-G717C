.class public Ltmsdk/common/tcc/IPDialer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_MOBILE:I = 0x1

.field public static final TYPE_TELECOM:I = 0x3

.field public static final TYPE_UNICOM:I = 0x2


# instance fields
.field private wL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const/4 v0, 0x3

    const-class v1, Ltmsdk/bg/tcc/TelNumberLocator;

    invoke-static {v0, v1}, Ltmsdk/common/TMSDKContext;->registerNatives(ILjava/lang/Class;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/common/tcc/IPDialer;->wL:I

    .line 36
    invoke-static {p1}, Ltmsdk/common/tcc/IPDialer;->newObject(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Ltmsdk/common/tcc/IPDialer;->wL:I

    .line 37
    iget v0, p0, Ltmsdk/common/tcc/IPDialer;->wL:I

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    .line 40
    :cond_0
    return-void
.end method

.method private static native changeToIPNum(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native deleteObject(I)V
.end method

.method private static native getConfig(ILjava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ltmsdk/common/tcc/IPConfigSet;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native initIPDialer(ILjava/lang/String;I)I
.end method

.method private static native newObject(Landroid/content/Context;)I
.end method

.method private static native setConfig(ILtmsdk/common/tcc/IPConfigSet;)I
.end method


# virtual methods
.method public changeToIPNum(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .parameter "orgNum"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, retNumRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    iget v0, p0, Ltmsdk/common/tcc/IPDialer;->wL:I

    invoke-static {v0, p1, p2}, Ltmsdk/common/tcc/IPDialer;->changeToIPNum(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Ltmsdk/common/tcc/IPDialer;->wL:I

    if-eqz v0, :cond_0

    .line 104
    iget v0, p0, Ltmsdk/common/tcc/IPDialer;->wL:I

    invoke-static {v0}, Ltmsdk/common/tcc/IPDialer;->deleteObject(I)V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/common/tcc/IPDialer;->wL:I

    .line 107
    :cond_0
    return-void
.end method

.method public getConfig()Ltmsdk/common/tcc/IPConfigSet;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 78
    .local v0, configRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdk/common/tcc/IPConfigSet;>;"
    iget v1, p0, Ltmsdk/common/tcc/IPDialer;->wL:I

    invoke-static {v1, v0}, Ltmsdk/common/tcc/IPDialer;->getConfig(ILjava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/tcc/IPConfigSet;

    .line 82
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initIPDialer(Ljava/lang/String;I)I
    .locals 1
    .parameter "cofigPath"
    .parameter "operatorID"

    .prologue
    .line 55
    iget v0, p0, Ltmsdk/common/tcc/IPDialer;->wL:I

    invoke-static {v0, p1, p2}, Ltmsdk/common/tcc/IPDialer;->initIPDialer(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setConfig(Ltmsdk/common/tcc/IPConfigSet;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 68
    iget v0, p0, Ltmsdk/common/tcc/IPDialer;->wL:I

    invoke-static {v0, p1}, Ltmsdk/common/tcc/IPDialer;->setConfig(ILtmsdk/common/tcc/IPConfigSet;)I

    move-result v0

    return v0
.end method
