.class Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch$1;
.super Ljava/lang/Object;
.source "OptionalActionBarSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;-><init>(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch$1;->this$0:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch$1;->this$0:Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;

    #getter for: Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;->access$000(Lcom/mediatek/mtklogger/settings/OptionalActionBarSwitch;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 69
    return-void
.end method
