.class Lcom/mediatek/lbs/em/LbsAgps$21;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$21;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsAgps$21;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mPopupTest:Landroid/widget/PopupMenu;
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsAgps;->access$3200(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1041
    return-void
.end method