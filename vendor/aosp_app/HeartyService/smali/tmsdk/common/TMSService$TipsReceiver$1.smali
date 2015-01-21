.class Ltmsdk/common/TMSService$TipsReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/TMSService$TipsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xr:Ltmsdk/common/TMSService$TipsReceiver;


# direct methods
.method constructor <init>(Ltmsdk/common/TMSService$TipsReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Ltmsdk/common/TMSService$TipsReceiver$1;->xr:Ltmsdk/common/TMSService$TipsReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 64
    invoke-static {}, Ltmsdkobf/ly;->hk()V

    .line 65
    return-void
.end method
