.class Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;
.super Ljava/lang/Thread;
.source "YgpsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ygps/YgpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoTestThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ygps/YgpsActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/ygps/YgpsActivity;Lcom/mediatek/ygps/YgpsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1059
    invoke-direct {p0, p1}, Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1062
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1063
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1065
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/ygps/YgpsActivity;->setStartButtonEnable(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/ygps/YgpsActivity;->access$900(Lcom/mediatek/ygps/YgpsActivity;Z)V

    .line 1066
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    #calls: Lcom/mediatek/ygps/YgpsActivity;->reconnectTest()V
    invoke-static {v0}, Lcom/mediatek/ygps/YgpsActivity;->access$1200(Lcom/mediatek/ygps/YgpsActivity;)V

    .line 1067
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/ygps/YgpsActivity;->setStartButtonEnable(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/ygps/YgpsActivity;->access$900(Lcom/mediatek/ygps/YgpsActivity;Z)V

    .line 1068
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 1072
    return-void
.end method
