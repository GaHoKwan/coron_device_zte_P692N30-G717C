.class Lcom/mediatek/lbs/em/LbsMisc$7;
.super Ljava/lang/Object;
.source "LbsMisc.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsMisc;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMisc;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMisc;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMisc$7;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$7;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method