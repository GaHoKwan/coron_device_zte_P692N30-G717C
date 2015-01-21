.class public Ltmsdkobf/hs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static qn:Ljava/lang/reflect/Field;

.field private static qo:Ljava/lang/reflect/Field;

.field private static qp:Ljava/lang/reflect/Field;


# instance fields
.field private qq:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/IntentSender;)V
    .locals 5
    .parameter "intentsender"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v3, Ltmsdkobf/hs;

    monitor-enter v3

    .line 18
    :try_start_0
    const-string v2, "mTarget"

    sget-object v4, Ltmsdkobf/hs;->qo:Ljava/lang/reflect/Field;

    invoke-direct {p0, p1, v2, v4}, Ltmsdkobf/hs;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ltmsdkobf/hs;->qo:Ljava/lang/reflect/Field;

    .line 19
    sget-object v2, Ltmsdkobf/hs;->qo:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 20
    sget-object v2, Ltmsdkobf/hs;->qo:Ljava/lang/reflect/Field;

    invoke-direct {p0, p1, v2}, Ltmsdkobf/hs;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    .local v1, target:Ljava/lang/Object;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PendingIntentRecord"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const-string v2, "key"

    sget-object v4, Ltmsdkobf/hs;->qn:Ljava/lang/reflect/Field;

    invoke-direct {p0, v1, v2, v4}, Ltmsdkobf/hs;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ltmsdkobf/hs;->qn:Ljava/lang/reflect/Field;

    .line 25
    sget-object v2, Ltmsdkobf/hs;->qn:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    .line 26
    sget-object v2, Ltmsdkobf/hs;->qn:Ljava/lang/reflect/Field;

    invoke-direct {p0, v1, v2}, Ltmsdkobf/hs;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, key:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 29
    const-string v2, "allIntents"

    sget-object v4, Ltmsdkobf/hs;->qp:Ljava/lang/reflect/Field;

    invoke-direct {p0, v0, v2, v4}, Ltmsdkobf/hs;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Ltmsdkobf/hs;->qp:Ljava/lang/reflect/Field;

    .line 30
    iput-object v0, p0, Ltmsdkobf/hs;->qq:Ljava/lang/Object;

    .line 35
    .end local v0           #key:Ljava/lang/Object;
    .end local v1           #target:Ljava/lang/Object;
    :cond_0
    monitor-exit v3

    .line 37
    return-void

    .line 35
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2
    .parameter "owner"
    .parameter "field"

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 58
    .local v1, result:Ljava/lang/Object;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 68
    .end local v1           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 61
    .restart local v1       #result:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 4
    .parameter "object"
    .parameter "name"
    .parameter "currentField"

    .prologue
    .line 40
    move-object v2, p3

    .line 42
    .local v2, result:Ljava/lang/reflect/Field;
    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 45
    .local v0, claxx:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 46
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0           #claxx:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v2

    .line 47
    .restart local v0       #claxx:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cn()[Landroid/content/Intent;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Ltmsdkobf/hs;->qq:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdkobf/hs;->qq:Ljava/lang/Object;

    sget-object v1, Ltmsdkobf/hs;->qp:Ljava/lang/reflect/Field;

    invoke-direct {p0, v0, v1}, Ltmsdkobf/hs;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    check-cast v0, [Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
