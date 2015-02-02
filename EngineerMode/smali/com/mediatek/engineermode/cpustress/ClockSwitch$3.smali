.class Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;
.super Ljava/lang/Object;
.source "ClockSwitch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cpustress/ClockSwitch;->handleEvent(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

.field final synthetic val$index:I

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cpustress/ClockSwitch;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    iput-object p2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;->val$value:Ljava/lang/String;

    iput p3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;->val$value:Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;->val$index:I

    #calls: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->setCommand(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$900(Lcom/mediatek/engineermode/cpustress/ClockSwitch;Ljava/lang/String;I)V

    .line 351
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;->this$0:Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    iget v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;->val$index:I

    #calls: Lcom/mediatek/engineermode/cpustress/ClockSwitch;->getResponse(I)V
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->access$1000(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)V

    .line 352
    return-void
.end method
