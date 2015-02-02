.class public Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;
.super Landroid/os/Binder;
.source "CpuStressTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cpustress/CpuStressTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StressTestBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;


# direct methods
.method public constructor <init>(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)V
    .locals 0
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/mediatek/engineermode/cpustress/CpuStressTestService;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;->this$0:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    return-object v0
.end method
