.class Lcom/mediatek/lbs/em/LbsMap$2;
.super Ljava/lang/Object;
.source "LbsMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsMap;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMap;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMap;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMap$2;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMap$2;->this$0:Lcom/mediatek/lbs/em/LbsMap;

    #getter for: Lcom/mediatek/lbs/em/LbsMap;->mMenuPopup:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsMap;->access$400(Lcom/mediatek/lbs/em/LbsMap;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 128
    return-void
.end method
