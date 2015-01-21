.class Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$2;
.super Ljava/lang/Object;
.source "PortingInterfaceUtils.java"

# interfaces
.implements Ltmsdk/common/ITMSApplicaionConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;->engineAppInit(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils$2;->this$0:Lcom/zte/heartyservice/porting/Tencent/PortingInterfaceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, src:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
