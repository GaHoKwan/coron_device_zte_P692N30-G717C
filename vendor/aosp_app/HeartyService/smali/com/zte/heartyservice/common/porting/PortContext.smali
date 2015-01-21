.class public Lcom/zte/heartyservice/common/porting/PortContext;
.super Ljava/lang/Object;
.source "PortContext.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 13
    :try_start_0
    const-string v3, "android.os.UserHandle"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 14
    .local v1, cls:Ljava/lang/Class;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    .line 15
    .local v0, args:[Ljava/lang/Object;
    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 16
    const/4 v3, 0x1

    const-string v4, "ALL"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v3

    .line 17
    const/4 v3, 0x0

    const-string v4, "sendBroadcastAsUser"

    invoke-static {v3, p0, v4, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->Load(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #cls:Ljava/lang/Class;
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v2

    .line 19
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
