.class public Lcom/djc/testreflect/TelephonyManager;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "TelephonyManager.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.telephony.TelephonyManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/djc/testreflect/TelephonyManager;
    .locals 7

    .prologue
    .line 25
    const/4 v3, 0x0

    .line 27
    .local v3, telephony:Lcom/djc/testreflect/TelephonyManager;
    :try_start_0
    const-string v4, "android.telephony.TelephonyManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 28
    .local v0, c:Ljava/lang/Class;
    const-string v4, "getDefault"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 29
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #telephony:Lcom/djc/testreflect/TelephonyManager;
    check-cast v3, Lcom/djc/testreflect/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .restart local v3       #telephony:Lcom/djc/testreflect/TelephonyManager;
    return-object v3

    .line 31
    .end local v0           #c:Ljava/lang/Class;
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v3           #telephony:Lcom/djc/testreflect/TelephonyManager;
    :catch_0
    move-exception v1

    .line 32
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "DMC"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TelephonyManager.getDefault() Exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static isMultiSimEnabled(Lcom/djc/testreflect/TelephonyManager;)Z
    .locals 7
    .parameter "t"

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, b:Z
    :try_start_0
    const-string v4, "android.telephony.TelephonyManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 44
    .local v1, c:Ljava/lang/Class;
    const-string v4, "isMultiSimEnabled"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 45
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 53
    return v0

    .line 47
    .end local v1           #c:Ljava/lang/Class;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 48
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "DMC"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TelephonyManager.isMultiSimEnabled() Exception : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
