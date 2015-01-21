.class Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->hangup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic us:Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;


# direct methods
.method constructor <init>(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$1;->us:Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$1;->us:Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->cancelMissCall()V

    .line 56
    return-void
.end method
