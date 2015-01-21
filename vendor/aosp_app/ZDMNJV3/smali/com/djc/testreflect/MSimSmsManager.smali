.class public Lcom/djc/testreflect/MSimSmsManager;
.super Lcom/djc/testreflect/ObjectFromReflect;
.source "MSimSmsManager.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "android.telephony.MSimSmsManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/djc/testreflect/ObjectFromReflect;-><init>()V

    return-void
.end method

.method public static sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 10
    .parameter "toNumber"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sendIntent"
    .parameter "deliveryIntent"
    .parameter "card"

    .prologue
    .line 74
    :try_start_0
    const-string v6, "android.telephony.MSimSmsManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 75
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "getDefault"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 76
    .local v4, mObj:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 77
    .local v5, obj:Ljava/lang/Object;
    const-string v6, "DMC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MSimSmsManager.getDefault() obj ###:: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v6, "sendDataMessage"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, [B

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 79
    const-class v9, Landroid/app/PendingIntent;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-class v9, Landroid/app/PendingIntent;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 78
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 80
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v6, 0x7

    new-array v0, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v0, v6

    const/4 v6, 0x1

    aput-object p1, v0, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    aput-object v7, v0, v6

    const/4 v6, 0x3

    aput-object p3, v0, v6

    const/4 v6, 0x4

    aput-object p4, v0, v6

    const/4 v6, 0x5

    aput-object p5, v0, v6

    const/4 v6, 0x6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 81
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #m:Ljava/lang/reflect/Method;
    .end local v4           #mObj:Ljava/lang/reflect/Method;
    .end local v5           #obj:Ljava/lang/Object;
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "DMC"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "MSimSmsManager.sendDataMessage() Exception : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
