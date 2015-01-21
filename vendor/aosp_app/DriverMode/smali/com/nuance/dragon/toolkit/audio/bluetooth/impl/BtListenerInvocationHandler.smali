.class public Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtListenerInvocationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "BtListenerInvocationHandler"


# instance fields
.field protected mBtServiceListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListener;


# direct methods
.method public constructor <init>(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtListenerInvocationHandler;->mBtServiceListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListener;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "BtListenerInvocationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BtListenerInvocationHandler.invoke() mBtServiceListener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtListenerInvocationHandler;->mBtServiceListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " method = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtListenerInvocationHandler;->mBtServiceListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListener;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtListenerInvocationHandler;->mBtServiceListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListener;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;

    invoke-direct {v1, p3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;-><init>([Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListener;->onServiceConnected(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtListenerInvocationHandler;->mBtServiceListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListener;

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;

    invoke-direct {v1, p3}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;-><init>([Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListener;->onServiceDisconnected(Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListenerParams;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtListenerInvocationHandler;->mBtServiceListener:Lcom/nuance/dragon/toolkit/audio/bluetooth/impl/BtServiceListener;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BtListenerInvocationHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ListenerInvocationHandler.invoke() IllegalAccessException calling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BtListenerInvocationHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ListenerInvocationHandler.invoke() InvocationTargetException calling "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
