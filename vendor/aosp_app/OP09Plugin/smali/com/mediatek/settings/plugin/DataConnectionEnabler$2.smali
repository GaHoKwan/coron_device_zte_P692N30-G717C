.class Lcom/mediatek/settings/plugin/DataConnectionEnabler$2;
.super Landroid/database/ContentObserver;
.source "DataConnectionEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/DataConnectionEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/DataConnectionEnabler;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$2;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 84
    const-string v0, "DataConnectionEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-nez p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionEnabler$2;->this$0:Lcom/mediatek/settings/plugin/DataConnectionEnabler;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionEnabler;->updateSwitcherState()V
    invoke-static {v0}, Lcom/mediatek/settings/plugin/DataConnectionEnabler;->access$200(Lcom/mediatek/settings/plugin/DataConnectionEnabler;)V

    .line 88
    :cond_0
    return-void
.end method
