.class Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$4;
.super Ltmsdk/bg/module/aresengine/DataMonitor;
.source "PortingInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->initIntercept()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltmsdk/bg/module/aresengine/DataMonitor",
        "<",
        "Ltmsdk/common/module/aresengine/SmsEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$4;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/DataMonitor;-><init>()V

    return-void
.end method
