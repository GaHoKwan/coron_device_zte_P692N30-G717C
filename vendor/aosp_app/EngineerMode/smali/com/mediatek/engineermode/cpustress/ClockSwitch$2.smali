.class Lcom/mediatek/engineermode/cpustress/ClockSwitch$2;
.super Ljava/lang/Object;
.source "ClockSwitch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cpustress/ClockSwitch;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$2;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$2;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    #calls: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->updateArmPll()V
    invoke-static {v0}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$700(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)V

    .line 231
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$2;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    const/16 v1, 0xa

    #calls: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->getCurrentStatus(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$800(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)V

    .line 232
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$2;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    const/16 v1, 0xb

    #calls: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->getCurrentStatus(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$800(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)V

    .line 233
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$2;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    const/16 v1, 0xc

    #calls: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->getCurrentStatus(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$800(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$2;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    const/16 v1, 0xd

    #calls: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->getCurrentStatus(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$800(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)V

    .line 235
    return-void
.end method
