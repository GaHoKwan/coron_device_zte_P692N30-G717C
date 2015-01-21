.class public Lcom/mediatek/mtklogger/debugtool/AEEControlService$LocalBinder;
.super Landroid/os/Binder;
.source "AEEControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/debugtool/AEEControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/debugtool/AEEControlService;


# direct methods
.method public constructor <init>(Lcom/mediatek/mtklogger/debugtool/AEEControlService;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/mtklogger/debugtool/AEEControlService$LocalBinder;->this$0:Lcom/mediatek/mtklogger/debugtool/AEEControlService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/mediatek/mtklogger/debugtool/AEEControlService;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/mtklogger/debugtool/AEEControlService$LocalBinder;->this$0:Lcom/mediatek/mtklogger/debugtool/AEEControlService;

    return-object v0
.end method
