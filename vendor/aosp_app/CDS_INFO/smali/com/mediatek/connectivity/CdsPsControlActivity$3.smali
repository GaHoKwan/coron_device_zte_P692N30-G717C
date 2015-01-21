.class Lcom/mediatek/connectivity/CdsPsControlActivity$3;
.super Ljava/lang/Object;
.source "CdsPsControlActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsPsControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsPsControlActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsPsControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsPsControlActivity$3;->this$0:Lcom/mediatek/connectivity/CdsPsControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity$3;->this$0:Lcom/mediatek/connectivity/CdsPsControlActivity;

    #setter for: Lcom/mediatek/connectivity/CdsPsControlActivity;->mIsGcfStk:Z
    invoke-static {v0, p2}, Lcom/mediatek/connectivity/CdsPsControlActivity;->access$102(Lcom/mediatek/connectivity/CdsPsControlActivity;Z)Z

    .line 273
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsPsControlActivity$3;->this$0:Lcom/mediatek/connectivity/CdsPsControlActivity;

    #calls: Lcom/mediatek/connectivity/CdsPsControlActivity;->setGcfFwRule()V
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsPsControlActivity;->access$200(Lcom/mediatek/connectivity/CdsPsControlActivity;)V

    .line 274
    return-void
.end method
