.class public Lcom/mediatek/apst/util/communication/common/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# static fields
.field private static instance:Lcom/mediatek/apst/util/communication/common/Dispatcher;

.field private static token:I


# instance fields
.field private callbackMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/apst/util/communication/common/ICallback;",
            ">;"
        }
    .end annotation
.end field

.field private isEcho:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->callbackMap:Ljava/util/Hashtable;

    .line 63
    sput v1, Lcom/mediatek/apst/util/communication/common/Dispatcher;->token:I

    .line 64
    iput-boolean v1, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->isEcho:Z

    .line 65
    return-void
.end method

.method private getCallback(I)Lcom/mediatek/apst/util/communication/common/ICallback;
    .locals 2
    .parameter "featureID"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->callbackMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 136
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[Dispatcher]The Hashtable has not been init!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->callbackMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/communication/common/ICallback;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/apst/util/communication/common/Dispatcher;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/mediatek/apst/util/communication/common/Dispatcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->instance:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/mediatek/apst/util/communication/common/Dispatcher;

    invoke-direct {v0}, Lcom/mediatek/apst/util/communication/common/Dispatcher;-><init>()V

    sput-object v0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->instance:Lcom/mediatek/apst/util/communication/common/Dispatcher;

    .line 83
    :cond_0
    sget-object v0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->instance:Lcom/mediatek/apst/util/communication/common/Dispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 169
    instance-of v3, p1, Lcom/mediatek/apst/util/communication/common/TransportEntity;

    if-eqz v3, :cond_1

    move-object v3, p1

    .line 170
    check-cast v3, Lcom/mediatek/apst/util/communication/common/TransportEntity;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getFeatureID()I

    move-result v1

    .local v1, id:I
    move-object v3, p1

    .line 171
    check-cast v3, Lcom/mediatek/apst/util/communication/common/TransportEntity;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->getToken()I

    move-result v2

    .line 172
    .local v2, tok:I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[Dispatcher:info]Recieve data feature ID is:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", token is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, v1}, Lcom/mediatek/apst/util/communication/common/Dispatcher;->getCallback(I)Lcom/mediatek/apst/util/communication/common/ICallback;

    move-result-object v0

    .line 174
    .local v0, cb:Lcom/mediatek/apst/util/communication/common/ICallback;
    if-nez v0, :cond_0

    .line 175
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[Dispatcher:error]The callback can not be found!"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v4

    .line 190
    .end local v0           #cb:Lcom/mediatek/apst/util/communication/common/ICallback;
    .end local v1           #id:I
    .end local v2           #tok:I
    .end local p1
    :goto_0
    return v3

    .line 178
    .restart local v0       #cb:Lcom/mediatek/apst/util/communication/common/ICallback;
    .restart local v1       #id:I
    .restart local v2       #tok:I
    .restart local p1
    :cond_0
    check-cast p1, Lcom/mediatek/apst/util/communication/common/TransportEntity;

    .end local p1
    invoke-interface {v0, p1}, Lcom/mediatek/apst/util/communication/common/ICallback;->execute(Lcom/mediatek/apst/util/communication/common/TransportEntity;)Z

    move v3, v5

    .line 179
    goto :goto_0

    .line 181
    .end local v0           #cb:Lcom/mediatek/apst/util/communication/common/ICallback;
    .end local v1           #id:I
    .end local v2           #tok:I
    .restart local p1
    :cond_1
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 182
    check-cast p1, Ljava/lang/String;

    .end local p1
    const-string v3, "PCST"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "[Dispatcher:info]Get the echo!"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    iput-boolean v5, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->isEcho:Z

    :cond_2
    move v3, v5

    .line 186
    goto :goto_0

    .line 189
    .restart local p1
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "[Dispatcher]The object is not a instance of TransportEntity! Cast type failed!"

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v3, v4

    .line 190
    goto :goto_0
.end method

.method public getToken()I
    .locals 2

    .prologue
    .line 93
    sget v0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->token:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mediatek/apst/util/communication/common/Dispatcher;->token:I

    return v0
.end method

.method public installCallback(ILcom/mediatek/apst/util/communication/common/ICallback;)Z
    .locals 3
    .parameter "featureID"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->callbackMap:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 114
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[Dispatcher]The Hashtable has not been init!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    :goto_0
    return v0

    .line 117
    :cond_0
    if-nez p2, :cond_1

    .line 118
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[Dispatcher]The callback function is null!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->callbackMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[Dispatcher]The same key has already existed before! Now will replace it."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[Dispatcher]It is a new key!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isEcho()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->isEcho:Z

    return v0
.end method

.method public resetToken()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->token:I

    .line 101
    return-void
.end method

.method public setEcho(Z)V
    .locals 0
    .parameter "isEcho"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->isEcho:Z

    .line 73
    return-void
.end method

.method public uninstallCallback(I)Z
    .locals 3
    .parameter "featureID"

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->callbackMap:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 149
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[Dispatcher]The Hashtable has not been init!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    :goto_0
    return v0

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/mediatek/apst/util/communication/common/Dispatcher;->callbackMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 153
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[Dispatcher]The feature ID has not been registered!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
