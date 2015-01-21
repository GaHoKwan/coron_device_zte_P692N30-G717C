.class Lcom/mediatek/settings/plugin/PowerSavingSettings$1;
.super Ljava/lang/Object;
.source "PowerSavingSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/plugin/PowerSavingSettings;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/PowerSavingSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$1;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/settings/plugin/PowerSavingSettings$1;->this$0:Lcom/mediatek/settings/plugin/PowerSavingSettings;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 94
    return-void
.end method
