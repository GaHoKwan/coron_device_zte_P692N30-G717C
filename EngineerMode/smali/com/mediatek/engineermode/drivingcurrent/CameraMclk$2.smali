.class Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$2;
.super Ljava/lang/Object;
.source "CameraMclk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$2;->this$0:Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$2;->this$0:Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;

    const-class v2, Lcom/mediatek/engineermode/cameranew/AutoCalibration;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/mediatek/engineermode/drivingcurrent/CameraMclk$2;->this$0:Lcom/mediatek/engineermode/drivingcurrent/CameraMclk;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method
