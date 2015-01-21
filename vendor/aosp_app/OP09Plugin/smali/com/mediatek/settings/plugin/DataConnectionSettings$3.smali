.class Lcom/mediatek/settings/plugin/DataConnectionSettings$3;
.super Landroid/database/ContentObserver;
.source "DataConnectionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/DataConnectionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/DataConnectionSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$3;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 93
    const-string v0, "DataConnectionSettings"

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

    .line 94
    if-nez p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mediatek/settings/plugin/DataConnectionSettings$3;->this$0:Lcom/mediatek/settings/plugin/DataConnectionSettings;

    #calls: Lcom/mediatek/settings/plugin/DataConnectionSettings;->updateScreen()V
    invoke-static {v0}, Lcom/mediatek/settings/plugin/DataConnectionSettings;->access$300(Lcom/mediatek/settings/plugin/DataConnectionSettings;)V

    .line 97
    :cond_0
    return-void
.end method
