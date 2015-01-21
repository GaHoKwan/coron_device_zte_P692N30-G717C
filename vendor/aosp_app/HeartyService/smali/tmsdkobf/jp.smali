.class public Ltmsdkobf/jp;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a([Ljava/lang/Class;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltmsdk/common/exception/UnauthorizedCallerException;
        }
    .end annotation

    .prologue
    .line 10
    .local p0, classes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    .line 12
    .local v9, stackTraces:[Ljava/lang/StackTraceElement;
    const/4 v6, 0x0

    .line 13
    .local v6, isAcceptedCaller:Z
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v0           #arr$:[Ljava/lang/StackTraceElement;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v0, v5

    .line 14
    .local v3, e:Ljava/lang/StackTraceElement;
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/Class;
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v8, :cond_0

    aget-object v2, v1, v4

    .line 15
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 16
    const/4 v6, 0x1

    .line 13
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 14
    .end local v5           #i$:I
    .restart local v2       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #i$:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 21
    .end local v1           #arr$:[Ljava/lang/Class;
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #e:Ljava/lang/StackTraceElement;
    .end local v4           #i$:I
    .end local v8           #len$:I
    .restart local v5       #i$:I
    :cond_2
    if-nez v6, :cond_3

    .line 22
    new-instance v10, Ltmsdk/common/exception/UnauthorizedCallerException;

    invoke-direct {v10}, Ltmsdk/common/exception/UnauthorizedCallerException;-><init>()V

    throw v10

    .line 24
    :cond_3
    return-void
.end method
