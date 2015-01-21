.class Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;-><init>(Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;


# direct methods
.method constructor <init>(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 68
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$1;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$1;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v0}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->a(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
