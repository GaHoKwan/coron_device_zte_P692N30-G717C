.class Ltmsdkobf/hc$b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hc$b;->b(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)Ltmsdk/common/module/aresengine/FilterResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oY:Ltmsdkobf/hc$b;

.field final synthetic pc:Ltmsdk/common/module/aresengine/SmsEntity;

.field final synthetic pd:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Ltmsdkobf/hc$b$4;->oY:Ltmsdkobf/hc$b;

    iput-object p2, p0, Ltmsdkobf/hc$b$4;->pc:Ltmsdk/common/module/aresengine/SmsEntity;

    iput-object p3, p0, Ltmsdkobf/hc$b$4;->pd:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 640
    iget-object v0, p0, Ltmsdkobf/hc$b$4;->oY:Ltmsdkobf/hc$b;

    invoke-static {v0}, Ltmsdkobf/hc$b;->b(Ltmsdkobf/hc$b;)Ltmsdk/bg/module/aresengine/AresEngineManager;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getPhoneDeviceController()Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-result-object v0

    iget-object v1, p0, Ltmsdkobf/hc$b$4;->pc:Ltmsdk/common/module/aresengine/SmsEntity;

    iget-object v2, p0, Ltmsdkobf/hc$b$4;->pd:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->unBlockSms(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    .line 641
    return-void
.end method
